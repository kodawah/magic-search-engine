class PackController < ApplicationController
  def index
    @booster_types = $CardDatabase.supported_booster_types
    @title = "Packs"
  end

  def yaml
    files = (Rails.root.parent + "data/boosters").glob("*.yaml")
    @booster_types = files.map{|name|
    set_code, variant = name.basename(".yaml").to_s.split("-", 2)
      set_code = set_code.sub("_", "")
      booster_code = [set_code, variant, "yaml"].compact.join("-")
      full_variant = [variant, "yaml"].compact.join("-")
      [booster_code, $CardDatabase.pack_factory.for(set_code, full_variant)] rescue nil
    }.select{|a,b| b}.to_h
    @title = "Packs (YAML)"
    render :index
  end

  def show
    set_code, variant = params.require(:id).downcase.split("-", 2)

    unless $CardDatabase.sets[set_code]
      render_404
      return
    end

    factory = PackFactory.new($CardDatabase)
    @pack = factory.for(set_code, variant)

    unless @pack
      render_404
      return
    end
  end
end

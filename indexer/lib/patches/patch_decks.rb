class PatchDecks < Patch
  def remove_decks_for_unknown_sets
    valid_set_codes = @sets.map{|s| s["code"] }.to_set
    @decks.select!{|d| valid_set_codes.include?(d["set_code"]) }
  end

  def resolve_printings
    @decks.each do |deck|
      deck["cards"] = deck["cards"].map{|card| resolve_printing(deck, card) }.compact
      deck["sideboard"] = deck["sideboard"].map{|card| resolve_printing(deck, card) }.compact
      deck["commander"] = deck["commander"].map{|card| resolve_printing(deck, card) }.compact
      unless deck["release_date"]
        warn "No release date for #{deck["set_code"]} #{deck["name"]}, defaulting to set release date"
        deck["release_date"] = @sets.find{|s| s["code"] == deck["set_code"]}["release_date"]
      end
    end
  end

  def resolve_printing(deck, card)
    return nil if card["token"]
    DeckPrintingResolver.new(@cards, @sets, deck, card).call
  end

  def call
    remove_decks_for_unknown_sets
    resolve_printings
  end
end

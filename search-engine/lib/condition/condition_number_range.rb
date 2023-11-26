class ConditionNumberRange < ConditionSimple
  def initialize(ranges)
    @ranges = ranges.downcase.split(",").map{|range|
      a, b = range.split("-", 2)
      b ||= a
      [a.to_i, a, b.to_i, b =~ /\D/ ? b : "#{b}zzz", a == "set", b == "set"]
    }
  end

  def match?(card)
    card_number_i = card.number_i

    @ranges.each do |ai, as, bi, bs, aset, bset|
      if aset
        base_set_size = card.set.base_set_size
        next unless base_set_size && (card_number_i >= base_set_size)
      else
        next unless card_number_i >= ai
        if card_number_i == ai
          next unless card.number.downcase >= as
        end
      end

      if bset
        base_set_size = card.set.base_set_size
        next unless base_set_size && (card_number_i <= card.set.base_set_size)
      else
        next unless card_number_i <= bi
        if card_number_i == bi
          next unless card.number.downcase <= bs
        end
      end

      return true
    end

    false
  end

  def to_s
    "number:#{@ranges.map{|ai, as, bi, bs, aset, bset|
      if as == bs
        as
      else
        "#{as}-#{bs}"
      end
    }.join(",")}"
  end
end

class Offset
  def initialize(key, date)
      @key = key
      @date = date.to_i
    end

    def square_date
      @date**2
    end

    def last_four_date
      square_date.to_s[-4..-1].to_i
    end

    def date_array
      a_offset = last_four_date.to_s[0].to_i
      b_offset = last_four_date.to_s[1].to_i
      c_offset = last_four_date.to_s[2].to_i
      d_offset = last_four_date.to_s[3].to_i

      [a_offset, b_offset, c_offset, d_offset]
    end

end

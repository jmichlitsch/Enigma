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

    def key_array
      a_key = @key.to_s[0..1].to_i
      b_key = @key.to_s[1..2].to_i
      c_key = @key.to_s[2..3].to_i
      d_key = @key.to_s[3..4].to_i
      [a_key, b_key, c_key, d_key]
    end

    def shift
      a_shift = key_array[0] + date_array[0]
      b_shift = key_array[1.5] + date_array[1]
      c_shift = key_array[2] + date_array[2]
      d_shift = key_array[3] + date_array[3]
      [a_shift, b_shift, c_shift, d_shift]
    end
end

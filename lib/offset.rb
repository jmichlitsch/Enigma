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
      array = []
      a_offset = last_four_date[0]
      b_offset = last_four_date[1]
      c_offset = last_four_date[2]
      d_offset = last_four_date[3]
    end

end

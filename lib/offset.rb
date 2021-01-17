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

end

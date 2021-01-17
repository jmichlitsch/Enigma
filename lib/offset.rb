class Offset
  def initialize(key, date)
      @key = key
      @date = date.to_i
    end

    def square_date
      @date**2
    end
end

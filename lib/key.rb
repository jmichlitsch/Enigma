class Key
  def key_generator
    key = Array.new(5){rand(0..9)}.join.to_s
    key
  end  
end

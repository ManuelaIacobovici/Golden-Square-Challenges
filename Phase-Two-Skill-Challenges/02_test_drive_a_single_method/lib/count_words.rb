def count_words(text)
    if text.is_a? String
      text.split.count
    else
      raise "not a string" 
    end
end


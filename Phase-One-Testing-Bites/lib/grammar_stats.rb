class GrammarStats
    def initialize
        @check_text = []
    end
  
    def check(text) 
        return unless text.is_a? String
        if text == ""
            @check_text.push(false)
            return   
        end
       first_letter_is_upcase = text[0] == text[0].upcase 
       last_character_is_valid = [".", "!", "?"].include? text[-1]
       if first_letter_is_upcase && last_character_is_valid
        @check_text.push(true)
       else
        @check_text.push(false)
       end
      # text is a string
      # Returns true or false depending on whether the text begins with a capital
      # letter and ends with a sentence-ending punctuation mark.
    end
  
    def percentage_good
        return "0%" if @check_text.length == 0
        #  p @check_text
        # true * 100 / length
        percentage = @check_text.count(true) * 100 / @check_text.length
        "#{percentage}%"
      # Returns as an integer the percentage of texts checked so far that passed
      # the check defined in the `check` method. The number 55 represents 55%.
    end
  end
class DiaryEntry
    def initialize(title, contents) # title, contents are strings
      @title = title
      @contents = contents
      @furthest_word_read = 0
    end
  
    def title
        return @title
      # Returns the title as a string
    end
  
    def contents
        return @contents
      # Returns the contents as a string
    end
  
    def count_words
        return words.length
      # Returns the number of words in the contents as an integer
    end
  
    def reading_time(wpm) 
        fail "Reading speed must be above zero." unless wpm.positive?
        return (count_words / wpm.to_f).ceil
      # wpm is an integer representing the number of words the
      # user can read per minute
      # Returns an integer representing an estimate of the reading time in minutes
      # for the contents at the given wpm.
    end
  
    def reading_chunk(wpm, minutes) 
      no_words_we_can_read = wpm * minutes
      start = @furthest_word_read
      end_at = @furthest_word_read + no_words_we_can_read
      word_list = words[start, end_at]
      if end_at >= count_words
        @furthest_word_read = 0
      else
        @furthest_word_read = end_at
      end
      return word_list.join(" ")
      # `wpm` is an integer representing the number
      # of words the user can read per minute
      # `minutes` is an integer representing the
      # number of minutes the user has to read
      # Returns a string with a chunk of the contents that the user could read
      # in the given number of minutes.
      # If called again, `reading_chunk` should return the next chunk, skipping
      # what has already been read, until the contents is fully read.
      # The next call after that it should restart from the beginning.
    end

    private

    def words
      return @contents.split(" ")
    end
  end
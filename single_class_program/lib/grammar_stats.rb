class GrammarStats
    def initialize
      #
      @checks = 0
      @good = 0
    end
  
    def check(text) 
        capital_letter = text[0] == text[0].upcase
        mark = ".?!".include?(text[-1])
        @checks += 1
        @good += 1 if capital_letter && mark == true 
        capital_letter && mark 
        # text is a string
      # Returns true or false depending on whether the text begins with a capital
      # letter and ends with a sentence-ending punctuation mark.
    end
  
    def percentage_good
        return (@good.to_f / @checks.to_f)* 100

      # Returns as an integer the percentage of texts checked so far that passed
      # the check defined in the `check` method. The number 55 represents 55%.
    end
  end
class PigLatinizer

  attr_reader :text
  
    def piglatinize(text)
        text.split.map do |word|
          if /\A[aeiou]/i.match(word)
            "#{word}way"
          else
            cons = word.split(/[aeiou]/).first
            "#{word.sub(cons,"")}#{cons}ay"
          end
          end.join(' ')
        end
  
      def to_pig_latin(text)
        piglatinize(text)
      end
    end


  # def piglatinize(text)
  #   vowels = %[a e i o u A E I O U]
  #   if text.start_with?(vowels)
  #     "#{text}way"
  #   else
  #     cons = text.split(/[aeiou]/).first
  #     #finds where the word needs to be split.
  #      "#{text.sub(cons,"")}#{cons}ay"
  #      #substitutes the beginning of word(cons) with blank, then tacks consonant + latinzed bit on end
  #   end
  # end
  # 
  # def to_pig_latin(phrase)
  #   phrase.split.collect{|word| piglatinize(word) }.join(" ")
  # end
end

# Short Version:


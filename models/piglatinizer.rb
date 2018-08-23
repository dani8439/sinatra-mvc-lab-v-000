class PigLatinizer

  attr_reader :text

    def piglatinize(text)
        text.split.map do |word|
          if /\A[aeiou]/i.match(word)
            "#{word}way"
          else
            #finds where the word needs to be split.
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
  #      "#{text.sub(cons,"")}#{cons}ay"
  #      #substitutes the beginning of word(cons) with blank, then tacks consonant + latinzed bit on end
  #   end
  # end
  #
  # def to_pig_latin(phrase)
  #   phrase.split.collect{|word| piglatinize(word) }.join(" ")
  # end

  # Old - Doesn't work.
  # class PigLatinizer
  #   # Create a constant array of vowels
  #   VOWELS = %w[a e i o u A E I O U]
  #
  #
  #   # need to split the sentence
  #   def to_pig_latin(phrase)
  #     # splits the sentence, then collect -- iterate over each word - piglatinize each word - then rejoin the collected words back into a sentence
  #     phrase.split.collect{|word| piglatinize(word)}.join(" ")
  #   end
  #
  #   def piglatinize(word)
  #     return word << "way" if VOWELS.include?(word[0])
  #     word = word.split("")
  #
  #     until VOWELS.include?(word[0])
  #       letter = word.shift
  #       word = word << letter
  #     end
  #
  #     word.join + "ay"
  #   end
  #
  # end

class PigLatinizer
  def piglatinize(input_str)
   x = (input_str.split(" ").length == 1) ? piglatinize_word(input_str) : piglatinize_sentence(input_str)
   puts x
   x
 end

 private


    def consonant?(char)
      !char.match(/[aAeEiIoOuU]/)
    end

    def piglatinize_word(word)
      # word starts with vowel
      if !consonant?(word[0])
        word = word + "w"
      # word starts with 3 consonants
      elsif consonant?(word[0]) && consonant?(word[1]) && consonant?(word[2])
        word = word.slice(3..-1) + word.slice(0,3)
      # word starts with 2 consonants
      elsif consonant?(word[0]) && consonant?(word[1])
        word = word.slice(2..-1) + word.slice(0,2)
      # word starts with 1 consonant
      else
        word = word.slice(1..-1) + word.slice(0)
      end
      word << "ay"
    end

    def piglatinize_sentence(sentence)
      sentence.split.collect { |word| piglatinize_word(word) }.join(" ")
    end




  end

# Short Version:
# attr_reader :text
#
#   def piglatinize(text)
#       text.split.map do |word|
#         if /\A[aeiou]/i.match(word)
#           "#{word}way"
#         else
#           cons = word.split(/[aeiou]/).first
#           "#{word.sub(cons,"")}#{cons}ay"
#         end
#         end.join(' ')
#       end
#
#     def to_pig_latin(text)
#       piglatinize(text)
#     end
#   end

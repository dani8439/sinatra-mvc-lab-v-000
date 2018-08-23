class PigLatinizer

  def piglatinize(word)
    if word[0].downcase.match(/[aeiou]/)
      word = word + "way"
    else
      until word.split('')[0].downcase.match(/[aeiou]/)
        word = word.split('').rotate(1).join
      end
      word = word.split('').join + "ay"
    end
    word
  end

  def to_pig_latin(phrase)
   phrase.split.collect { |word| piglatinize(word) }.join(" ")
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

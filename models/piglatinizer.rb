class PigLatinizer

  def piglatinize(word)
    if !consonant?(word[0])
      word = word + "w"
    elsif consonant?(word[0]) && consonant?(word[1]) && consonant(word[2])
      word = word.slice(3..-1) + word.slice(0,3)
    elsif consonant?(word[0]) && consonant?(word[1])
      word = word.slice(2..-1) + word.slice(0,2)
    else
      word = word.slice(1..-1) + word.slice(0)
    end
    word << "ay"
  end

  def consonant(char)
    !char.match(/[aAeEiIoOuU]/)
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

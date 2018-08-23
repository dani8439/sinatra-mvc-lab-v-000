
require 'pry'

class PigLatinizer
  # Create a constant array of vowels



  # need to split the sentence
  def to_pig_latin(phrase)
    # splits the sentence, then collect -- iterate over each word - piglatinize each word - then rejoin the collected words back into a sentence
    phrase.split.collect{|word| piglatinize(word)}.join(" ")
  end



  vowels = ['a', 'e', 'i', 'o', 'u']
consonants = ('a'..'z').to_a - vowels
return str + "ay" if vowels.include?(str[0])
if consonants.include?(str[0])
   return str[2..-1] + str[0..1] + "ay" if consonants.include?(str[1])
   return str[1..-1] + str[0] + "ay"
end
str

  def piglatinize(word)
    VOWELS = %w[a e i o u]
    CONSONANTS = ('a'..'z') - VOWELS

    return word + "ay" if VOWELS.include?(word[0])
  end

end


# def piglatinize(word)
#   if VOWELS.include?(word[0]) == true
#     word << "way"
#   else
#     last = word.slice(1..-1)
#     first = word.slice(0)
#     last + first + "ay"
#   end


require 'pry'

class PigLatinizer
  # Create a constant array of vowels



  # need to split the sentence
  def to_pig_latin(phrase)
    # splits the sentence, then collect -- iterate over each word - piglatinize each word - then rejoin the collected words back into a sentence
    phrase.split.collect{|word| piglatinize(word)}.join(" ")
  end



  def piglatinize(word)
    vowels = %w[a e i o u]
    consonants = ('a'..'z') - VOWELS

    return word + "ay" if VOWELS.include?(word[0])
    if CONSONANTS.include?(word[0])
      return word[2..-1] + word[0..1] + "ay" if CONSONANTS.include?(word[1])
      return word[2..-1] + word[0] + "ay"
    end
    word
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

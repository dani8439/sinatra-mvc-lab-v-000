
require 'pry'

class PigLatinizer
  # Create a constant array of vowels



  # need to split the sentence
  def to_pig_latin(phrase)
    # splits the sentence, then collect -- iterate over each word - piglatinize each word - then rejoin the collected words back into a sentence
    phrase.split.collect{|word| piglatinize(word)}.join(" ")
  end



  def piglatinize(word)
      vowels = %w{a e i o u}
      word.each_char do |chr|
      index = word.index(chr)
      if index != 0 && vowels.include?(chr.downcase)
        consonants = word.slice!(0..index-1)
        return word + consonants + "ay"
      elsif index == 0 && vowels.include?(chr.downcase)
        return word + "ay"
      end
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

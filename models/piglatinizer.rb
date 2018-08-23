class PigLatinizer
  attr_reader :text

  VOWELS = %w[aeiouAEIOU]

  def initialize(text)
    @text = text
  end

  def to_pig_latin(text)
    text.split.collect{|word| piglatinize(word)}.join(" ")
  end 

  def piglaitinze(word)
    return word << "way" if VOWELS.include?(word[0])
    word = word.split("")


end

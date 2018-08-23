class PigLatinizer
  def to_pig_latin(text)
    text.split.collect{|word| piglatinize(word)}.join(" ")
  end 

  def piglaitinze(word)
    return word << "way" if VOWELS.include?(word[0])
    word = word.split("")

    until VOWELS.include?(word[0])
      letter = word.shift 
      word = word << letter 
    end

    word.join + "ay"
  end


end

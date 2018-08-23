class PigLatinizer


  # need to split the sentence
  def to_pig_latin(phrase)
    # splits the sentence, then collect -- iterate over each word - piglatinize each word - then rejoin the collected words back into a sentence
    phrase.split.collect{|word| piglatinize(word)}.join(" ")
  end

  def consonant?(char)
    !char.match(/[aAeEiIoOuU]/)

end

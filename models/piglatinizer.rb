class PigLatinizer
  def consonant?(char)
    !char.match(/[aAeEiIoOuU]/)
    #scans a regext to see if character stards wtih a vowel or consonant -- instead of setting VOWELS = %w[a e i o u A E I O U]
  end

  def piglatinize(word)
  end

  # need to split the sentence
  def to_pig_latin(phrase)
    # splits the sentence, then collect -- iterate over each word - piglatinize each word - then rejoin the collected words back into a sentence
    phrase.split.collect{|word| piglatinize(word)}.join(" ")
  end

end

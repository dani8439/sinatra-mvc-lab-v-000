class PigLatinizer
  def consonant?(char)
    !char.match(/[aAeEiIoOuU]/)
    #scans a regext to see if character stards wtih a vowel or consonant -- instead of setting VOWELS = %w[a e i o u A E I O U]
  end

  def piglatinize(word)
    if !consonant?(word[0])
      word = word + "w"
    elsif consonant?(word[0]) && consonant?(word[1]) && consonant?(word[2])
      word = word.slice(3..-1) + word.slice(0,3)
    elsif consonant?(word[0] && consonant?(word[1]))
      word = word.slice(2..-1) + word.slice(0,2)
    else
      word = word.slice(1..-1) + word.slice(0)
    end 
    word << "ay"
  end

  # need to split the sentence
  def to_pig_latin(phrase)
    # splits the sentence, then collect -- iterate over each word - piglatinize each word - then rejoin the collected words back into a sentence
    phrase.split.collect{|word| piglatinize(word)}.join(" ")
  end

end

class PigLatinizer

  attr_reader :text

  def piglatinize(text)
    vowels = %[a e i o u A E I O U]
    if text.start_with?(vowels)
      text = text + "way"
    else
      text
      
  end

  def to_pig_latin(phrase)
    phrase.split.collect{|word| word.piglatinze}.join(' ')
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

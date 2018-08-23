class PigLatinizer

  
  def piglatinize(name)
  if name[0].downcase.match(/[aeiou]/)
    name = name + "way"
  else
    until name.split('')[0].downcase.match(/[aeiou]/)
      name = name.split('').rotate(1).join
    end
    name = name.split('').join + "ay"
  end
  name
end

def to_pig_latin(phrase)
  phrases = Array.new
  phrase.split(' ').each do |name|
    phrases << piglatinize(name)
  end
  phrases.join(' ')
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

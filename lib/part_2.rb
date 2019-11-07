def hipsterfy(word)
    /[aeiou]/.match?(word) ? word.slice!(word.chars.rindex { |c| /[aeiou]/.match?(c) }) : nil
    word
end

def vowel_counts(str)
    count = Hash.new(0)
    str.each_char { |c| /[aeiou]/i.match?(c) && count[c.downcase] += 1 }
    count
end

def caesar_cipher(message, number)
    number %= 26
    message.each_codepoint.map { |c| (c>96 && c<123) ? (c+number > 122 ? (((c+number) % 123) + 97).chr : (c+number).chr) : c.chr }.join("")
end
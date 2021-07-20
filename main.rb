class CaesarCipher
  def translate(text, shift)
    letters = [*('a'..'z')]

    chars = text.split('')

    result = []

    chars.each do |c|
      index = letters.find_index(c.downcase)
      if !index.nil?
        index = index + shift >= 25 ? index + shift - 25 - 1 : index + shift
        replacement = letters[index]
        replacement = replacement.upcase if c == c.upcase

        result.push(replacement)
      else
        result.push(c)
      end
    end

    result.join('')
  end
end

c = CaesarCipher.new
puts c.translate('I am a boy', 5)

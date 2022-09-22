def valid_string?(string)
  return true if string.empty?
  array = []
  string.each_char do |c|
      case c
      when '(', '{', '['
          array.push(c)
      when ')'
          return false if array.pop() != '('
      when '}'
          return false if array.pop() != '{'
      when ']'
          return false if array.pop() != '['
      end
  end
  return array.empty?
end

puts valid_string?("{([)()])}")


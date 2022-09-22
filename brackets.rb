def valid_string?(string)
    match_count = 0
  
    string.each_char do |c|
      match_count += 1 if [ '[', '{', '(' ].include?(c)
      match_count -= 1 if [ ']', '}', ')' ].include?(c)
    end
  
    return match_count == 0
end

puts valid_string?("([]{[]})")
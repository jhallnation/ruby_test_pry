@morse = {
  a: '.-',
  b: '-...',
  c: '-.-.',
  d: '-..',
  e: '.',
  f: '..-.',
  g: '--.',
  h: '....',
  i: '..',
  j: '.---',
  k: '-.-',
  l: '.-..',
  m: '--',
  n: '-.',
  o: '---',
  p: '.--.',
  q: '--.-',
  r: '.-.',
  s: '...',
  t: '-',
  u: '..-',
  v: '...-',
  w: '.--',
  x: '-..-',
  y: '-.--',
  z: '--..'
}

def translator(language, sentance)
  if language.downcase == 'morse'
    new_arr = []
    sentance_array = sentance.split(//) 
    sentance_array.each do |x|
      @morse.each do |i, v|
        if x == i.to_s
          new_arr << v.to_s
        end
      end 
    end
    p new_arr.join
  elsif language.downcase == 'english'
    if language.downcase == 'english'
      new_arr = []
      sentance_array = sentance.split(" ") 
      sentance_array.each do |x|
        @morse.each do |i, v|
          if x == v.to_s
            new_arr << i.to_s
          end
        end
      end
      p new_arr.join
    end
  else
    p 'Sorry that language is not an options'
  end
end

translator('english', '.... . .-.. .--.')
translator('morse', 'help')


# hash = {
#         '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D', '.' => 'E',
#         '..-.' => 'F', '--.' => 'G', '....' => 'H', '..' => 'I', '.---' => 'J',
#         '-.-' => 'K', '.-..' => 'L', '--' => 'M', '-.' => 'N', '---' => 'O',
#         '.--.' => 'P', '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T',
#         '..-' => 'U', '...-' => 'V', '.--' => 'W', '-..-' => 'X', '-.--' => 'Y',
#         '--..' => 'Z', '-----' => '0', '.----' => '1', '..---' => '2', '...--' => '3',
#         '....-' => '4', '.....' => '5', '-....' => '6', '--...' => '7',
#         '---..' => '8', '----.' => '9', '.-.-.-' => '.', '--..--' => ',',
#         '..--..' => '?', '.----.' => "'", '-.-.--' => '!', '-..-.' => '/',
#         '-.--.' => '(', '-.--.-' => ')', '.-...' => '&', '---...' => ':',
#         '-.-.-.' => ';', '-...-' => '=', '.-.-.' => '+', '-....-' => '-',
#         '..--.-' => '_', '.-..-.' => '"', '...-..-' => '$', '.--.-.' => '@', ' ' => ' '
# }
# @string_hash = hash
# sentence = gets.chomp
# split_sentence = sentence.split(//)
# @caps_sentence = []
# split_sentence.each do |x|
#     x = x.upcase
#     @caps_sentence << x
# end
# @morse = []
# @english = []
# @caps_sentence.each do |x|
#     @string_hash.each do |k, v|
#         if x == k
#             @morse << v
#         elsif x == v
#             @english << k
#         end
#     end
# end
# puts @morse.join(' ')
# puts @english.join(' ')
# p sentence.gsub(/[abcdefghijklmnopqrstuvwxyz 1234567890]/, 'e' => '-_-', 'o' => '-__-')
#
# sentence.split('').map{ |string| morse_hash.key string.downcase}.join(' ')
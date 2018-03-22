def rot13(secret_messages)
  answer = []
  secret_messages.map do |x|
    arr = ("a".."z").to_a
    code = []
    x.downcase.split('').map {|x| x =~ /[a-z]/  ? arr.each_with_index do |y,i|
        if x == y 
          if i + 13 > 25
            z = i + 13 - 26
            code.push(arr[z]) 
          else
            code.push(arr[i+13])
          end
        end
      end
      : code.push(x)}
    answer.push(code.join)
  end
  return answer
end

# from hackerrank, takes in an array of rot13 encrypted messages and translates them back
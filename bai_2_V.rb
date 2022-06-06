arr = []
hash = Hash.new
print "Nhap so phan tu mang: "
arr_length = gets.to_i
for i in 1..arr_length
    print "Nhap phan tu thu #{i} trong mang: "
    arr << gets.to_i
end
# arr.each_with_index do |value, index|
#     puts "#{index} => #{value}"
#     if hash.has_key?(value)
#         hash[value] += 1
#     else
#         hash[value] = 1
#     end
# end
arr.each do |item|
    if hash.has_key?(item)
        hash[item] += 1
    else
        hash[item] = 1
    end
end
puts "#{hash}"
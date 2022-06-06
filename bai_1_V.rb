print "Nhap ho va ten: "
str_name = gets.to_s
str_name.downcase
str_name.delete(" \t\r\n")
arr_name = str_name.strip.split(/ /)
arr_name.delete("")
puts "#{arr_name}"
# 1
str_1 = ""
arr_name.each_with_index do |value, index|
    if index == arr_name.length - 1
        str_1 += value
    else
        str_1 += value + " "
    end
end
puts "#{str_1}"
# 2
str_2 = ""
arr_name.each_with_index do |value, index|
    cap_name = value.to_s.capitalize
    if index == arr_name.length - 1
        str_2 += cap_name
    else
        str_2 += cap_name + " "
    end
end
puts "#{str_2}"
# 3
str_3 = arr_name[arr_name.length - 1].to_s.capitalize
for i in 0..arr_name.length - 2
    arr_write = arr_name[i].split("")
    str_3 += arr_write[0].to_s.capitalize
end
puts "#{str_3}"
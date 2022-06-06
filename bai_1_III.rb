# 1
# arr = []
# for i in 1..5 do
#    print "Enter a value #{i} of array: "
#    index = gets.to_i
#    if index.nil?
#     arr << 0
#    else
#     arr << index
#    end
# end
arr = Array.new(5)
arr.each_with_index do |value, index|
    print "Enter a value #{index + 1} of array: "
    i = gets.to_i
    if index.nil?
        arr[index] = 0
    else
        arr[index] = i
    end
end
# 2
puts "#{arr.sum}"
# 3
number_squared = Proc.new {|x| x**2}
class Array
    def map!(proc_object)
      self.each_with_index do |value, index|
        if value != 6 && value !=7
            self[index] = proc_object.call(value)
        end
        
      end
    end
end
arr.map!(number_squared)
puts "#{arr}"
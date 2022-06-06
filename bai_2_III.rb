hash_hs = Hash.new
$choice
begin
    print "❀________________꧁☆☬ⓂⒺⓃⓊ☬☆꧂____________________❀\n"
    print "| 1. Nhập thêm học sinh                        |\n"
    print "| 2. Danh sách học sinh                        |\n"
    print "| 3. Học sinh có điểm trung bình 3 môn cao nhất|\n"
    print "| 0. Thoát                                     |\n"
    print "+----------------------------------------------+\n"
    print "Nhập lựa chọn: "
    choice = gets.to_i
    case choice
    when 1 
        puts "1"
        name = ""
        print "Nhap ten hs: "
        name = gets.to_s
        point_v = 0.0
        point_t = 0.0
        point_a = 0.0
        print "Nhap diem van cua hs #{name}: "
        point_v = gets.to_f
        print "Nhap diem toan cua hs #{name}: "
        point_t = gets.to_f
        print "Nhap diem anh cua hs #{name}: "
        point_a = gets.to_f
        point_tb = ((point_v + point_t + point_a)/3).round(1);
        hash_point = Hash.new
        hash_point[:van] = point_v
        hash_point[:toan] = point_t
        hash_point[:anh] = point_a
        hash_point[:avg] = point_tb
        puts hash_point
        hash_hs[name] = hash_point
    when 2
        puts "2"
        puts "#{hash_hs}/n"
    when 3
        puts "3"
        i_max = 0.0
        hash_hs.values.each_with_index do |value, index|
            i_max = value[:avg]
            for i in index..hash_hs.values.length - 1
                if i_max < hash_hs.values[i][:avg]
                    i_max = hash_hs.values[i][:avg]
                end
            end
        end
        hash_hs.values.each_with_index do |value, index|
            if value[:avg] == i_max
                puts "#{index} => #{value}"
            end
        end
        # hash_hs.select{|item| index.values}
    end
end while choice != 0
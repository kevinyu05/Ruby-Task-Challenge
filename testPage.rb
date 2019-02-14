s = "2019/04/05"
#  # => "04/05/2019"
p s.split('/')
#  # => ["04", "05", "2019"]
# date_array = s.split('/')
#  # => ["04", "05", "2019"]
# date_array[0]
#  # => "04"
# puts "Please use m/d/Y format" unless date_array.size == 3
#  # => nil
# Time.parse(s)
# # NoMethodError: undefined method `parse' for Time:Class
# # 	from (irb):6
# # 	from /Users/learn/.rvm/rubies/ruby-2.3.1/bin/irb:11:in `<main>'
# Time.new(date_array[2], date_array[0], date_array[1])

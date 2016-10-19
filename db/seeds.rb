# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


# categories = ["Korean", "Japanese", "Chinese", "American"]

#categories.each do |category|
#  0.upto(1) do |i|
#      p = Post.new
#      p.user_id = i + 1
#      p.category = category
#      p.title = "#{category}집#{i} 이름"
#      p.content = "#{category}집#{i} 설명"
#      p.save
#    end
#  end

u = User.new
u.username = "charles"
u.password = "12345678"
u.save

u = User.new
u.username = "robert"
u.password = "87654321"
u.save


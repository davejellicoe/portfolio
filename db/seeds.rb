# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Category.delete_all
Post.delete_all

%w'Photo Art Decor Cooking Blog'.each do |title|
  category = Category.create(:title => title)
  25.times do
    Factory(:post, :category => category, :is_published => true)
  end
end

puts "Total Categories = #{Category.count}"
puts "Total Posts = #{Post.count}"
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

photo_hash = [
  {:description => "Blue Outfit", :approved => 1, :user_id=> 1}
  ]

Photo.destroy_all
photo_hash.each do |p_hash|
  p = Photo.new
  p.description = p_hash[:description]
  p.approved = p_hash[:approved]
  p.user_id = p_hash[:user_id]
  p.save
end
puts "There are #{Photo.count} rows in the Photos table"

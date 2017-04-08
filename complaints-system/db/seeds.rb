# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



[["bpierce@muxo.edu",(50..100)],["jtaylor@zazio.name",(1000..2999)]].each do  |val|
  5.times do
    Complaint.create(user_email: val[0], content:  Forgery(:lorem_ipsum).characters(val[1].to_a.sample))
  end 
end
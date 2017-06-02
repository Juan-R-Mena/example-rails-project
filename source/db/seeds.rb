# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# 5 with the same emails.
# 5 with more than 1000 chars and less than 3000. (1001)
5.times do |i|
  Complaint.create(user_email: 'jhon@doe.com', content: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam vel pharetra augue, sed maximus orci. Curabitur elit elit, porttitor id maximus id, condimentum at justo. Duis feugiat elit eu consequat maximus. Donec elit risus, ultricies ut mauris in, vehicula euismod elit. Maecenas leo dui, porttitor non varius id, vehicula nec lorem. Maecenas consequat scelerisque ipsum eu porta. Sed facilisis, lectus lobortis gravida vehicula, magna nibh tempor tellus, quis eleifend lectus nisl a est. Nulla sagittis sodales ultricies. Pellentesque id quam magna. Donec euismod finibus gravida. Nam aliquet aliquam orci. Phasellus condimentum sapien a arcu commodo, ac finibus mi laoreet. Praesent convallis sapien sit amet libero mattis tristique. Pellentesque feugiat est vitae arcu consectetur faucibus. Maecenas et volutpat ante.
Sed auctor aliquet turpis at dignissim. Aliquam in venenatis nisi. Cras eget justo lobortis nibh aliquam mollis et tincidunt orci. Duis ac sapien vestibulum, eleifend tellus sed. ')
end

# at most 100 chars, different emails
5.times do |i|
  Complaint.create(user_email: "jhon_#{i}@doe.com", content: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.')
end

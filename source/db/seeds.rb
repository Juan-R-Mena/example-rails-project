
# 5 complaints with the same emails.
# 5 with more than 1000 chars and less than 3000.
# so let's insert 1002 chars in content
5.times do |i|
  Complaint.create(user_email: 'paul@example.com', content: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam vel pharetra augue, sed maximus orci. Curabitur elit elit, porttitor id maximus id, condimentum at justo. Duis feugiat elit eu consequat maximus. Donec elit risus, ultricies ut mauris in, vehicula euismod elit. Maecenas leo dui, porttitor non varius id, vehicula nec lorem. Maecenas consequat scelerisque ipsum eu porta. Sed facilisis, lectus lobortis gravida vehicula, magna nibh tempor tellus, quis eleifend lectus nisl a est. Nulla sagittis sodales ultricies. Pellentesque id quam magna. Donec euismod finibus gravida. Nam aliquet aliquam orci. Phasellus condimentum sapien a arcu commodo, ac finibus mi laoreet. Praesent convallis sapien sit amet libero mattis tristique. Pellentesque feugiat est vitae arcu consectetur faucibus. Maecenas et volutpat ante.
Sed auctor aliquet turpis at dignissim. Aliquam in venenatis nisi. Cras eget justo lsobortis nibh aliquam mollis et tincidunt orci. Duis ac sapien vestibulum, eleifend tellus sed. ')
end

# 5 complaints with less than 100 chars in content
5.times do |i|
  Complaint.create(user_email: "random_#{i}@example.com", content: 'Sample test less than 100 chars')
end
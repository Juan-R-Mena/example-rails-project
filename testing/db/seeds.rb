dummy_content_1000 = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean non varius mi, eu maximus odio. Ut id mauris ante. Nulla facilisi. Nulla facilisi. Interdum et malesuada fames ac ante ipsum primis in faucibus. Mauris sodales egestas vehicula. In facilisis tempus orci, quis euismod ante rutrum vitae. Cras tempus faucibus mollis. Mauris tristique dapibus neque a convallis. Suspendisse gravida magna vitae massa ullamcorper, quis cursus purus fermentum. Donec vel hendrerit metus. Integer id mauris facilisis tortor vestibulum faucibus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nullam dapibus, urna quis molestie hendrerit, quam tortor tincidunt mi, ac cursus diam sapien nec orci. Curabitur bibendum, nisi id tempor volutpat, leo lorem tempus velit, quis malesuada nisi leo non lacus. Ut urna orci, elementum in luctus eget, faucibus sollicitudin risus. Cras a euismod ligula. Aliquam accumsan vitae felis euismod varius. Morbi laoreet, odio vitae malesuada rutrum, dui nisi placerat tellus, sit amet pharetra eros lectus ut metus. Aliquam suscipit metus nec felis auctor, nec iaculis neque condimentum. Duis dignissim et enim in gravida. Curabitur hendrerit placerat nunc, ac dictum augue ultrices vitae. Donec non purus id nibh euismod bibendum. Donec maximus ante ac sodales eleifend. Suspendisse ultrices fermentum orci, in venenatis est finibus quis. Nam felis augue, fermentum sed libero sed, accumsan eleifend ligula."

5.times do 
  FactoryGirl.create :complaint, :content => dummy_content_1000
end

dummy_content_100 = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean non varius mi, eu maximus odio. Ut id mauris ante. Nulla facilisi. Nulla facilisi."

5.times do 
  FactoryGirl.create :complaint, :email => "andrew.rebinson@gmail.com", :content => dummy_content_100
end
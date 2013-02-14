require 'machinist/active_record'

Post.blueprint do
  title       { "Magna Purus Condimentum Dolor Ornare #{sn}" }
  body        { "Aenean lacinia bibendum nulla sed consectetur." }
  created_at  { Time.now }
  image       { File.open("#{Rails.root}/features/support/post.jpg") }
end

Word.blueprint do
  title { "Cursus #{sn}" }
  short_description { "Cras justo odio, dapibus ac facilisis in, egestas eget quam." }
  long_description { "Nulla vitae elit libero, a pharetra augue." }
end

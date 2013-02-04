require 'machinist/active_record'

Post.blueprint do
  title       { "The #{sn} Post" }
  body        { "Lorem ipsum..." }
  created_at  { Time.now }
end

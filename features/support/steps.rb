Given /^there is (\d+) posts$/ do |arg1|
  arg1.to_i.times { |i| Post.make! :created_at => Time.now - i.day }
end

When /^I go to "(.*?)"$/ do |arg1|
  visit path_to(arg1)
end

Then /^the last post should be in highlight$/ do
  post = Post.first
  page.should have_css('.highlight .title', :text => post.title)
end

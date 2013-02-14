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

Given /^I login as admin$/ do
  visit "/auth/facebook"
  @current_user = User.find_by_email("nicolas@engage.is")
  @current_user.admin = true
  @current_user.save
end

Then /^I should see my profile panel$/ do
  page.should have_css(".profile_panel")
end

When /^I click "(.*?)"$/ do |arg1|
  click_link arg1
end

Then /^I should be in "(.*?)"$/ do |arg1|
  current_path.should be_== path_to(arg1)
end

Given /^I fill "(.*?)" with "(.*?)"$/ do |arg1, arg2|
  fill_in arg1, :with => arg2
end

Given /^I select an image for the post$/ do
  attach_file('Imagem', "#{Rails.root}/features/support/post.jpg")
end

When /^I press "(.*?)"$/ do |arg1|
  click_button arg1
end

Given /^there is a wiki word$/ do
  @word = Word.make!
end

Then /^I should see this word in wiki widget$/ do
  page.should have_css(".wiki_widget a", :text => @word.title)
end

Then /^I should see the error messages$/ do
  page.should have_css("form .field_with_errors")
end

Then /^I should see (\d+) posts in the latest posts list$/ do |arg1|
  within(".latest_posts") do
    should have_css(".post_item", :count => arg1.to_i)
  end
end

Given /^there is a post$/ do
  @post = Post.make!
end

Then /^I should see all the content about this post$/ do
  page.should have_content(@post.title)
  page.should have_content(@post.body)
end

Then /^I should see the wiki word$/ do
  page.should have_css("h1", :text => @word.title)
end

Then /^I should see the wiki word description$/ do
  page.should have_css(".long_description", :text => @word.long_description)
end

Then /^I should see the edit post link$/ do
  page.should have_css("a", :text => "Editar post")
end

Then /^the post title should be "(.*?)"$/ do |arg1|
  page.should have_css("h1", :text => @post.title)
end

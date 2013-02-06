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

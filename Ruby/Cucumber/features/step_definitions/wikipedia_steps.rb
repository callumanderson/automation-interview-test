Given 'I am on the Wikipedia Home Page' do
	@browser.goto 'http://wikipedia.org'
end

Given 'I am on the Wikipedia English Home Page' do
	@browser.goto 'http://en.wikipedia.org'
end

When /^I click on the "(.+)" link$/ do |link|
	link = @browser.link(:text, link)
	link.click
end

When /^I search for "(.+)"$/ do |term|
	@browser.text_field(:id, "searchInput").set term
	@browser.button(:id, "searchButton").click
end

Then /^the page title should be "(.+)"$/ do |expectedTitle|
	@browser.title.should == expectedTitle
end

Then /^I should see the following languages$/ do |table|
	lang_list = table.raw
	lang_list.each do |lang|
#hack to get round to weird way ruby doesn't defef Strings
		@browser.text.should include(lang[0])
	end
end

Then /^the top Language should be "(.+)"$/ do |lang|
	link = @browser.element(:css => ".central-featured-lang")
	link.text.should include(lang)
end

Then /^there should be "(.+)" in English$/ do |count|
	link = @browser.element(:css => ".central-featured-lang")
	puts link.text.should include(count)	
end

Then 'I should be taken to the Wikipedia English Home Page' do
	@browser.title == "Wikipedia, the free encyclopedia"
end

Then /^I should see the following portals on the page$/ do |table|
	portal_list = table.raw
	portal_list.each do |portal|
		link = @browser.link(:text, portal[0])
		link.exists?.should == true
	end
end

#You have been given the outlines of all the code you need to write
#Some of the snippets have been written for you, you may need to
#refactor/fix then though :)

#Given 'I am on the Wikipedia Home Page' do
	#TODO: insert code to navigate to wikipedia.org
#end

#Given 'I am on the Wikipedia English Home Page' do
#	#TODO: insert code to navigate to en.wikipedia.org
#end

#When /^I click on the "(.+)" link$/ do |link|
#	get the element by link text
#	click the link
#end

#When /^I search for "(.+)"$/ do |term|
	#find the search input and set to the term
	#find the search button and click it
#end

#Then /^the page title should be "(.+)"$/ do |expectedTitle|
	#the title should equal the expectedTitle
#end

Then /^I should see the following languages$/ do |table|
	lang_list = table.raw
	lang_list.each do |lang|
#hack to get round to weird way Watir appears to treat table as array of array of Strings
		@browser.text.should include(lang[0])
	end
end

Then /^the top Language should be "(.+)"$/ do |lang|
	link = @browser.element(:css => ".central-featured-lang")
	puts link.text.should include("lang")
end

Then /^there should be "(.+)" in English$/ do |articles|
	link = @browser.element(:css => ".central-featured-lang")
	puts link.text.should include(_articles)	
end

Then 'I should be taken to the Wikipedia English Home Page' do
	@browser.title.should == "Wikipedia, the free encyclopedia"
end

#Then /^I should see the following portals on the page$/ do |table|
	#get the table, and iterate through the elments using the closure
	#then assert that each of the elements is present
#end

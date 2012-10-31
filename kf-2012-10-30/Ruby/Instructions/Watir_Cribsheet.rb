#Watir Cribsheet

#Visiting URLs
When /^I visit "(.+)"$/ do |url|
	@browser.goto(url)	
end

#Clicking links
When /^I click on the "(.+)" link$/  do |link|
	link = @browser.link(:text, link)
	link.click
end

#Checking the title of the page
Then /^the page title should be (.+)$/ do |title|
	@browser.title.should == title
end

#Dealing with tables (bit of a hack) using nested closures
Then /^I should see the following$/ do |table|
	table_rows = table.raw #gets table as an array
	table_rows.each do |table_row|
				#need to be sure to call the right element from the table
		@browser.text.should include(table_row[0]) 
	end
end

#Checking that a link with given text is presn
Then /^I should see a link to "(.*)"$/ do |text|
  link = @browser.link(:text, text)
  link.exists?.should == true
end

#checking that an element is present
Then /^I should see some element with the id (.+)$/ do |element_id|
	some_element = @browser.element(:id, element_id)
	#assertion that the element is present on the page
	some_element.exists?.should == true
end

#Using CSS selectors to find elements
When /^I search for an element using css selectors$/ do
	@browser.element(:css => "#someElementOnThePage")
end


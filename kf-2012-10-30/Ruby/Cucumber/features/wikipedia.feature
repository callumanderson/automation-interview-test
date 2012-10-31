Feature: Wikipedia
In order to find things out
As a searcher
I want an online Encyclopedia

Scenario: Wikipedia home page
Given I am on the Wikipedia Home Page
Then the page title should be "Wikipedia"

Scenario: Languages on the home page
Given I am on the Wikipedia Home Page
Then I should see the following languages
|English|
|Español|
|Русский|
|Italiano|
|Português|
|日本語|
|Deutsch|
|Français|
|Polski|
|中文|

Scenario: Top language on the Home Page
Given I am on the Wikipedia Home Page
Then the top Language should be "English"
And there should be "4 000 000+ articles" in English

Scenario: Navigating to Local home page
Given I am on the Wikipedia Home Page
When I click on the "English" link
Then I should be taken to the Wikipedia English Home Page

Scenario: Local Home Page
Given I am on the Wikipedia English Home Page
Then I should see the following portals on the page
|Arts|
|Biography|
|Geography|
|History|
|Mathematics|
|Science|
|Society|
|Technology|
|All portals|

Scenario: Searching Wikipedia
Given I am on the Wikipedia English Home Page
When I search for "Mobile Phone"
Then the page title should be "Mobile phone - Wikipedia, the free encyclopedia"

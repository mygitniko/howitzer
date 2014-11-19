
####################################
#              CHECK               #
####################################

When /^I access to the edit module$/ do
  AbbottPlate::EditPage.open
end

When /^I click Breakfast button$/ do
  AbbottPlate::EditPage.given.click_breakfast
end

When /^I click Lunch button$/ do
  AbbottPlate::EditPage.given.click_lunch
end

When /^I click Dinner button$/ do
  AbbottPlate::EditPage.given.click_dinner
end

When /^I click Snacks button$/ do
  AbbottPlate::EditPage.given.click_snacks
end

And /^I click one of the picture$/ do
  AbbottPlate::EditPage.given.click_kinds_of_foods
end

And /^I click one of foods$/ do
  AbbottPlate::EditPage.given.click_foods
end

And /^I click Add button$/ do
  AbbottPlate::EditPage.given.click_add
end

And /^I click Edit Button$/ do
  AbbottPlate::EditPage.given.click_edit
end

And /^I click one of arrow$/ do
  AbbottPlate::EditPage.given.click_arrow
end

And /^I click Save button$/ do
  AbbottPlate::EditPage.given.click_save
end

####################################
#              ACTION              #
####################################

Then /^you should see the foods you added$/ do
	AbbottPlate::EditPage.given.has_css?(".span2")
end
require 'rails_helper'

describe "the add new skill process" do
  it "adds a new list" do
    visit skills_path
    click_on 'Add Skill'
    fill_in 'Name', :with => 'Javascript'
    fill_in 'Description', :with => 'Test 123 test'
    fill_in 'Url', :with => 'https://www.learnhowtoprogram.com'
    click_on 'Create Skill'
    expect(page).to have_content 'Javascript'
  end

  it "gives error when no name is entered" do
    visit new_skill_path
    fill_in 'Description', :with => 'Test 123 test'
    fill_in 'Url', :with => 'https://www.learnhowtoprogram.com'
    click_on 'Create Skill'
    expect(page).to have_content "Name can't be blank"
  end

  it "gives error when no url is entered" do
    visit new_skill_path
    fill_in 'Name', :with => 'Javascript'
    fill_in 'Description', :with => 'Test 123 test'
    click_on 'Create Skill'
    expect(page).to have_content "Url can't be blank"
  end

  it "gives error when no description is entered" do
    visit new_skill_path
    fill_in 'Name', :with => 'Javascript'
    f ill_in 'Url', :with => 'https://www.learnhowtoprogram.com'
    click_on 'Create Skill'
    expect(page).to have_content "Description can't be blank"
  end
end

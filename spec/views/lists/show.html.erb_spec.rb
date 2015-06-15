require 'spec_helper'

RSpec.describe "lists/show", type: :view do
  before(:each) do
    @goal = FactoryGirl.create(:list_with_goals)
    @list = List.find(1)
    visit list_path(@list)
  end

  it "has Goals in h1" do
    # test for list h1....   find('h1', :text =>  'List for week 22')
    find('h1', :text =>  'Goals')
  end
  
   it "has date range in h2" do
    # test for list h1....   find('h1', :text =>  'List for week 22')
    find('h1', :text =>  'Goals')
  end
end
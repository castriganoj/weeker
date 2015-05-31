require 'rails_helper'

RSpec.describe "lists/show", type: :view do
  before(:each) do
    @list = assign(:list, List.create!())
  end

  it "has Goals in h1 <p>" do
    find("a", :text => "Goals")
  end
end

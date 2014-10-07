require 'rails_helper'

RSpec.describe "rumours/edit", :type => :view do
  before(:each) do
    @rumour = assign(:rumour, Rumour.create!(
      :description => "MyString"
    ))
  end

  it "renders the edit rumour form" do
    render

    assert_select "form[action=?][method=?]", rumour_path(@rumour), "post" do

      assert_select "input#rumour_description[name=?]", "rumour[description]"
    end
  end
end

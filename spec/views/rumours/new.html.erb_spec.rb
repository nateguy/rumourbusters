require 'rails_helper'

RSpec.describe "rumours/new", :type => :view do
  before(:each) do
    assign(:rumour, Rumour.new(
      :description => "MyString"
    ))
  end

  it "renders new rumour form" do
    render

    assert_select "form[action=?][method=?]", rumours_path, "post" do

      assert_select "input#rumour_description[name=?]", "rumour[description]"
    end
  end
end

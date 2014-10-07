require 'rails_helper'

RSpec.describe "user_rumours/new", :type => :view do
  before(:each) do
    assign(:user_rumour, UserRumour.new(
      :credible => false
    ))
  end

  it "renders new user_rumour form" do
    render

    assert_select "form[action=?][method=?]", user_rumours_path, "post" do

      assert_select "input#user_rumour_credible[name=?]", "user_rumour[credible]"
    end
  end
end

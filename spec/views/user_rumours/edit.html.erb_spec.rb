require 'rails_helper'

RSpec.describe "user_rumours/edit", :type => :view do
  before(:each) do
    @user_rumour = assign(:user_rumour, UserRumour.create!(
      :credible => false
    ))
  end

  it "renders the edit user_rumour form" do
    render

    assert_select "form[action=?][method=?]", user_rumour_path(@user_rumour), "post" do

      assert_select "input#user_rumour_credible[name=?]", "user_rumour[credible]"
    end
  end
end

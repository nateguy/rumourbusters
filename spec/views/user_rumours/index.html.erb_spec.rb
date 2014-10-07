require 'rails_helper'

RSpec.describe "user_rumours/index", :type => :view do
  before(:each) do
    assign(:user_rumours, [
      UserRumour.create!(
        :credible => false
      ),
      UserRumour.create!(
        :credible => false
      )
    ])
  end

  it "renders a list of user_rumours" do
    render
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end

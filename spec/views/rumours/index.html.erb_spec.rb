require 'rails_helper'

RSpec.describe "rumours/index", :type => :view do
  before(:each) do
    assign(:rumours, [
      Rumour.create!(
        :description => "Description"
      ),
      Rumour.create!(
        :description => "Description"
      )
    ])
  end

  it "renders a list of rumours" do
    render
    assert_select "tr>td", :text => "Description".to_s, :count => 2
  end
end

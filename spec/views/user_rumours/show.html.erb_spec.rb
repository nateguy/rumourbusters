require 'rails_helper'

RSpec.describe "user_rumours/show", :type => :view do
  before(:each) do
    @user_rumour = assign(:user_rumour, UserRumour.create!(
      :credible => false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/false/)
  end
end

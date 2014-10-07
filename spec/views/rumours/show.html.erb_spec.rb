require 'rails_helper'

RSpec.describe "rumours/show", :type => :view do
  before(:each) do
    @rumour = assign(:rumour, Rumour.create!(
      :description => "Description"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Description/)
  end
end

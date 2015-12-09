require 'rails_helper'

RSpec.describe "activities/index", type: :view do
  before(:each) do
    assign(:activities, [
      Activity.create!(
        :client => "Client",
        :description => "Description",
        :hours => "9.99",
        :billable => false,
        :posted => false,
        :user => nil
      ),
      Activity.create!(
        :client => "Client",
        :description => "Description",
        :hours => "9.99",
        :billable => false,
        :posted => false,
        :user => nil
      )
    ])
  end

  it "renders a list of activities" do
    render
    assert_select "tr>td", :text => "Client".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end

require 'rails_helper'

RSpec.describe "activities/edit", type: :view do
  before(:each) do
    @activity = assign(:activity, Activity.create!(
      :client => "MyString",
      :description => "MyString",
      :hours => "9.99",
      :billable => false,
      :posted => false,
      :user => nil
    ))
  end

  it "renders the edit activity form" do
    render

    assert_select "form[action=?][method=?]", activity_path(@activity), "post" do

      assert_select "input#activity_client[name=?]", "activity[client]"

      assert_select "input#activity_description[name=?]", "activity[description]"

      assert_select "input#activity_hours[name=?]", "activity[hours]"

      assert_select "input#activity_billable[name=?]", "activity[billable]"

      assert_select "input#activity_posted[name=?]", "activity[posted]"

      assert_select "input#activity_user_id[name=?]", "activity[user_id]"
    end
  end
end

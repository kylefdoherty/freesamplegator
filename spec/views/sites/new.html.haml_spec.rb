require 'rails_helper'

RSpec.describe "sites/new", type: :view do
  before(:each) do
    assign(:site, Site.new(
      :name => "MyString",
      :link => "MyString",
      :description => "MyText"
    ))
  end

  it "renders new site form" do
    render

    assert_select "form[action=?][method=?]", sites_path, "post" do

      assert_select "input#site_name[name=?]", "site[name]"

      assert_select "input#site_link[name=?]", "site[link]"

      assert_select "textarea#site_description[name=?]", "site[description]"
    end
  end
end

require 'rails_helper'

RSpec.describe "sites/edit", type: :view do
  before(:each) do
    @site = assign(:site, Site.create!(
      :name => "MyString",
      :link => "MyString",
      :description => "MyText"
    ))
  end

  it "renders the edit site form" do
    render

    assert_select "form[action=?][method=?]", site_path(@site), "post" do

      assert_select "input#site_name[name=?]", "site[name]"

      assert_select "input#site_link[name=?]", "site[link]"

      assert_select "textarea#site_description[name=?]", "site[description]"
    end
  end
end

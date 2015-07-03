require 'rails_helper'

RSpec.describe "samples/edit", type: :view do
  before(:each) do
    @sample = assign(:sample, Sample.create!(
      :title => "MyString",
      :link => "MyString",
      :image => "MyString",
      :summary => "MyText",
      :content => "MyText"
    ))
  end

  it "renders the edit sample form" do
    render

    assert_select "form[action=?][method=?]", sample_path(@sample), "post" do

      assert_select "input#sample_title[name=?]", "sample[title]"

      assert_select "input#sample_link[name=?]", "sample[link]"

      assert_select "input#sample_image[name=?]", "sample[image]"

      assert_select "textarea#sample_summary[name=?]", "sample[summary]"

      assert_select "textarea#sample_content[name=?]", "sample[content]"
    end
  end
end

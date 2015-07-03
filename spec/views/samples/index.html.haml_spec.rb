require 'rails_helper'

RSpec.describe "samples/index", type: :view do
  before(:each) do
    assign(:samples, [
      Sample.create!(
        :title => "Title",
        :link => "Link",
        :image => "Image",
        :summary => "MyText",
        :content => "MyText"
      ),
      Sample.create!(
        :title => "Title",
        :link => "Link",
        :image => "Image",
        :summary => "MyText",
        :content => "MyText"
      )
    ])
  end

  it "renders a list of samples" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Link".to_s, :count => 2
    assert_select "tr>td", :text => "Image".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end

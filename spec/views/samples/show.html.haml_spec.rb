require 'rails_helper'

RSpec.describe "samples/show", type: :view do
  before(:each) do
    @sample = assign(:sample, Sample.create!(
      :title => "Title",
      :link => "Link",
      :image => "Image",
      :summary => "MyText",
      :content => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Link/)
    expect(rendered).to match(/Image/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
  end
end

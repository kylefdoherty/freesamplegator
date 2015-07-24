require 'rails_helper'

describe Site do
  describe ".trim_samples" do
    context "when a site has more than 50 samples" do
      it "trims the number of samples to 50" do
        site = Site.create(name: "Freebie Site")
        55.times { Sample.create(title: "sample", site_id: site.id) }

        Site.trim_samples
        expect(site.samples.count).to eq(50)
      end
    end

    context "when the site has fewer than 50 samples" do
      it "doesn't trim the number of samples" do
        site = Site.create(name: "Freebie Site")
        49.times { Sample.create(title: "sample", site_id: site.id) }

        Site.trim_samples
        expect(site.samples.count).to eq(49)
      end
    end
  end
end

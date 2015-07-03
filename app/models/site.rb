class Site < ActiveRecord::Base
  has_many :samples, dependent: :destroy

  def build_samples
    feed = Feedjira::Feed.fetch_and_parse link
    feed.entries.each do |entry|
      Sample.create(sample_params(entry))
    end
  end

  def latest_twenty
    samples.order(pub_date: :desc).limit(20)
  end

  private

  def sample_params(entry)
    {
      "title"    => entry.title,
      "pub_date" => entry.published,
      "link"     => entry.url,
      "summary"  => entry.summary,
      "site_id"  => id
    }
  end
end

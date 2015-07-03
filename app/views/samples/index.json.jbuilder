json.array!(@samples) do |sample|
  json.extract! sample, :id, :title, :link, :image, :summary, :content, :pub_date
  json.url sample_url(sample, format: :json)
end

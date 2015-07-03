json.array!(@sites) do |site|
  json.extract! site, :id, :name, :link, :description
  json.url site_url(site, format: :json)
end

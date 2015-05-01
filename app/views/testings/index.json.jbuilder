json.array!(@testings) do |testing|
  json.extract! testing, :id
  json.url testing_url(testing, format: :json)
end

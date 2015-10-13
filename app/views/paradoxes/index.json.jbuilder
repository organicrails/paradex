json.array!(@paradoxes) do |paradox|
  json.extract! paradox, :id, :title, :author, :description
  json.url paradox_url(paradox, format: :json)
end

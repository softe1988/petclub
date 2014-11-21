json.array!(@petstores) do |petstore|
  json.extract! petstore, :id, :name
  json.url petstore_url(petstore, format: :json)
end

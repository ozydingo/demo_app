json.array!(@microposdts) do |microposdt|
  json.extract! microposdt, :content, :user_id
  json.url microposdt_url(microposdt, format: :json)
end
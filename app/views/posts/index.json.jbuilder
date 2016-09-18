json.array!(@posts) do |post|
  json.extract! post, :id, :title, :user_id, :q
  json.url post_url(post, format: :json)
end

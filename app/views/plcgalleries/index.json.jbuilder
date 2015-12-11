json.array!(@plcgalleries) do |plcgallery|
  json.extract! plcgallery, :id, :name, :dropbox_uid, :email, :dropbox_token
  json.url plcgallery_url(plcgallery, format: :json)
end

json.array!(@chklistdata) do |chklistdatum|
  json.extract! chklistdatum, :id, :evntid, :chklstid, :assignedto, :completed, :comments
  json.url chklistdatum_url(chklistdatum, format: :json)
end

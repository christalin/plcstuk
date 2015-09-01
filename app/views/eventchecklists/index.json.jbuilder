json.array!(@eventchecklists) do |eventchecklist|
  json.extract! eventchecklist, :id, :eventid, :checklistid, :completed, :comments
  json.url eventchecklist_url(eventchecklist, format: :json)
end

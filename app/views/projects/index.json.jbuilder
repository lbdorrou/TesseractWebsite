json.array!(@projects) do |project|
  json.extract! project, :id, :title, :summary, :category, :client, :playLink, :videoLink
  json.url project_url(project, format: :json)
end

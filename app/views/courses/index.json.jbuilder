json.array!(@courses) do |course|
  json.extract! course, :id, :title, :courseID, :summary, :college
  json.url course_url(course, format: :json)
end

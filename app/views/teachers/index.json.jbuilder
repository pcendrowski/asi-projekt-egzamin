json.array!(@teachers) do |teacher|
  json.extract! teacher, :id, :name, :surname
  json.url teacher_url(teacher, format: :json)
end

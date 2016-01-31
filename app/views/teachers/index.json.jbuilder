json.array!(@teachers) do |teacher|
  json.extract! teacher, :id, :name, :age, :field, :qualification
  json.url teacher_url(teacher, format: :json)
end

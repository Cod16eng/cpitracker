json.array!(@webinars) do |webinar|
  json.extract! webinar, :id, :name, :date, :programa, :speaker_ids, :user_id
  json.title webinar.name
  json.start webinar.date
  json.end webinar.date
  json.url webinar_url(webinar, format: :html)
  json.desc webinar.programa
  json.user webinar.user
  json.speakers webinar.speakers.map(&:full_name)
  json.created_at webinar.user['created_at']
end

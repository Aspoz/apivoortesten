json.id @meeting.id
json.title @meeting.title
json.updated_at @meeting.updated_at
json.created_at @meeting.created_at

json.subjects @meeting.subjects do |subject|
  json.extract! subject, :id, :title
  json.url subject_url(subject)
end

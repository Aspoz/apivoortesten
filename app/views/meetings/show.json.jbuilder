json.id @meeting.id
json.title @meeting.title

json.subjects @meeting.subjects do |subject|
  json.extract! subject, :id, :title
  json.url subject_url(subject)
end

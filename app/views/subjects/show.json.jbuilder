json.id @subject.id
json.title @subject.title
json.updated_at @subject.updated_at
json.created_at @subject.created_at

json.documents @subject.documents do |doc|
  json.extract! doc, :id, :title
  json.url document_url(doc)
end

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

m = []
s = []

10.times do |i|
  m << Meeting.create({title: "Meeting #{i}"})
end


5.times do |i|
  st = Subjecttype.create({title: "Subjecttype #{i}"})

  5.times do |j|
    ss = Subject.create({title: "Subject #{i}", subjecttype: st})
    s << ss

    5.times do |k|
      d = Document.create({title: "Document #{k}", subject: ss})
    end
  end
end

m.each do |meeting|
  s.shuffle!
  5.times do |i|
    meeting.subjects << s[i]
  end
end
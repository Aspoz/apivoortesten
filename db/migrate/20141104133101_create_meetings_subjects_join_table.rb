class CreateMeetingsSubjectsJoinTable < ActiveRecord::Migration
  def change
    create_table :meetings_subjects, id: false do |t|
      t.integer :meeting_id
      t.integer :subject_id
    end
  end
end

class RemoveMeetingIdFromSubjects < ActiveRecord::Migration
  def change
    remove_column :subjects, :meeting_id
  end
end

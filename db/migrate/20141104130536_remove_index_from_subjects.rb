class RemoveIndexFromSubjects < ActiveRecord::Migration
  def change
    remove_index :subjects, column: :meeting_id
  end
end

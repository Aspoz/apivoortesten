class CreateSubjects < ActiveRecord::Migration
  def change
    create_table :subjects do |t|
      t.string :title
      t.belongs_to :meeting, index: true

      t.timestamps
    end
  end
end

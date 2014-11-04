class CreateSubjecttypes < ActiveRecord::Migration
  def change
    create_table :subjecttypes do |t|
      t.string :title

      t.timestamps
    end
  end
end

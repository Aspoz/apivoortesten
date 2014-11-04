class AddSubjecttypeRefToSubject < ActiveRecord::Migration
  def change
    add_reference :subjects, :subjecttype, index: true
  end
end

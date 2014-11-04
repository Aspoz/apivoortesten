class Subject < ActiveRecord::Base
  has_and_belongs_to_many :meetings
  has_many :documents
  belongs_to :subjecttype
end

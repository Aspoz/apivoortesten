class Subject < ActiveRecord::Base
  belongs_to :meeting
  has_many :documents
end

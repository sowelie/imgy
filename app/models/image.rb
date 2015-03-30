class Image < ActiveRecord::Base
  # relationships
  belongs_to :user

  validates :name, persistence: true
end

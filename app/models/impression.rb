class Impression < ApplicationRecord
  belongs_to :drink
  belongs_to :user
  belongs_to :place
  has_many :pictures
  accepts_nested_attributes_for :pictures, allow_destroy: true
end

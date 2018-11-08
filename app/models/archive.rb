class Archive < ApplicationRecord
  has_many_attached :files

  validates :name, presence: true
end

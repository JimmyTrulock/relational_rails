class Author < ApplicationRecord
  has_many :books, dependent: :destroy
  validates_presence_of :name, presence: true
  validates_presence_of :age, presence: true
  validates_inclusion_of :still_writing, in: [true, false]

end
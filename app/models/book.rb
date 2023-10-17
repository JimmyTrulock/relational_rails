class Book < ApplicationRecord
  belongs_to :author
  validates_presence_of :title, presence: true
  validates_presence_of :pages, presence: true
  validates_inclusion_of :award_winning, in: [true, false]
end
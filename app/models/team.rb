class Team < ApplicationRecord
  validates_presence_of :name, :logo

  has_many :users
end

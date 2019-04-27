class Team < ApplicationRecord
  validates_presence_of :name, :logo
end

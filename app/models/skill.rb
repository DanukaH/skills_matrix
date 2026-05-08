class Skill < ApplicationRecord
  validate :name, presence: true

end

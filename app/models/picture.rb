class Picture < ApplicationRecord
  belongs_to :user
  belongs_to :comment
  belongs_to :score
end

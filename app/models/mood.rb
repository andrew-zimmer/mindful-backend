class Mood < ApplicationRecord
  belongs_to :user

  validates :user_id, presence: true
  validates :mood, presence: true
end

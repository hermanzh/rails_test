class Post < ApplicationRecord
  belongs_to :user
  belongs_to :group
  validates :content, presence: true

  delegate :email, to: :user, prefix: true, allow_nil: true

  scope :recent, -> { order('created_at DESC') }
end

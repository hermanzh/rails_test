class Group < ApplicationRecord
  validates :title, presence: true

  belongs_to :user

  has_many :posts
  has_many :group_relationships
  has_many :members, through: :group_relationships, source: :user

  delegate :email, to: :user, prefix: true, allow_nil: true
end

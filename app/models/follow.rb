# frozen_string_literal: true

class Follow < ApplicationRecord
  belongs_to :follower, class_name: "User"
  belongs_to :following, class_name: "User"

  validates :follower_id, uniqueness: { scope: :following_id }
  validate :cannot_follow_self

  def cannot_follow_self
    if follower_id == following_id
      errors.add(:following_id, "cannot follow yourself")
    end
  end

  rhino_owner :follower
  rhino_references [ :follower, :following ]
end

# frozen_string_literal: true

class Like < ApplicationRecord
  belongs_to :user, class_name: "User"
  belongs_to :post

  validates :user_id, uniqueness: { scope: :post_id }

  rhino_owner :post
  rhino_references [ :user, :post ]
end

# frozen_string_literal: true

class Post < ApplicationRecord
  belongs_to :user, class_name: "User"
  belongs_to :organization
  has_many :comments, dependent: :destroy
  has_many :likes, dependent: :destroy
  has_one_attached :image

  validates :content, presence: true

  rhino_owner :organization
  rhino_references [ :user, :organization ]
end

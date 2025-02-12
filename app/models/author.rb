class Author < ApplicationRecord
  mount_uploader :avatar, AvatarUploader

  validates :name, presence: true
  validates :nickname, presence: true

end

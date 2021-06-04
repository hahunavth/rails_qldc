class User < ApplicationRecord
  has_secure_password

  validates :name, presence: true
  validates :password, :presence => true,
                   :confirmation => true,
                   :length => {:within => 6..40}

  validates :password_confirmation, :presence => true,
                    :confirmation => true,
                    :length => {:within => 6..40}
end

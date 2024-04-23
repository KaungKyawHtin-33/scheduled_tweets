class User < ApplicationRecord
    has_secure_password

    validates :email, presence: true, email: true,  :length => { maximum: 256 }
end

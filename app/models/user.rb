class User < ApplicationRecord
    has_many :logs
    has_many :user_lists
    has_many :lists, through: :user_lists
    has_many :tasks, through: :logs

    has_secure_password

    def user_params
        params.permit(:name, :email, :role_id, :username, :password, :password_confirmation)
    end
end

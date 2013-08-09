class User < ActiveRecord::Base
  validates :username, :email, presence: true
  validates :username, :email, uniqueness: true
end

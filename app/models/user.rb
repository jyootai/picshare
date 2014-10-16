class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
	validates :username, uniqueness: {case_sensitive: false},presence: true,format: { with: /\A[a-z0-9][a-z0-9-]*\z/i }
end

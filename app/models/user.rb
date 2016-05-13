class User < ActiveRecord::Base
	has_many :jobs
	has_many :boats
	has_many :follows
	has_many :vessels, through: :follows, source: :boat
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end

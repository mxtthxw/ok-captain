class Boat < ActiveRecord::Base
	belongs_to :user
	has_many :jobs

	validates :name, uniqueness: true

	validates :location, inclusion: {in: ["Miami", "Chicago", "Portland", "New York City", "Balitmore", "Boston", "Shanghai", "London", "Amsterdam", "Sydney", "Capetown"]}
end

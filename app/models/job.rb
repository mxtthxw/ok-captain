class Job < ActiveRecord::Base
	belongs_to :user
	belongs_to :boat

	validates :name, uniqueness: true

	validates :cost, numericality: { greater_than: 1000 }

	validates :description, length: { minimum: 50 }

	validates :origin, inclusion: {in: ["Miami", "Chicago", "Portland", "New York City", "Balitmore", "Boston", "Shanghai", "London", "Amsterdam", "Sydney", "Capetown"]}

	validates :destination, inclusion: {in: ["Miami", "Chicago", "Portland", "New York City", "Balitmore", "Boston", "Shanghai", "London", "Amsterdam", "Sydney", "Capetown"]}
end

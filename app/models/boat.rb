class Boat < ActiveRecord::Base
	belongs_to :user
	has_many :jobs

	has_attached_file :boat_pic, :styles => { :medium => "500x500>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
	validates_attachment_content_type :boat_pic, :content_type => /\Aimage\/.*\Z/

	validates :name, uniqueness: true

	validates :location, inclusion: {in: ["Miami", "Chicago", "Portland", "New York City", "Balitmore", "Boston", "Shanghai", "London", "Amsterdam", "Sydney", "Capetown"]}
end

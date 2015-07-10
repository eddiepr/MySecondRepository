class Concerto < ActiveRecord::Base
	
	validates :artist, presence: true
	validates :date, presence: true
	validates :venue, presence: true
	validates :city, presence: true
	validates :ticket_price, presence: true
	validates :ticket_price, numericality: true

	def self.retrieve_today
		self.where(date: Date.today.beginning_of_day..Date.today.end_of_day)
	end

	def self.retrieve_this_month
		self.where(date: Date.today.beginning_of_month..Date.today.end_of_month)
	end

	def self.retrieve
		self.where("created_at > ?",  1.month.ago).order(:date)
	end
end

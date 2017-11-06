require_relative '../../db/config'

class Student < ActiveRecord::Base
# implement your Student model here
validates :email, uniqueness: true
validates :email, format: {with: /([A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,4})/i, message: "Invalide E-mail format"}
validates :phone, format: {with: /\d{3}-?\d{3}-?\d{4,}/, message: "Invalid Phone Number format"}
validate :invalide_age
	def invalide_age
		if age <= 5
			errors.add(:invalide ,"Age is under 5")
		end

	end
	def name
		name = "#{first_name} #{last_name}"
	end
	def age
		today = Time.now
		if today.month < birthday.month || (today.month == birthday.month && birthday.yday > today.yday)
			today.year - birthday.year - 1
		else
			today.year - birthday.year
		end
	end

end
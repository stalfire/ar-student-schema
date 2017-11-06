require_relative '../../db/config'

class Teacher < ActiveRecord::Base
	validates :email, uniqueness: true
	validates :email, format: {with: /([A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,4})/i, message: "Invalide E-mail format"}
	attr_accessor :teacher_name, :email, :phone

end
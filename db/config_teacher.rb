require 'active_record'
require_relative '../app/models/teacher'
ActiveRecord::Base.establish_connection(:adapter => 'sqlite3', :database => "#{File.dirname(__FILE__)}/../db/ar-teachers.sqlite3")
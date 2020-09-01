require 'bundler'
Bundler.require

require_relative '../lib/student'

DB = {:conn => SQLite3::Database.new("db/students.db")}

def self.create(name, grade)
    student = Student.new(name, grade)
    student.save
    student
  end
class Instructor < ActiveRecord::Base

  has_many :trainings

  cattr_reader :per_page
  @@per_page = 3
end


require "pry"
require_relative "./doctor"
require_relative "./patient"

class Appointment

attr_accessor :patient, :doctor

@@all = []

def initialize(date, patient, doctor)
  @date = date
  @patient = patient
  @doctor = doctor
  @@all << self
end

def self.all
  @@all
end

end

require "pry"
require_relative "./patient"
require_relative "./appointment"

class Doctor

attr_accessor :name, :patients, :appointments

@@all = []

def initialize(name)
  @name = name
  @appointments = []
  @patients = []
  @@all << self
end

def self.all
  @@all
end

def new_appointment(patient, date)
  appointment = Appointment.new(date, patient, self.name)
  @appointments << appointment
  @patients << patient
  appointment.doctor = self
  appointment
  # binding.pry
end

end

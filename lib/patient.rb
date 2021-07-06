require "pry"
require_relative "./appointment"
require_relative "./doctor"

class Patient

attr_reader :name

@@all = []

def initialize(name)
  @name = name
  @@all << self
  @appointments = []
  @doctors = []
end

def self.all
  @@all
end

def new_appointment(doctor, date)
  appointment = Appointment.new(date, self.name, doctor)
  @appointments << appointment
  appointment.patient = self
  appointment
  # binding.pry
end

def appointments
  Appointment.all.select {|appointment| appointment.patient == self }
end

def doctors
  self.appointments.collect {|appointment| appointment.doctor }
end

end

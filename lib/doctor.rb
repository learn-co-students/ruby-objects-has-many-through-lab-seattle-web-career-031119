require "pry"

class Doctor
  attr_accessor :appointments
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @appointments = []
    @@all << self
  end

  def new_appointment(patient, appt)
    new_appointment = Appointment.new(appt, patient, self)
    appointments << new_appointment
    new_appointment
  end

  def patients
    appointments.map {|appt|
      appt.patient
    }
  end

  def self.all
    @@all
  end

end

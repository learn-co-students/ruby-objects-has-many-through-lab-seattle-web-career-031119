require_relative './appointment'
require_relative './patient'




class Doctor

  @@all = []

  attr_reader :all,:name
  attr_accessor :new_song

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_appointment(patient_name,date)
    Appointment.new(self,patient_name,date)
  end

  def appointments
    Appointment.all.select do |appt|
      appt.doctor == self
    end
  end

  def patients
    appts = Appointment.all.select do |appt|
      appt.doctor == self
    end
    appts.map do |appt|
      appt.patient
    end
  end

  def self.all
    @@all
  end

end

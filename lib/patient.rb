require_relative './doctor'
require_relative './appointment'

require 'pry'

class Patient

  @@all = []

  attr_reader :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def appointments
    Appointment.all.select do |appt|
      appt.patient == self
    end
  end

  def new_appointment(doctor,date)
    Appointment.new(doctor,self,date)
  end

  def doctors
    myAppts =  Appointment.all.select do |appt|
      appt.patient == self
    end
    myAppts.collect {|appt| appt.doctor}
  end

  def self.all
    @@all
  end

end

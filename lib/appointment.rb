require_relative './doctor'
require_relative './patient'


class Appointment

  @@all = []

  attr_reader :doctor,:patient,:date


  def initialize(dr,patient_name,date)
    @doctor = dr
    @date = date
    @patient = patient_name
    @@all << self
  end

  def self.all
    @@all
  end

end

class Patient

  attr_reader :name, :appointments
  @@all = []

  def initialize(name)
    @name = name
    @appointments = []
    @@all << self
  end

  def new_appointment(doctor, date)
    appointment = Appointment.new(date, self, doctor)
    appointments << appointment
    appointment
  end

  def doctors
    appointments.map {|appt|
      appt.doctor
    }
  end

  def self.all
    @@all
  end

end

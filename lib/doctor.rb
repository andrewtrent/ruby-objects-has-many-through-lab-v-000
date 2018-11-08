class Doctor
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def new_appointment(patient, date)
    Appointment.new(patient, self, date)
  end 

end

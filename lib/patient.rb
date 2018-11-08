class Patient
  attr_accessor :name, :appointments

  @@all = []

  def initialize(name)
    @name = name
    @appointments = []
    @@all << self
  end

  def new_appointment(doctor, date)
    Appointment.new(self, doctor, date)
  end

  def self.all
    @@all
  end
end

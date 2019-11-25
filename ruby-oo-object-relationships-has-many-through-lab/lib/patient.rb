class Patient
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(doctor, date)
    Appointment.new(date, self, doctor)
  end

  def appointments
    # mine = []
    # Appointment.all.each do |appt|
    #   if appt.patient == self
    #     mine << appt
    #   end
    # end
    # return mine

    Appointment.all.select do |appt|
      appt.patient == self
    end
  end

  def doctors
    # self.appointments.map(&:doctor)

    self.appointments.map do |a|
      a.doctor
    end
  end
end

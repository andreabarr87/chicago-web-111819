class Doctor
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def appointments
    Appointment.all.select do |appointment|
      appointment.doctor == self
    end
  end

  def patients
    self.appointments.collect do |appointment|
      appointment.patient
    end
  end

  def new_appointment(patient, date)
    Appointment.new(date, patient, self)
  end

  def self.most_popular

    # self.all.max { |a, b| a.appointments.length <=> b.appointments.length

    max_doc = self.all[0]
    self.all.each do |doctor|
      if doctor.appointments.length > max_doc.appointments.length
        max_doc = doctor
      end
    end
    max_doc
  end
end

require_relative 'doctor'
require_relative 'patient'
require_relative 'appointment'


doc_one = Doctor.new("Greg House")
doc_two = Doctor.new("Eleanor Quinn")
patient_one = Patient.new("Arby Sammy")
patient_two = Patient.new("Wendy Nug")
patient_three = Patient.new("Berger K.")

Appointment.new('today', patient_one, doc_two)
Appointment.new('today', patient_two, doc_two)
Appointment.new('today', patient_three, doc_two)
Appointment.new('today', patient_one, doc_one)
Appointment.new('today', patient_two, doc_one)

p Doctor.most_popular

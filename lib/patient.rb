class Patient
attr_accessor :doctors, :appointments
attr_reader :name, :date, :doctor
@@patients = []

def initialize(name)
    @name = name
    @@patients << self
end

def new_appointment(date, doctor)
    patient = self
    Appointment.new(date, patient, doctor)
end

def self.all
    @@patients
end

def appointments
    Appointment.all.select {|appointment| appointment.patient == self}
end

def doctors
    self.appointments.map {|appointment| appointment.doctor}
end

end

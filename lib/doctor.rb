class Doctor 
    attr_accessor :patients, :appointments
    attr_reader :name

    @@doctors = []

    def initialize(name)
        @name = name
        @@doctors << self
    end

    def self.all
        @@doctors
    end


    def appointments
        Appointment.all.select {|appointment| appointment.doctor == self}
    end

    def new_appointment(date, patient)
        doctor = self
        Appointment.new(date, patient, doctor)
    end

    def patients
       self.appointments.map {|appointment| appointment.patient}
    end

end




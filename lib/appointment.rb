class Appointment
    attr_accessor :patient, :doctor
    attr_reader :date, :patient, :doctor

    @@appointments = []

    def initialize(date, patient, doctor)
        @date = date
        @patient = patient
        @doctor = doctor
        @@appointments << self
    end

    def self.all
        @@appointments
    end
def doctor
    @doctor
end

def patient
    @patient
end


end



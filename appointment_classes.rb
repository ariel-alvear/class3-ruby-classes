class Appointment
    def initialize(location, purpose, hour, min)
        @location = location
        @purpose = purpose
        @hour = hour
        @min = min
    end

    def location
        @location
    end

    def purpose
        @purpose
    end

    def hour
        @hour
    end

    def minutes
        @min
    end
end

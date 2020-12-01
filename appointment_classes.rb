require 'byebug'

class Appointment #clase padre
    attr_accessor :location, :purpose, :hour, :min
    def initialize(location, purpose, hour, min)
        @location = location
        @purpose = purpose
        @hour = hour
        @min = min
    end
end

#clases hijo
class MonthlyAppointment < Appointment
    attr_accessor :day
    def initialize(location, purpose, hour, min, day)
        @location = location
        @purpose = purpose
        @hour = hour
        @min = min
        @day = day
    end

    def occurs_on?(day)
        if @day == day
            true
        else
            false
        end
    end

    def to_s
        
    end
end

class DailyAppointment < Appointment
    def occurs_on?(hour, min)
        if hour == @hour && min == @min
            true
        else
            false
        end
    end
end

class OneTimeAppointment < Appointment
    attr_accessor :month, :year
    def initialize(location, purpose, hour, min, day, month, year)
        @location = location
        @purpose = purpose
        @hour = hour
        @min = min
        @day = day
        @month = month
        @year = year
    end

    def occurs_on?(day, month, year)
        if day == @day && month == @month && year == @year
            true
        else
            false
        end
    end

    def to_s
    end
end


byebug

puts '.'


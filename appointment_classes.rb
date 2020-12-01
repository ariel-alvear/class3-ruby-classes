#clase padre 
#Parent
class Appointment
    attr_accessor :location, :purpose, :hour, :min
    def initialize(location, purpose, hour, min)
        @location = location
        @purpose = purpose
        @hour = hour
        @min = min
    end
end

#clases hijo
#child
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
        "Reunión mensual en #{@location} sobre #{@purpose} el día #{@day} a las #{@hour}:#{@min}hrs"
    end
end

#child
class DailyAppointment < Appointment
    def occurs_on?(hour, min)
        if hour == @hour && min == @min
            true
        else
            false
        end
    end

    def to_s
        "Reunión diaria en #{@location} sobre #{@purpose} a las #{@hour}:#{@min}hrs"
    end
end

#child
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
        "Reunión mensual en #{@location} sobre #{@purpose} el #{@day}/#{month}/#{year} a las #{@hour}:#{@min}hrs"
    end
end


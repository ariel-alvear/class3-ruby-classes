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
        super(location, purpose, hour, min, day)
        @day = day
    end

    def occurs_on?(day)
        @day == day
    end

    def to_s
        "Reunión mensual en #{@location} sobre #{@purpose} el día #{@day} a las #{@hour}:#{@min}hrs"
    end
end

#child
class DailyAppointment < Appointment
    def occurs_on?(hour, min)
        (hour == @hour) && (min == @min)
    end

    def to_s
        "Reunión diaria en #{@location} sobre #{@purpose} a las #{@hour}:#{@min}hrs"
    end
end

#child
class OneTimeAppointment < Appointment
    attr_accessor :day, :month, :year
    def initialize(location, purpose, hour, min, day, month, year)
        super(location, purpose, hour, min, day, month, year)
        @day = day
        @month = month
        @year = year
    end

    def occurs_on?(day, month, year)
        (day == @day) && (month == @month) && (year == @year)
    end

    def to_s
        "Reunión mensual en #{@location} sobre #{@purpose} el #{@day}/#{month}/#{year} a las #{@hour}:#{@min}hrs"
    end
end


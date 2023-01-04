
class NwsAlert
  attr_reader :id,
              :areas_affected,
              :effective_at,
              :ends_at,
              :status,
              :severity,
              :event,
              :description,
              :instructions,
              :response

  def initialize(data)
    @id = data[:id]
    @areas_affected = data[:areaDesc]
    @effective_at = Time.parse(data[:effective]).strftime('%A at%l:%M%P, %B%e, %Y')
    @ends_at = Time.parse(data[:ends]).strftime('%A at%l:%M%P, %B%e, %Y')
    @status = data[:status]
    @severity = data[:severity]
    @event = data[:event]
    @description = data[:description]
    @instructions = data[:instructions]
    @response = data[:response]
  end
end
#"2023-01-03T20:19:00-06:00"

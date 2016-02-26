json.array!(@calevents) do |calevent|
  json.extract! calevent, :id, :title, :start, :end, :color, :allDay
  json.url calevent_url(calevent, format: :json)
end

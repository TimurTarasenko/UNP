class UsePhoneSystemsGrid

  include Datagrid

  scope do
    UsePhoneSystem
  end

  filter(:day_id, :date, :range => true)
  filter(:country, :string)
  filter(:interfaces, :string)

  column(:day_id) do |record|
    record.day_id.to_date
  end
  column(:country)
  column(:phone_number)
  column(:interfaces)
  column(:start_call)
  column(:duration_call)
  column(:costs)
  column(:status)


end


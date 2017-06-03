class UsePhoneSystemsGrid

  include Datagrid

  scope do
    UsePhoneSystem
  end

  filter(:day_id, :date, :range => true, :default => proc { [28.month.ago.to_date, Date.today]} )
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

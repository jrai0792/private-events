FactoryBot.define do
  factory :event do
    eventname { 'Holiday Event' }
    description { 'Sample description for test.' }
    start_date { '2020, 12, 12' }
  end
end

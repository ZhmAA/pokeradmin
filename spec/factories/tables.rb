FactoryGirl.define do
  factory :table do
  	sequence :id do |i|
      "#{i}"
    end
    title 'Game'
    gamestart '2016-10-10 00:00'
    players 0
  end
end
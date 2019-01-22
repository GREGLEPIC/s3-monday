require_relative '../lib/event'

describe Event do

    before(:each) do
      Object.send(:remove_const, 'Event')
      load 'event.rb'
    end
end
  
describe 'initializer' do
  
      it 'Create an event' do
        event = Event.new("2019-01-13 09:00", 10, "standup quotidien", ["truc@machin.com", "bidule@chose.fr"])
        expect(event.class).to eq(Event)
      end
end

# describe 'postpone_24h' do

#       it 'add 24h to an event' do
#         event = Event.new("2019-01-13 09:00", 10, "standup quotidien", ["truc@machin.com", "bidule@chose.fr"])
#         expect(event.class).to eq(@start_date+60*60*24)
#       end
# end
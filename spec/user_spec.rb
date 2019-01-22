require_relative '../lib/user'

describe User do

    before(:each) do
      Object.send(:remove_const, 'User')
      load 'user.rb'
    end
end
  
describe 'initializer' do
  
      it 'creates an user' do
        user = User.new("email@email.com")
        expect(user.class).to eq(User)
      end

      it 'saves @email as instance variable' do
        email = "email@email.com"
        user = User.new(email)
        expect(user.email).to eq(email)
      end 
end


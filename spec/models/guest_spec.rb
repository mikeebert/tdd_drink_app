require 'spec_helper'

describe Guest do
  it 'is invalid without a first_name' do
    guest = Guest.new(first_name: nil,
                    last_name:  "Singletary")
    expect(guest).to have(1).errors_on(:first_name)
  end
  
  it 'is invalid without a last_name' do
    guest = Guest.new(first_name: "nil",
                    last_name: nil)
    expect(guest).to have(1).errors_on(:last_name)    
  end
  
  it 'returns the full name for a guest' do
    user = Guest.new(first_name: "Mike",
                    last_name:  "Singletary")
    expect(user.full_name).to eq("Mike Singletary")
  end
end
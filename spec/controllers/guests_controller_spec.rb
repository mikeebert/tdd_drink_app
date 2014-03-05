require 'spec_helper'

describe GuestsController do
  let(:guest_params) { {first_name: "Donnie", last_name: "Whalberg"} }
  let(:guest) { Guest.create(:first_name => "Sample", :last_name => "Guest") }
  
  it "should render the guests index page" do
    get :index
    response.should be_ok
  end
  
  it "should create a new guest" do  
    post :create, :guest => guest_params
    Guest.count.should == 1
  end
  
  it "should redirect to the guests path" do
    post :create, :guest => guest_params
    response.should redirect_to guests_path
  end
  
  it "shows the guest page" do
    get :show, id: guest.id
  end
end













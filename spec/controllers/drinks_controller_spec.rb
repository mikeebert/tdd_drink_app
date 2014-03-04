require 'spec_helper'

describe DrinksController do
  it "displays the drink index page" do
    get :index
    response.should be_ok
  end
end

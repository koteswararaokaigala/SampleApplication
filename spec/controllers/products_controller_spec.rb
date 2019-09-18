require 'rails_helper'

RSpec.describe ProductsController, type: :controller do

describe 'GET #index' do
it "it will display the all values" do
	get :index 
	expect(response.status).to eq  200
end
end

end



require 'rails_helper'

describe 'Authentication', type: :request do
  describe 'POST /authenticate' do

    let(:user) { FactoryBot.create(:user, username: "howdy", password: 'wankatron') }

    it 'authenticates the client' do
        post '/api/v1/authenticate', params: {username: user.username, password: user.password}

        expect(response).to have_http_status(:created)
        expect(JSON.parse(response.body)).to eq({
            # Encodes user_id: 1
          'token' => "eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoxfQ.DiPWrOKsx3sPeVClrm_j07XNdSYHgBa3Qctosdxax3w"
        })
    end

    it 'returns unauthorized status when password is incorrect' do
      post '/api/v1/authenticate', params: {username: user.username, password: "wrong password"}

        expect(response).to have_http_status(:unauthorized)
    end

  end
end
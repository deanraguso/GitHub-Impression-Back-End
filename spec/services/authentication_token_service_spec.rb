require 'rails_helper'

describe AuthenticationTokenService do
    describe '.call' do
        
        let(:token) { described_class.call(1) } # Token is the encoded user_id: 1 string
        
        it "returns an authentication token" do
            decoded_token = JWT.decode(
                token,
                described_class::HMAC_SECRET,
                true,
                {algorthm: described_class::ALGORITHM_TYPE}
            )

            expect(decoded_token).to eq([
                {"user_id" => 1},
                {"alg" => "#{described_class::ALGORITHM_TYPE}"}
            ])

        end

    end

end
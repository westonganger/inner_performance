# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Root request', type: :request do
  describe 'GET /' do
    it 'returns a successfull response' do
      get '/'
      expect(response).to be_success
    end
  end
end

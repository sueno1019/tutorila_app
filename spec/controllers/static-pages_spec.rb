require 'rails_helper'

RSpec.describe "StaticPages", type: :request do
  describe '画面遷移' do
    it 'homeに移動' do
      get root_path
      expect(response).to have_http_status(200)
    end

    it 'helpに移動' do
      get static_pages_help_url
      expect(response).to have_http_status(200)
    end

    it 'aboutに移動' do
      get static_pages_about_url
      expect(response).to have_http_status(200)
    end
  end

end
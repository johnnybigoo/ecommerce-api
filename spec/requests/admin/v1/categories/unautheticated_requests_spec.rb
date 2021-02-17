#Lista de Categorias

require "rails_helper"

RSpec.describe "Storefront V1 Home", type: :request do  
  context "GET /categories" do
    let(:url) { "/storefront/v1/categories" }
    let!(:categories) { create_list(:category, 15) }
    
    it "returns all Categories" do
      get url, headers: unauthenticated_header
      expect(body_json['categories'].count).to eq 15
    end
    
    it "returns Categories ordered by name" do
      get url, headers: unauthenticated_header
      expected_categories = categories.sort { |a, b| a[:name] <=> b[:name] }.as_json(only: %i(id name))
      expect(body_json['categories']).to contain_exactly *expected_categories
    end

    it "returns success status" do
      get url, headers: unauthenticated_header
      expect(response).to have_http_status(:ok)
    end
  end
end

# require 'rails_helper'

# RSpec.describe "Admin V1 Categories without authentication", type: :request do
  
#   context "GET /categories" do
#     let(:url) { "/admin/v1/categories" }
#     let!(:categories) { create_list(:category, 5) }

#     before(:each) { get url }
    
#     include_examples "unauthenticated access"
#   end

#   context "POST /categories" do
#     let(:url) { "/admin/v1/categories" }
    
#     before(:each) { post url }
    
#     include_examples "unauthenticated access"
#   end

#   context "GET /categories/:id" do
#     let(:category) { create(:category) }
#     let(:url) { "/admin/v1/categories/#{category.id}" }

#     before(:each) { get url }

#     include_examples "unauthenticated access"
#   end

#   context "PATCH /categories/:id" do
#     let(:category) { create(:category) }
#     let(:url) { "/admin/v1/categories/#{category.id}" }

#     before(:each) { patch url }
    
#     include_examples "unauthenticated access"
#   end

#   context "DELETE /categories/:id" do
#     let!(:category) { create(:category) }
#     let(:url) { "/admin/v1/categories/#{category.id}" }

#     before(:each) { delete url }
    
#     include_examples "unauthenticated access"
#   end
# end

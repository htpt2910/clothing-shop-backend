# spec/requests/products/index_spec.rb

require 'rails_helper'

RSpec.describe "Products", type: :request do
  subject { get api_v1_products_path }

  let!(:products) { create_list(:product, 3) }

  it "returns a list of products" do
    subject
    expect(response).to have_http_status(:success)
  end

  it "returns all products" do
    subject
    expect(response.body).to include(*products.map(&:name))
  end
end

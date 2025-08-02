# spec/requests/products/show_spec.rb

require 'rails_helper'

RSpec.describe "Products", type: :request do
  subject { get api_v1_product_path(product) }

  let(:product) { create(:product) }

  it "returns a product" do
    subject
    expect(response).to have_http_status(:success)
  end

  it "returns the product" do
    subject
    expect(response.body).to include(product.name)
  end
end

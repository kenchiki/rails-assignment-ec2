require 'rails_helper'

RSpec.describe "my/orders/edit", type: :view do
  before(:each) do
    @my_order = assign(:my_order, Order.create!())
  end

  it "renders the edit my_order form" do
    render

    assert_select "form[action=?][method=?]", my_order_path(@my_order), "post" do
    end
  end
end

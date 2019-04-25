require 'rails_helper'

describe 'admin/orders', type: :system do
  before do
    sign_in FactoryBot.create(:user, :with_admin)
  end

  describe '#index' do
    it '一覧に全ユーザーの注文が表示される' do
      order = FactoryBot.create(:order, user: FactoryBot.create(:user, :with_delivery_info))
      order2 = FactoryBot.create(:order, user: FactoryBot.create(:user, :with_delivery_info))

      visit admin_orders_path
      table = find(:test, 'orders__index')
      expect(table).to have_link '注文詳細', href: admin_order_path(order)
      expect(table).to have_link '注文詳細', href: admin_order_path(order2)
    end
  end
end
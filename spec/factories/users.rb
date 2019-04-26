FactoryBot.define do
  factory :user do
    sequence(:email) { |n| "test#{n}@example.com" }
    password { 'testtest' }
    confirmed_at { Time.current }

    trait :with_delivery_info do
      after(:build) do |user|
        user.shipping_addresses << FactoryBot.build(:shipping_address)
      end
    end

    trait :with_product do
      after(:build) do |cart|
        cart.cart_products << FactoryBot.build(:cart_product)
      end
    end

    trait :with_admin do
      admin { true }
    end
  end
end

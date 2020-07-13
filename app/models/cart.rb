class Cart < ApplicationRecord
	has_many :products
	has_one :user


def add_item(product_id,user_id)
        item = Cart.find_by_product_id_and_user_id(product_id,user_id.to_i)
    if item
        item.quantity + 1
        save
    else
       Cart.create!(:product_id=>product_id,:user_id=> user_id,:quantity=>1,:created_at=> Date.today,:updated_at=>Date.today)
     end
    save
end

end

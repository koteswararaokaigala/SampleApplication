class CreateCarts < ActiveRecord::Migration[5.2]
  def change
    create_table :carts do |t|
	    t.reference :carts, :user, foreign_key: true
	    t.reference :carts, :products, foreign_key: true
     #t.integer :user_id,foreign_key: true
     #t.integer :product_id, foreign_key: true
	 t.integer :quantity
      t.timestamps
    end
  end
end

class CreateAddresses < ActiveRecord::Migration[6.0]
  def change
    create_table :addresses do |t|
      t.integer   :prefecture,    null: false
      t.string    :city,          null: false
      t.string    :postal_code,   null: false
      t.string    :house_num,     null: false
      t.string    :building,      null: false
      t.string    :tel_num,       null: false
      t.references :buying,        null: false
      t.timestamps
    end
  end
end

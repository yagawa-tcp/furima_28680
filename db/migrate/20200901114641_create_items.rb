class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string     :pro_name,      null: false
      t.text       :explanation,   null: false
      t.integer    :price,         null: false
      t.integer    :category_id,   null: false
      t.integer    :condition_id,  null: false
      t.integer    :deli_money_id, null: false
      t.integer    :prefecture_id, null: false
      t.integer    :deli_time_id,  null: false
      t.references :user,          null: false, foreign_key: true
      t.boolean    :checked
      t.timestamps
    end
  end
end

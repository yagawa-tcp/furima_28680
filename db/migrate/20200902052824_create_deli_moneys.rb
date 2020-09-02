class CreateDeliMoneys < ActiveRecord::Migration[6.0]
  def change
    create_table :deli_moneys do |t|

      t.timestamps
    end
  end
end

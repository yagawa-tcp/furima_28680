class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string    :nickname,      null: false
      t.string    :email,         null: false
      t.string    :
| password  | string     | null: false |
| first_name| string     | null: false |
| family_name| string     | null: false |
| first_huri| string     | null: false |
| family_huri| string     | null: false |
| birthday  | date       | null: false |

      t.timestamps
    end
  end
end

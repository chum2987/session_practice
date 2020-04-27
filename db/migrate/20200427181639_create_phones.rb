class CreatePhones < ActiveRecord::Migration[5.0]
  def change
    create_table :phones do |t|
      t.text :phone_number, null: false
      t.references :user
    end
  end
end

class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :name, null: false
      t.string :password_digest
      t.integer :permision
      t.string :ho_va_ten
      t.string :email
      t.string :sdt
      t.string :dia_chi
      t.boolean :trang_thai, default: false

      t.timestamps
    end
  end
end

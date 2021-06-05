class CreateTamVangs < ActiveRecord::Migration[6.1]
  def change
    create_table :tam_vangs do |t|
      t.integer :nguoi_dan_id
      t.date :tu_ngay
      t.date :den_ngay
      t.string :dia_chi
      t.string :li_do
      t.string :xac_nhan

      t.timestamps
    end
  end
end

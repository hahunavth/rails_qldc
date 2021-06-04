class CreateHoKhaus < ActiveRecord::Migration[6.1]
  def change
    create_table :ho_khaus do |t|
      t.string :dia_chi
      t.date :ngay_cap
      t.string :noi_cap

      t.timestamps
    end
  end
end

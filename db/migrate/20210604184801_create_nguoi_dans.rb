class CreateNguoiDans < ActiveRecord::Migration[6.1]
  def change
    create_table :nguoi_dans do |t|
      t.string :ten
      t.string :biet_danh
      t.integer :so_cmnd
      t.integer :so_ho_khau
      t.integer :so_ho_chieu
      t.string :qh_voi_chu_ho
      t.date :ngay_sinh
      t.string :gioi_tinh
      t.string :noi_sinh
      t.string :ngyen_quan
      t.string :dan_toc
      t.string :ton_giao
      t.string :quoc_tich
      t.string :noi_thuong_tru
      t.string :nghe_nghiep
      t.string :noi_lam_viec
      t.string :trinh_do_hoc_van
      t.string :trinh_do_ngoai_ngu

      t.timestamps
    end
  end
end

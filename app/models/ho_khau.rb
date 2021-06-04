class HoKhau < ApplicationRecord
  has_many :NguoiDan, foreign_key: "so_ho_khau"
end

class NguoiDan < ApplicationRecord
  belongs_to :HoKhau, foreign_key: "so_ho_khau"
end

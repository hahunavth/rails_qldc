class NguoiDan < ApplicationRecord
  # belongs_to :HoKhau, foreign_key: "so_ho_khau"
  has_many :TamTru, foreign_key: "so_cmnd"
  has_many :TamVang
  # has_one :User, foreign_key: "name"

end

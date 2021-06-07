class NguoiDan < ApplicationRecord
  # belongs_to :HoKhau, foreign_key: "so_ho_khau"
  has_many :TamTru, foreign_key: "nguoi_dan_id", :dependent => :destroy
  has_many :TamVang, foreign_key: "nguoi_dan_id", :dependent => :destroy
  # has_one :User, foreign_key: "name"

end

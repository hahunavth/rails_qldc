class TamTru < ApplicationRecord
  belongs_to :NguoiDan, foreign_key: "nguoi_dan_id"
end

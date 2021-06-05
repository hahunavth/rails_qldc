# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
HoKhau.create(id: 1, dia_chi: 'Hà Nội')
HoKhau.create(id: 2, dia_chi: 'Hải Dương')

NguoiDan.create(id: 1,ten: 'Admin', so_cmnd: '123456789', so_ho_khau: 1, qh_voi_chu_ho: 'Chủ hộ')
NguoiDan.create(id: 2,ten: 'Nguyen Van B', so_cmnd: '030201001123', so_ho_khau: 1, qh_voi_chu_ho: 'Con')
NguoiDan.create(id: 3,ten: 'Nguyen Van C', so_cmnd: '030201001122', so_ho_khau: 1, qh_voi_chu_ho: 'Cháu')

User.create(id: 1,name: 'admin', password: '1', password_confirmation: '1', permision: 0 )
User.create(id: 2,name: '030201001123', password: '1', password_confirmation: '1', permision: 1 )

TamTru.create(  id: 1, nguoi_dan_id: 3, tu_ngay: Sat, 05 Jun 2021, den_ngay: Sat, 05 Jun 2021, dia_chi: "Ha noi", li_do: "@@@", xac_nhan: nil )

TamVang.create(  id: 1, nguoi_dan_id: 3, tu_ngay: Sat, 05 Jun 2021, den_ngay: Sat, 05 Jun 2021, dia_chi: "Hai Duong", li_do: "@@@", xac_nhan: nil )

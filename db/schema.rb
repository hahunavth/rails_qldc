# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_06_04_184801) do

  create_table "nguoi_dans", force: :cascade do |t|
    t.string "ten"
    t.string "biet_danh"
    t.integer "so_cmnd"
    t.integer "so_ho_khau"
    t.integer "so_ho_chieu"
    t.string "qh_voi_chu_ho"
    t.date "ngay_sinh"
    t.string "gioi_tinh"
    t.string "noi_sinh"
    t.string "ngyen_quan"
    t.string "dan_toc"
    t.string "ton_giao"
    t.string "quoc_tich"
    t.string "noi_thuong_tru"
    t.string "nghe_nghiep"
    t.string "noi_lam_viec"
    t.string "trinh_do_hoc_van"
    t.string "trinh_do_ngoai_ngu"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name", null: false
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end

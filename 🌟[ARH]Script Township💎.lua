-- ✅ Ensure script is hidden before menu starts
gg.setVisible(false)

local come =[[
   ┏┳┳┓┏━┓─────────┏━━┓┏━┓
   ┃┃┃┃┃━┫┏┓─┏━┓┏━┓┃┃┃┃┃━┫
   ┃┃┃┃┃━┫┃┣┓┃┣┫┃╋┃┃┃┃┃┃━┫
   ┗━━┛┗━┛┗━┛┗━┛┗━┛┗┻┻┛┗━┛]]

local banner =[[
┏━┓─┏┓─┏━━┓───────┏━┓───┏┓─┏┓─
┃╋┣━┫┗┓┗┓┏┻┳┳┳┳━┳┓┃━╋━┳━╋╋━┫┗┓
┃┳┃┣┫┃┃─┃┃╋┃┃┃┃┃┃┃┣━┃┣┫┣┫┃╋┃┏┫
┗┻┻┛┗┻┛─┗┻━┻━━┻┻━┛┗━┻━┻┛┗┫┏┻━┛
─────────────────────────┗┛───]]

local dev = os.date("┇💎﹝A R H   S C R I P T﹞💎\n┇👑 Azka Raditya Hermawan\n┇📅 %A, %d %B %Y | ⏰ %I:%M %p")
---------------------------------------------------------------------------------------------------------
-- 🌐 Bahasa
lang = "en" -- Default bahasa
local teks = {
["cache_cleared"] = { id = "👑 Azka Raditya Hermawan 👑", en = "👑 Azka Raditya Hermawan 👑"},
  ["addr_not_found"] = {id = "❌ Alamat tidak ditemukan, segera restart game, jika dilanjutkan tidak bisa tukar hadiah",en = "❌ Address not found, please restart the game immediately, if continued you will not be able to exchange rewards"},
  ["addr_refreshed"] = {id = "✅ Klik ikon GG untuk lanjut...",en = "✅ Click GG icon to continue..." },
  ["mode_reset"] = {id = "🔄 Mode berhasil direset.\nKembali ke Menu Utama.",en = "🔄 Mode has been reset.\nReturning to Main Menu."},
  ["fn_not_defined"] = {id = "⚠️ Fungsi getAddr() tidak ditemukan.",en = "⚠️ getAddr() function is not defined."},
	
  ["main_menu"] = {id="📜 Menu Utama", en="📜 Main Menu"},
  ["free_script"] = {id="🔓 • Skrip Gratis", en="🔓• Free Script"},
  ["premium_script"] = {id="💎 • Skrip Premium", en="💎 • Premium Script"},
  ["buy_key"] = {id="🔑 • Beli Kunci Premium", en="🔑 • Buy Premium Key"},
  ["exit_script"] = {id="❌ • Keluar Skrip", en="❌ • Exit Script"},
  
  ----Menu Free----
  
  ["free_menu_freemenu"]      = {id="📜 Menu Skrip Gratis", en="📜 Free Script Menu"},
["unlock_season_freemenu"]  = {id="🌟 • Buka Season Pass", en="🌟 • Unlock Season Pass"},
["freeze_rewards_freemenu"] = {id="❄️ • Bekukan Hadiah", en="❄️ • Freeze Rewards"},
["change_reward_freemenu"]  = {id="🎁 • Ubah Hadiah", en="🎁 • Change Rewards"},
["misc_mods_freemenu"]      = {id="🛠️ • Modifikasi Lainnya", en="🛠️ • Other Mods"},
["script_info_freemenu"]    = {id="ℹ️ • Informasi Skrip", en="ℹ️ • Script Information"},
  ["exit_script_freemenu"] = {id="❌ • Keluar Skrip", en="❌ • Exit Script"},
  
  ----GP Free----
  
["gold_not_found"] = {id = "⚠️ Tiket emas tidak ditemukan",en = "⚠️ Gold ticket not found"},
  ["addr_not_found"] = {id = "⚠️ Alamat tidak ditemukan",en = "⚠️ Address not found"},
  ["gold_enabled"] = {id = "✅ Tiket Emas diaktifkan!",en = "✅ Gold Pass activated!"},
	
  ----Freeze menu----
  
  ["freeze_info_title"]      = {id = "❄️ Informasi Pembekuan ❄️", en = "❄️ Freeze Information ❄️"},
  ["freeze_info_question"]   = {id = "🎁 Bekukan hadiah sekarang?", en = "🎁 Freeze rewards now?"},
  ["freeze_info_explain"]    = {id = "✅ Fitur ini membuka hadiah dan penukaran lainnya.", en = "✅ This feature unlocks rewards and other exchanges."},
  ["freeze_continue"]        = {id = "🚀 Lanjutkan", en = "🚀 Continue"},
  ["freeze_cancel"]          = {id = "❌ Batal", en = "❌ Cancel"},
  ["freeze_fail_title"]      = {id = "❌ Gagal melakukan pembekuan!\n\nAlamat target tidak ditemukan.", en = "❌ Failed to apply freeze!\n\nTarget address not found."},
  ["freeze_active_toast"]    = {id = "✅ Pembekuan hadiah aktif", en = "✅ Reward freeze active"},
	
  ----Change Reward Free----
  
["smelt_ingots_changefree"]       = {id = "🪙 • Batangan Logam", en = "🪙 • Metal Ingots"},
["mining_tools1_changefree"]      = {id = "⛏️ • Alat Tambang", en = "⛏️ • Mining Tools"},
["redeem_coupons_changefree"]     = {id = "🎟️ • Klaim Kupon", en = "🎟️ • Claim Coupons"},
["add_gems_changefree"]           = {id = "💎 • Tambah Permata", en = "💎 • Add Gems"},
["match3_boosters_changefree"]    = {id = "🧩 • Booster Match-3", en = "🧩 • Match-3 Boosters"},
["community_materials_changefree"] = {id = "🏗️ • Material Komunitas", en = "🏗️ • Community Materials"},
["claim_perks_changefree"]        = {id = "🎉 • Klaim Keuntungan", en = "🎉 • Claim Perks"},
  ["go_back_changefree"] = {id = "❌ • Kembali",en = "❌ • Go Back"},
  
  ----Aneka Ragam Hack---
  
  ["menu4_opt1_hackfree"] = {id = "🚁 • T-Cash dari Helikopter", en = "🚁 • T-Cash from Helicopter"},
["menu4_opt2_hackfree"] = {id = "🌾 • EXP dari Panen Gandum", en = "🌾 • EXP from Wheat Harvest"},
["menu4_opt3_hackfree"] = {id = "🎁 • Kotak Pabrik Gratis", en = "🎁 • Free Factory Boxes"},
["menu4_opt4_hackfree"] = {id = "🚧 • Bekukan Ekspansi Kota", en = "🚧 • Freeze City Expansion"},
["menu4_opt5_hackfree"] = {id = "🏭 • Peleburan Instan di Pabrik", en = "🏭 • Instant Smelting"},
["menu4_opt6_hackfree"] = {id = "🐮 • Produksi Peternakan Cepat", en = "🐮 • Fast Animal Production"},
["menu4_opt7_hackfree"] = {id = "⚡ • Isi Ulang Energi Petualangan", en = "⚡ • Refill Adventure Energy"},
  ["menu_back_hackfree"] = {id = "❌ • Kembali",en = "❌ • Go Back"},
  
  ----Premium Menu----
  
["premium_menu_premenu"]     = {id = "📜 Menu Skrip Premium", en = "📜 Premium Script Menu"},
["special_hack_premenu"]     = {id = "💠 • Menu Spesial", en = "💠 • Special Menu"},
["unlock_season_premenu"]    = {id = "🌟 • Buka Season Pass", en = "🌟 • Unlock Season Pass"},
["limited_events_premenu"]   = {id = "🎯 • Event Terbatas", en = "🎯 • Limited-Time Events"},
["skip_time_premenu"]        = {id = "⏩ • Lewati Waktu", en = "⏩ • Skip Time"},
["farming_products_premenu"] = {id = "🚜 • Produk Pertanian", en = "🚜 • Farming Products"},
["misc_mods_premenu"]        = {id = "🛠️ • Modifikasi Lainnya", en = "🛠️ • Other Mods"},
["script_info_premenu"]      = {id = "ℹ️ • Informasi Skrip", en = "ℹ️ • Script Information"},
["exit_script_premenu"] = {id="❌ • Keluar Skrip", en="❌ • Exit Script"},
  
  ----Menu Hack RW Premium----
  
  ["unlock_pass_rwpremium"]     = {id = "🌟 • Buka Season Pass", en = "🌟 • Unlock Season Pass"},
["freeze_rewards_rwpremium"]  = {id = "❄️ • Bekukan Hadiah", en = "❄️ • Freeze Rewards"},
["skins_decor_rwpremium"] = {id = "🎭 • Kostum, Avatar & Dekorasi",en = "🎭 • Skins, Avatars & Decorations"},
["add_cash_rwpremium"]        = {id = "💵 • Tambah T-Cash", en = "💵 • Add T-Cash"},
["boosters_rwpremium"]        = {id = "🚀•  Booster & Power-Up", en = "🚀 • Boosters & Power-Ups"},
["redeem_coupon_rwpremium"]   = {id = "🎟️ • Klaim Kupon", en = "🎟️ • Claim Coupons"},
["add_gems_rwpremium"]        = {id = "💎 • Tambah Permata", en = "💎 • Add Gems"},
["special_product_rwpremium"] = {id = "🛍️ • Produk Alat-Alat",en = "🛍️ • Tool Products"},
["claim_bonus_rwpremium"]     = {id = "🎉 • Klaim Keuntungan", en = "🎉 • Claim Perks"},
  ["go_back_rwpremium"] = {id = "❌ • Kembali", en = "❌ • Go Back"},
  
----Tambah Cash----

["add_tcash_tambahduit"]       = {id = "Tambah T-Cash", en = "Add T-Cash"},
["add_coins_tambahduit"]       = {id = "Tambah Koin", en = "Add Coins"},
["add_regatta_tambahduit"]     = {id = "Tambah Token Regatta", en = "Add Regatta Token"},
["add_clover_tambahduit"]      = {id = "Tambah Semanggi", en = "Add Clover"},
["add_statuecoins_tambahduit"] = {id = "Tambah Koin Patung", en = "Add Statue Coin"},
["go_back_tambahduit"]         = {id = "Kembali", en = "Go Back"},

["tcash_tambahduit"]   = {id = "💵 T-Cash", en = "💵 T-Cash"},
["coin_tambahduit"]    = {id = "💰 Koin", en = "💰 Coins"},
["regatta_tambahduit"] = {id = "🪙 Token Regatta", en = "🪙 Regatta Token"},
["clover_tambahduit"]  = {id = "🍀 Semanggi", en = "🍀 Clover"},
["statue_tambahduit"]  = {id = "🗽 Koin Patung", en = "🗽 Statue Coin"},
["invalid_tambahduit"] = {id = "🚫 Input tidak valid.\nMasukkan angka antara ", en = "🚫 Invalid input.\nEnter a number between "},
["set_to_tambahduit"]  = {id = " diatur menjadi ", en = " set to "},
["applied_tambahduit"] = {id = " diterapkan ✅", en = " applied ✅"},
  
  ----menu boost----
  
  ["match3_boosters_menuboost"]    = {id = "Booster Match-3", en = "Match-3 Boosters"},
["lab_boosters_menuboost"]       = {id = "Booster Lab", en = "Lab Boosters"},
["go_back_menuboost"]            = {id = "Kembali", en = "Go Back"},

----event boost----

  ["rainbow_ball_eventboost"]       = {id = "Bola Pelangi", en = "Rainbow Ball"},
["bomb_eventboost"]               = {id = "Bom", en = "Bomb"},
["rocket_eventboost"]             = {id = "Roket", en = "Rocket"},
["jackhammer_eventboost"]         = {id = "Jackhammer", en = "Jackhammer"},
["hydrant_eventboost"]            = {id = "Hidran", en = "Hydrant"},
["gloves_eventboost"]             = {id = "Sarung Tangan", en = "Gloves"},

["infinite_lives_30_eventboost"]  = {id = "30 Hari Nyawa Tak Terbatas", en = "30-Day Infinite Lives"},
["double_points_30_eventboost"]   = {id = "30 Hari Poin Ganda", en = "30-Day Double Points"},
["rainbow_ball_30_eventboost"]    = {id = "30 Hari Bola Pelangi", en = "30-Day Rainbow Ball"},
["bomb_30_eventboost"]            = {id = "30 Hari Bom", en = "30-Day Bomb"},
["rocket_30_eventboost"]          = {id = "30 Hari Roket", en = "30-Day Rocket"},

["energy_adventure_eventboost"]   = {id = "Energi Petualangan", en = "Adventure Energy"},
["exploder_adventure_eventboost"] = {id = "Peledak Petualangan", en = "Exploder Adventure"},

["go_back_eventboost"]            = {id = "Kembali", en = "Go Back"},

["booster_amount_eventboost"]     = {id = "Masukkan jumlah booster", en = "Enter booster amount"},
["no_input_eventboost"]           = {id = "⚠️ Tidak ada jumlah dimasukkan.\nOperasi dibatalkan.", en = "⚠️ No amount entered.\nOperation cancelled."},
["invalid_range_eventboost"]      = {id = "🚫 Input tidak valid.\nMasukkan angka antara 1 antara", en = "🚫 Invalid input.\nEnter a number between 1 and"},
["template_not_found_eventboost"] = {id = "❌ Referensi tidak ditemukan.\nTidak dapat menerapkan", en = "❌ Reference not found.\nCannot apply"},
["template_copied_eventboost"]    = {id = "📋 Template disalin", en = "📋 Template copied"},
["booster_applied_eventboost"]    = {id = "Booster diterapkan:", en = "Booster applied:"},
["success_30d_eventboost"]        = {id = "Booster 30 Hari diterapkan", en = "30-Day Booster applied."},

["rainbow_amount_eventboost"]     = {id = "Masukkan jumlah Bola Pelangi", en = "Enter Rainbow Ball amount"},
["bomb_amount_eventboost"]        = {id = "Masukkan jumlah Bom", en = "Enter Bomb amount"},
["rocket_amount_eventboost"]      = {id = "Masukkan jumlah Roket", en = "Enter Rocket amount"},
["jack_amount_eventboost"]        = {id = "Masukkan jumlah Jackhammer", en = "Enter Jackhammer amount"},
["hydrant_amount_eventboost"]     = {id = "Masukkan jumlah Hidran", en = "Enter Hydrant amount"},
["gloves_amount_eventboost"]      = {id = "Masukkan jumlah Sarung Tangan", en = "Enter Gloves amount"},

["adventure_energy_prompt_eventboost"]  = {id = "⚡ Masukkan jumlah Energi Petualangan [1–100000]:", en = "⚡ Enter Adventure Energy amount [1–100000]:"},
["exploder_adventure_prompt_eventboost"]= {id = "💥 Masukkan jumlah Peledak Petualangan [1–5000]:", en = "💥 Enter Exploder Adventure amount [1–5000]:"},

["invalid_value_energy_eventboost"]   = {id = "🚫 Input tidak valid.\nMasukkan angka antara 1 antara 100000.", en = "🚫 Invalid input.\nEnter a number between 1 and 100000."},
["invalid_value_exploder_eventboost"] = {id = "🚫 Input tidak valid.\nMasukkan angka antara 1 antara 5000.", en = "🚫 Invalid input.\nEnter a number between 1 and 5000."},

["toast_energy_applied_eventboost"]   = {id = "⚡ Energi Petualangan disetel ke: %d ✅", en = "⚡ Adventure Energy set to: %d ✅"},
["toast_exploder_applied_eventboost"] = {id = "💥 Peledak Petualangan disetel ke: %d ✅", en = "💥 Exploder Adventure set to: %d ✅"},

----lab boost----

["profitable_flight_labboost"]     = {id = "Penerbangan Menguntungkan", en = "Profitable Flight"},
["rich_fields_labboost"]           = {id = "Ladang Subur", en = "Rich Fields"},
["record_demand_labboost"]         = {id = "Permintaan Tinggi", en = "Record Demand"},
["busy_trade_labboost"]            = {id = "Perdagangan Sibuk", en = "Busy Trade"},
["smart_navigation_labboost"]      = {id = "Navigasi Cerdas", en = "Smart Navigation"},
["active_cooperation_labboost"]    = {id = "Kerja Sama Aktif", en = "Active Cooperation"},
["efficient_smelting_labboost"]    = {id = "Peleburan Efisien", en = "Efficient Smelting"},
["vibrant_market_labboost"]        = {id = "Pasar Ramai", en = "Vibrant Market"},
["high_speed_production_labboost"] = {id = "Produksi Kecepatan Tinggi", en = "High-Speed Production"},
["super_harvest_labboost"]         = {id = "Panen Super", en = "Super Harvest"},
["advanced_farming_labboost"]      = {id = "Pertanian Lanjutan", en = "Advanced Farming"},
["generous_customers_labboost"]    = {id = "Pelanggan Dermawan", en = "Generous Customers"},
["see_the_light_labboost"]         = {id = "Melihat Cahaya", en = "See the Light"},
["shortcut_labboost"]              = {id = "Jalur Pintas", en = "Shortcut"},
["extra_hands_labboost"]           = {id = "Bantuan Tambahan", en = "Extra Pair of Hands"},
["spacious_barn_labboost"]         = {id = "Lumbung Luas", en = "Spacious Barn"},
["large_request_labboost"]         = {id = "Permintaan Besar", en = "Large Request"},
["favorable_voyage_labboost"]      = {id = "Pelayaran Menguntungkan", en = "Favorable Voyage"},
["go_back_labboost"]               = {id = "Kembali", en = "Go Back"},

["no_match_labboost"]              = {id = "❌ Nilai tidak ditemukan. Tidak dapat menerapkan ", en = "❌ No matching value found. Cannot apply "},
["enter_amount_labboost"]          = {id = "Masukkan jumlah booster [1–500]:", en = "Enter booster amount [1–500]:"},
["no_amount_labboost"]             = {id = "⚠️ Tidak ada jumlah yang dimasukkan.\nOperasi dibatalkan.", en = "⚠️ No amount entered.\nOperation cancelled."},
["invalid_input_labboost"]         = {id = "🚫 Input tidak valid.\nMasukkan angka antara 1 antara 500.", en = "🚫 Invalid input.\nEnter a number between 1 and 500."},
["invalid_amount_labboost"]        = {id = "🚫 Input tidak valid.\nMasukkan angka antara 1 antara 500.", en = "🚫 Invalid input.\nEnter a number between 1 and 500."},
["ref_not_found_labboost"]         = {id = "❌ Referensi tidak ditemukan. Tidak dapat menerapkan ", en = "❌ Reference not found. Cannot apply "},
["unnamed_booster_labboost"]       = {id = "Pelayaran Menguntungkan", en = "Favorable Voyage"},

-- Alias/shortcut (lab1–lab17) → diseragamkan
["lab1_labboost"]  = {id = "Penerbangan Menguntungkan", en = "Profitable Flight"},
["lab2_labboost"]  = {id = "Ladang Subur", en = "Rich Fields"},
["lab3_labboost"]  = {id = "Permintaan Tinggi", en = "Record Demand"},
["lab4_labboost"]  = {id = "Perdagangan Sibuk", en = "Busy Trade"},
["lab5_labboost"]  = {id = "Navigasi Cerdas", en = "Smart Navigation"},
["lab6_labboost"]  = {id = "Kerja Sama Aktif", en = "Active Cooperation"},
["lab7_labboost"]  = {id = "Peleburan Efisien", en = "Efficient Smelting"},
["lab8_labboost"]  = {id = "Pasar Ramai", en = "Vibrant Market"},
["lab9_labboost"]  = {id = "Produksi Kecepatan Tinggi", en = "High-Speed Production"},
["lab10_labboost"] = {id = "Panen Super", en = "Super Harvest"},
["lab11_labboost"] = {id = "Pertanian Lanjutan", en = "Advanced Farming"},
["lab12_labboost"] = {id = "Pelanggan Dermawan", en = "Generous Customers"},
["lab13_labboost"] = {id = "Melihat Cahaya", en = "See the Light"},
["lab14_labboost"] = {id = "Jalur Pintas", en = "Shortcut"},
["lab15_labboost"] = {id = "Bantuan Tambahan", en = "Extra Pair of Hands"},
["lab16_labboost"] = {id = "Lumbung Luas", en = "Spacious Barn"},
["lab17_labboost"] = {id = "Permintaan Besar", en = "Large Request"},

----kuponpon----

["coupon_loader_kuponpon"]  = {id = "Kupon Pengisian Barang",  en = "Loader Coupon"},
["coupon_dealer_kuponpon"]  = {id = "Kupon Sewa Pedagang",      en = "Hire Dealer Coupon"},
["coupon_barn_kuponpon"]    = {id = "Kupon Upgrade Lumbung",    en = "Barn Upgrade Coupon"},
["coupon_city_kuponpon"]    = {id = "Kupon Perluasan Kota",     en = "City Expansion Coupon"},
["coupon_factory_kuponpon"] = {id = "Kupon Upgrade Pabrik",     en = "Factory Upgrade Coupon"},
["coupon_train_kuponpon"]   = {id = "Kupon Upgrade Kereta",     en = "Train Upgrade Coupon"},
["coupon_island_kuponpon"]  = {id = "Kupon Upgrade Pulau",      en = "Island Upgrade Coupon"},
["back_kuponpon"]           = {id = "Kembali",        en = "Go Back"},

["loader_coupon_kuponpon"]  = {id = "Masukkan jumlah Kupon Pengisian Barang", en = "Enter Loader Coupon amount"},
["dealer_coupon_kuponpon"]  = {id = "Masukkan jumlah Kupon Sewa Pedagang",    en = "Enter Hire Dealer Coupon amount"},
["barn_coupon_kuponpon"]    = {id = "Masukkan jumlah Kupon Upgrade Lumbung",  en = "Enter Barn Upgrade Coupon amount"},
["city_coupon_kuponpon"]    = {id = "Masukkan jumlah Kupon Perluasan Kota",   en = "Enter City Expansion Coupon amount"},
["factory_coupon_kuponpon"] = {id = "Masukkan jumlah Kupon Upgrade Pabrik",   en = "Enter Factory Upgrade Coupon amount"},
["train_coupon_kuponpon"]   = {id = "Masukkan jumlah Kupon Upgrade Kereta",   en = "Enter Train Upgrade Coupon amount"},
["island_coupon_kuponpon"]  = {id = "Masukkan jumlah Kupon Upgrade Pulau",    en = "Enter Island Upgrade Coupon amount"},
["no_amount_kuponpon"]      = {id = "⚠️ Tidak ada jumlah yang dimasukkan.\nOperasi dibatalkan.", en = "⚠️ No amount entered.\nOperation cancelled."},
["invalid_range_kuponpon"]  = {id = "🚫 Input tidak valid.\nMasukkan angka antara ", en = "🚫 Invalid input.\nEnter a number between "},

["Loader Coupon_kuponpon"]  = {id = "Kupon Pengisian Barang",   en = "Loader Coupon"},
["Hire Dealer Coupon_kuponpon"] = {id = "Kupon Sewa Pedagang",  en = "Hire Dealer Coupon"},
["Barn Upgrade Coupon_kuponpon"] = {id = "Kupon Upgrade Lumbung", en = "Barn Upgrade Coupon"},
["City Expansion Coupon_kuponpon"] = {id = "Kupon Perluasan Kota", en = "City Expansion Coupon"},
["Factory Upgrade Coupon_kuponpon"] = {id = "Kupon Upgrade Pabrik", en = "Factory Upgrade Coupon"},
["Train Upgrade Coupon_kuponpon"] = {id = "Kupon Upgrade Kereta", en = "Train Upgrade Coupon"},
["Island Upgrade Coupon_kuponpon"] = {id = "Kupon Upgrade Pulau", en = "Island Upgrade Coupon"},

  ----gem----
  
  ["orange_gem_gemgem"]        = {id ="Permata Jingga", en = "Orange Gem"},
  ["green_gem_gemgem"]         = {id ="Permata Hijau",en =  "Green Gem"},
  ["red_gem_gemgem"]           = {id ="Permata Merah",en =  "Red Gem"},
  ["go_back_gemgem"]           = {id ="Kembali", en = "Go Back"},

  ["no_input_gemgem"] = {id = "⚠️ Tidak ada jumlah yang dimasukkan.\nOperasi dibatalkan.",en = "⚠️ No amount entered.\nOperation cancelled."},
  ["invalid_input_gemgem"] = {id = "🚫 Input tidak valid.\nMasukkan angka antara 1 antara ",en = "🚫 Invalid input.\nEnter a number between 1 and "},
  ["enter_amount_gemgem"] = {id = "Masukkan jumlah",en = "Enter amount of"},
  ["reward_set_gemgem"] = {id = "Hadiah diatur ke:",en = "reward set to:"},
  ["orange_gem_gemgem"] = {id = "Permata Jingga", en = "Orange Gem"},
  ["green_gem_gemgem"]  = {id = "Permata Hijau",  en = "Green Gem"},
  ["red_gem_gemgem"]    = {id = "Permata Merah",  en = "Red Gem"},

  ----material----
  
  ["metal_ingots_materialyal"]    = {id = "Batangan Logam", en = "Metal Ingots"},
["mining_tools_materialyal"]    = {id = "Alat Tambang", en = "Mining Tools"},
["community_tools_materialyal"] = {id = "Alat Bangunan Komunitas", en = "Community Building Tools"},
["barn_tools_materialyal"]      = {id = "Alat Upgrade Lumbung", en = "Barn Upgrade Tools"},
["expansion_tools_materialyal"] = {id = "Alat Perluasan Kota", en = "City Expansion Tools"},
["go_back_materialyal"]         = {id = "Kembali", en = "Go Back"},

----batangan----

["bronze_ingot_batangtang"]   = {id = "Batangan Perunggu", en = "Bronze Ingot"},
["silver_ingot_batangtang"]   = {id = "Batangan Perak",    en = "Silver Ingot"},
["gold_ingot_batangtang"]     = {id = "Batangan Emas",     en = "Gold Ingot"},
["platinum_ingot_batangtang"] = {id = "Batangan Platinum", en = "Platinum Ingot"},
["go_back_batangtang"]        = {id = "Kembali", en = "Go Back"},

 ["enter_amount_batangtang"] = {id = "Masukkan jumlah batangan", en = "Enter amount ingots"},
  ["invalid_input_batangtang"] = {id = "🚫 Input tidak valid.\nMasukkan angka antara", en = "🚫 Invalid input.\nEnter a number between"},
  ["invalid_range_batangtang"] = {id = "Masukkan angka antara", en = "Please enter a number between"},
  ["no_input_batangtang"] = {id = "⚠️ Tidak ada jumlah yang dimasukkan.\nOperasi dibatalkan.", en = "⚠️ No amount entered.\nOperation cancelled."},
  ["set_to_batangtang"] = {id = "diset ke", en = "set to"},
  ["bronze_batangtang"] = {id = "Batang Perunggu", en = "Bronze Ingots"},
  ["silver_batangtang"] = {id = "Batang Perak",    en = "Silver Ingots"},
  ["gold_batangtang"]   = {id = "Batang Emas",     en = "Gold Ingots"},
  ["platinum_batangtang"] = {id = "Batang Platinum", en = "Platinum Ingots"},

----gali----

  ["pickaxe_macul"] = {id = "Beliung", en = "Pickaxe"},
  ["tnt_macul"] = {id = "TNT", en = "TNT"},
  ["dynamite_macul"] = {id = "Dinamit", en = "Dynamite"},
  ["x2_ore_bonus_macul"] = {id = "Bonus Bijih ×2 (30 Hari)", en = "×2 Ore Bonus (30 Days)"},
  ["go_back_macul"] = {id = "Kembali", en = "Go Back"},

  ["mining_prompt_macul"] = {id = "Masukkan jumlah alat tambang",en = "Enter amount mining tools"},
  ["cancel_input_macul"] = {id = "⚠️ Tidak ada jumlah yang dimasukkan.\nOperasi dibatalkan.",en = "⚠️ No amount entered.\nOperation cancelled."},
  ["invalid_input_macul"] = {id = "🚫 Masukan tidak valid.\nMasukkan angka antara",en = "🚫 Invalid input.\nPlease enter a number between"},
  ["not_found_macul"] = {id = "❌ Alamat tidak ditemukan.\nCoba mulai ulang game-nya.",en = "❌ Address not found.\nTry restarting the game."},
  ["success_bonus_macul"] = {id = "berhasil diaktifkan!",en = "successfully activated!"},
  ["pickaxes_macul"] = {id = "Beliung", en = "Pickaxes"},
  ["tnt_macul"] = {id = "TNT", en = "TNT"},
  ["dynamite_macul"] = {id = "Dinamit", en = "Dynamite"},
  ["ore_bonus_macul"] = {id = "Bonus Tambang ×2 (30 Hari)", en = "30-Day ×2 Ore Bonus"},

----material gedung----

["glass_matdung"]         = {id = "Kaca", en = "Glass"},
["bricks_matdung"]        = {id = "Bata", en = "Bricks"},
["slab_matdung"]          = {id = "Lempengan", en = "Slab"},
["jackhammer_matdung"]    = {id = "Bor Beton", en = "Jackhammer"},
["electric_saw_matdung"]  = {id = "Gergaji Listrik", en = "Electric Saw"},
["drill_matdung"]         = {id = "Bor", en = "Drill"},
["back_matdung"]          = {id = "Kembali", en = "Go Back"},

["input_construct_matdung"] = {id = "Masukkan jumlah {label} [1–{max}]:",en = "Enter {label} amount [1–{max}]:"},
["no_amount_matdung"] = {id = "⚠️ Tidak ada jumlah yang dimasukkan.\nOperasi dibatalkan.",en = "⚠️ No amount entered.\nOperation cancelled."},
["invalid_input_matdung"] = {id = "🚫 Input tidak valid.\nMasukkan angka 1 antara {max}.",en = "🚫 Invalid input.\nPlease enter a number between 1 and {max}."},
["reward_set_matdung"] = {id = "{emoji} {label} diatur ke: {amount} ✅",en = "{emoji} {label} reward set to: {amount} ✅"},
["glass_matdung"] = {id = "Kaca", en = "Glass"},
["bricks_matdung"] = {id = "Batu Bata", en = "Bricks"},
["slabs_matdung"] = {id = "Lempengan", en = "Slabs"},
["jackhammer_matdung"] = {id = "Bor Beton", en = "Jackhammer"},
["saw_matdung"] = {id = "Gergaji Listrik", en = "Electric Saw"},
["drill_matdung"] = {id = "Bor", en = "Drill"},

----alat gudang----

["hammer_gudangdang"] = {id = "Palu", en = "Hammer"},
["nail_gudangdang"] = {id = "Paku", en = "Nail"},
["red_paint_gudangdang"] = {id = "Cat Merah", en = "Red Paint"},
["go_back_gudangdang"] = {id = "Kembali", en = "Go Back"},

  ["hammers_gudangdang"] = {id = "Palu", en = "Hammers"},
  ["nails_gudangdang"] = {id = "Paku", en = "Nails"},
  ["red_paint_gudangdang"] = {id = "Cat Merah", en = "Red Paint"},
  ["enter_amount_gudangdang"] = {id = "Masukkan jumlah [1-5000]", en = "Enter amount [1-5000]"},
  ["invalid_input_gudangdang"] = {id = "🚫 Input tidak valid.\nMasukkan angka antara 1 dan 5000.", en = "🚫 Invalid input.\nPlease enter a number between 1 and 5000."},
  ["barn_reward_set_gudangdang"] = {id = "Hadiah lumbung diatur menjadi", en = "Barn reward set to"},

----alat luas----

  ["saw_waswas"]         = { id = "Gergaji", en = "Saw" },
  ["axe_waswas"]         = { id = "Kapak", en = "Axe" },
  ["shovel_waswas"]      = { id = "Sekop", en = "Shovel" },
  ["go_back_waswas"]     = { id = "Kembali", en = "Go Back" },
  
    ["enter_amount_waswas"] = {id = "Masukkan jumlah alat perluasan",en = "Enter amount expansion tools"},
    ["invalid_input_waswas"] = {id = "🚫 Input tidak valid.\nMasukkan angka antara 1 antara 5000.",en = "🚫 Invalid input.\nPlease enter a number between 1 and 5000."},
    ["reward_set_waswas"] = {id = "Hadiah diset ke",en = "Reward set to"},
    ["saw_waswas"] = {id = "Gergaji", en = "Saw"},
    ["axe_waswas"] = {id = "Kapak", en = "Axe"},
    ["shovel_waswas"] = {id = "Sekop", en = "Shovel"},

----tunjangan----

["express_plane_keuntungan"] = { id = "✈️ • Pengiriman Pesawat Ekspres", en = "✈️ • Express Plane Delivery" },
["instant_crop_keuntungan"]  = { id = "🌾 • Panen Tanaman Instan", en = "🌾 • Instant Crop Harvest" },
["fast_farm_keuntungan"]     = { id = "🐄 • Produksi Pertanian Cepat", en = "🐄 • Fast Farm Production" },
["instant_build_keuntungan"] = { id = "🏗️ • Konstruksi Bangunan Instan", en = "🏗️ • Instant Building Construction" },
["unlimited_barn_keuntungan"] = { id = "🏡 • Kapasitas Gudang Tak Terbatas", en = "🏡 • Unlimited Barn Capacity" },
["train_booster_keuntungan"] = { id = "⏱️ • Booster Waktu Kereta", en = "⏱️ • Train Time Booster" },
["double_train_keuntungan"]  = { id = "🚃 • Gerbong Kereta Ganda", en = "🚃 • Double Train Carriages" },
["go_back_keuntungan"]       = { id = "❌ • Kembali", en = "❌ • Go Back" },

  ["perk_express_plane_keuntungan"] = {id = "Pengiriman Pesawat Ekspres", en = "Express Plane Delivery"},
  ["perk_instant_crop_keuntungan"] = {id = "Panen Tanaman Instan", en = "Instant Crop Harvest"},
  ["perk_rapid_farm_keuntungan"] = {id = "Produksi Peternakan Cepat", en = "Rapid Farm Production"},
  ["perk_instant_building_keuntungan"] = {id = "Konstruksi Bangunan Instan", en = "Instant Building Construction"},
  ["perk_unlimited_barn_keuntungan"] = {id = "Kapasitas Lumbung Tak Terbatas", en = "Unlimited Barn Capacity"},
  ["perk_train_boost_keuntungan"] = {id = "Booster Waktu Kereta", en = "Train Time Booster"},
  ["perk_double_train_keuntungan"] = {id = "Gerbong Kereta Ganda", en = "Double Train Carriages"},
  ["enter_barn_boost_keuntungan"] = {id = "Masukkan persentase boost lumbung (1-20000):", en = "Enter barn boost percentage (1-20000):"},
  ["source_not_found_keuntungan"] = {id = "❌ Struktur sumber tidak ditemukan.", en = "❌ Source structure not found."},
  ["perk_applied_keuntungan"] = {id = "perk berhasil diterapkan!", en = "perk applied!"},
  
  ----spesial menu----
    
    ["option1_spesial"] = {id = "🌊 • Selesaikan Tugas Secara Otomatis", en = "🌊 • Auto-Complete Tasks"},
["option2_spesial"] = {id = "👍 • Like Kota Tanpa Batas", en = "👍 • Unlimited City Likes"},
    ["back_spesial"] = {id = "❌ • Kembali", en = "❌ • Go Back"},
    
    ----regata menu----

  ["title_pilih_poin"] = {id = "Pilih jumlah poin regata:",en = "Select regatta point amount:"},
  ["alert_pilih_dulu"] = {id = "⚠️ Kamu harus memilih jumlah poin terlebih dahulu!",en = "⚠️ You must select a point amount first!"},
  ["alert_tidak_ditemukan"] = {id = "⚠️ Tidak ditemukan blok regata.",en = "⚠️ No regatta block found."},
  ["alert_tidak_valid"] = {id = "⚠️ Tidak ada blok regata yang valid.",en = "⚠️ No valid regatta block found."},
  ["alert_berhasil_prefix"] = {id = "✅ Jumlah blok regata diperbarui:",en = "✅ Regatta blocks updated:"},
  ["alert_berhasil_suffix"] = {id = "⭐ Poin baru:",en = "⭐ New points:"},
  ["toast_berhasil"] = {id = "🎯 Poin regata berhasil diperbarui!",en = "🎯 Regatta points successfully updated!"},

  ["promptPoints_regata"] = {id = "⭐ Masukkan Jumlah Poin Regata (150–300):",en = "⭐ Enter Regatta Points Amount (150–300):"},
  ["promptEnable_regata"] = {id = "✅ Aktifkan edit poin?",en = "✅ Enable point editing?"},
  ["cancel_regata"] = {id = "❌ Operasi dibatalkan oleh pengguna.",en = "❌ Operation canceled by user."},
  ["invalidPoints_regata"] = {id = "⚠️ Jumlah poin tidak valid!\n\nMasukkan nilai antara 150 hingga 300.",en = "⚠️ Invalid point value!\n\nPlease enter a value between 150 and 300."},
  ["noData_regata"] = {id = "⚠️ Tidak dapat menemukan data regata aktif.\n\n💡 Silakan ambil atau mulai tugas regata terlebih dahulu di dalam game, lalu jalankan kembali skrip ini.",en = "⚠️ Unable to find active regatta data.\n\n💡 Please start or take a regatta task in-game, then run this script again."},
  ["successTitle_regata"] = {id = "🎉 Regata berhasil diperbarui!",en = "🎉 Regatta updated successfully!"},
  ["successBody_regata"] = {id = "⭐ Poin Regata telah diatur ke: ",en = "⭐ Regatta points have been set to: "},
  ["toast_regata"] = {id = "🎉 Regata berhasil diperbarui!",en = "🎉 Regatta updated successfully!"},

  ----boom like----
  
  ["cancel_boomlike"]             = {id="❌ Dibatalkan.", en="❌ Cancelled."},
  ["invalidInput_boomlike"]       = {id="❌ Input tidak valid.", en="❌ Invalid input."},
  ["initialNotFound_boomlike"]    = {id="❌ Data awal tidak ditemukan.", en="❌ Initial data not found."},
  ["pleaseLike_boomlike"]         = {id="📌 Silakan like kota.\nSetelah selesai, buka ikon GameGuardian untuk melanjutkan.",en="📌 Please like the city.\nOnce done, open the GameGuardian icon to continue."},
  ["likesNotIncrease_boomlike"]   = {id="❌ Likes tidak bertambah atau input tidak valid.", en="❌ Likes did not increase or invalid input."},
  ["refineFailed_boomlike"]       = {id="❌ Refine gagal, data tidak ditemukan.", en="❌ Refine failed, data not found."},
  ["extraSearchFailed_boomlike"]  = {id="❌ Pencarian extra gagal, data tidak ditemukan.", en="❌ Extra search failed, data not found."},
  ["refine176Failed_boomlike"]    = {id="❌ Refine gagal.", en="❌ Refine failed."},
  ["likesFrozen_boomlike"]        = {id="✅ Likes berhasil dibekukan", en="✅ Likes successfully frozen"},
  ["promptLevel_boomlike"]        = {id="📊 Masukkan level kota:", en="📊 Enter city level:"},
  ["promptLikeStart_boomlike"]    = {id="👍 Masukkan jumlah likes saat ini:", en="👍 Enter current likes:"},
  ["promptLikeNew_boomlike"]      = {id="👍 Masukkan jumlah likes baru:", en="👍 Enter new like count:"},
  
  ----menu event----
  
  ["menu2_add_points_menuipen"]      = {id="🏆 • Tambah Poin Piala Ernie", en="🏆 • Add Ernie Cup Points"},
["menu2_refill_energy_menuipen"]   = {id="⚡ • Isi Ulang Energi Petualangan", en="⚡ • Refill Adventure Energy"},
["menu2_free_ore_menuipen"]        = {id="👑 • Penguasa Tambang (Poin Gratis)", en="👑 • Ruler of the Mine (Free Points)"},
["menu2_freeze_treasure_menuipen"] = {id="🏴‍☠️ • Hapus Kartu Hitam Bajak Laut", en="🏴‍☠️•  Remove Pirate Black Card"},
  ["menu_back_menuipen"]             = {id="❌ • Kembali", en="❌ • Go Back"},
  
  ----cup ernot----
  
  ["alertMinPoint_ernot"]      = {id="⚠️ Lihat jumlah poin, minimal 1 poin untuk ditambahkan.", en="⚠️ Check the point amount, at least 1 point to add."},
  ["invalidInput_ernot"]       = {id="🚫 Input tidak valid.", en="🚫 Invalid input."},
  ["dataNotFound_ernot"]       = {id="❌ Data Ernie Cup tidak ditemukan!\n\nSilakan restart game dan coba lagi.", en="❌ Ernie Cup data not found!\n\nPlease restart the game and try again."},
  ["pointsUpdated_ernot"]      = {id="🏆 Poin Ernie Cup berhasil diperbarui!\n\nCek event untuk verifikasi.", en="🏆 Ernie Cup points updated!\n\nCheck your event to verify."},
  ["toastSuccess_ernot"]       = {id="✅ Poin berhasil ditambahkan!", en="✅ Points successfully added!"},
  ["promptPoints_ernot"]       = {id="🏆 Masukkan Poin Ernie Cup:", en="🏆 Enter Ernie Cup Points:"},
  
  ----petir----

  ["adventure_energy_petir"] = {id = "Energi Petualangan",en = "Energy Adventure"},
  ["adventure_explosive_petir"] = {id = "Petualangan Peledak",en = "Explosive Adventure"},
  ["select_adventure_type_petir"] = {id = "Pilih jenis petualangan yang akan diubah:",en = "Select Adventure Type to Edit:"},
  ["operation_canceled_petir"] = {id = "Operasi dibatalkan.",en = "Operation canceled."},
  ["enter_energy_value_petir"] = {id = "Masukkan nilai energi baru [450–9999]:",en = "Enter new energy value [450–9999]:"},
  ["enter_explosive_value_petir"] = {id = "Masukkan nilai peledak baru [5–99]:",en = "Enter new explosive value [5–99]:"},
  ["energy_not_found_petir"] = {id = "Data Energi Petualangan tidak ditemukan!\n\nSilakan mulai ulang game dan coba lagi.",en = "Energy Adventure data not found!\n\nPlease restart the game and try again."},
  ["explosive_not_found_petir"] = {id = "Data Petualangan Peledak tidak ditemukan!\n\nSilakan mulai ulang game dan coba lagi.",en = "Explosive Adventure data not found!\n\nPlease restart the game and try again."},
  ["invalid_input_petir"] = {id = "Input tidak valid. Harap masukkan nilai antara",en = "Invalid input. Please enter a value between"},
  ["value_updated_petir"] = {id = "Nilai berhasil diperbarui!",en = "Value updated!"},
  ["updated_to_petir"] = {id = "diperbarui menjadi",en = "updated to"},
  ["check_event_petir"] = {id = "Silakan cek event di dalam game.",en = "Please check the event in game."},
  
  ----free ore poin----
  
  ["dataNotFound_ore"]       = {id="❌ Data 'Rule of the Mine' tidak ditemukan!\n\nSilakan restart game dan coba lagi.",en="❌ 'Rule of the Mine' data not found!\n\nPlease restart the game and try again."},
  ["toastUpdated_ore"]       = {id="🎉 'Rule of the Mine' berhasil diperbarui!", en="🎉 'Rule of the Mine' updated!"},
  ["alertApplied_ore"]       = {id="💸 Edit berhasil diterapkan!\n\nAmbil 1 ore untuk mengaktifkan auto-mining.",en="💸 Edit applied!\n\nTake 1 ore to activate auto-mining."},
  
  ----bajak laut----
  
  ["dataNotFound_bajak"] = {id = "❌ Harta Karun Bajak Laut tidak ditemukan!\n\nSilakan restart game dan coba lagi.",en = "❌ Pirate Treasure not found!\n\nPlease restart the game and try again."},
  ["toastFreeze_bajak"] = {id = "🏴‍☠️ Freeze Harta Karun Bajak Laut diterapkan pada entri!",en = "🏴‍☠️ Pirate Treasure freeze applied to entries!"},
  
  ----skip time----
  
  ["faster_arrivals_skiptime"]  = {id="⚙️ • Kedatangan Lebih Cepat", en="⚙️ • Faster Arrivals"},
["no_feed_timer_skiptime"]    = {id="🥣 • Pabrik Pakan Tanpa Waktu Tunggu", en="🥣 • No Feed Timer"},
["no_farm_timer_skiptime"]    = {id="⏳ • Hewan Ternak Tanpa Waktu Tunggu", en="⏳ • No Farm Timer"},
["no_dealer_rest_skiptime"]   = {id="🛒 • Dealer Tanpa Istirahat", en="🛒 • No Dealer Rest"},
["instant_foundry_skiptime"]  = {id="🏭 • Peleburan Instan", en="🏭 • Instant Foundry"},
["no_request_delay_skiptime"] = {id="⏱️ • Permintaan Tanpa Penundaan", en="⏱️ • No Request Delay"},
    ["go_back_skiptime"]          = {id="❌ • Kembali", en="❌ • Go Back"},

----skip time arrival----
    
  ["shipBoost_aripal"]     = {id="🚢 • Percepatan Kedatangan Kapal", en="🚢 • Ship Arrival Boost"},
["cargoAuto1_aripal"]    = {id="✈️ • Muat Pesawat Otomatis", en="✈️ • Cargo Plane Auto-Load"},
["heliAuto_aripal"]      = {id="🚁 • Helikopter Siap Otomatis", en="🚁 • Helicopter Auto-Ready"},
["trainBoost11_aripal"]  = {id="🚂 • Percepatan Kedatangan Kereta", en="🚂 • Train Arrival Boost"},
  ["goBack_aripal"]           = {id="❌ • Kembali", en="❌ • Go Back"},
  
    ----skip time kapal----
  
  ["no_ship_kpl"] = {id="❌ Data kapal tidak ditemukan.\n\nSilakan restart game dan coba lagi.", en="❌ No ship data found.\n\nPlease restart the game and try again."},
    ["fast_ship_on_kpl"] = {id="🚢  Percepatan kedatangan kapal berhasil diaktifkan!", en="🚢  Ship arrival boost activated successfully!"},

  ----skip time wawat----

  ["no_airplane_data_psw"] = {id = "❌ Data pesawat tidak ditemukan.\n\nSilakan restart game dan coba lagi.",en = "❌ No airplane data found.\n\nPlease restart the game and try again."},
  ["auto_cargo_success_psw"] = {id = "✈️ Muat pesawat otomatis berhasil diaktifkan!",en = "✈️ Cargo plane auto-load activated successfully!"},

  ----skip time helcop----

["helicopter_no_data_helkop"] = {id = "❌ Data permintaan helikopter tidak ditemukan.\n\nSilakan restart game dan coba lagi.",en = "❌ No helicopter request data found.\n\nPlease restart the game and try again."},
["helicopter_auto_ready_helkop"] = {id = "🚁 Helikopter siap otomatis diaktifkan!",en = "🚁 Helicopter auto-ready activated!"},
["helicopter_removed_success_helkop"] = {id = "✅ Permintaan helikopter berhasil dihapus.\n\nJika helikopter meminta lagi, cukup hapus dan atur ulang.",en = "✅ Helicopter orders removed successfully.\n\nIf a helicopter requests again, simply delete and reassign it."},

  ----skip time kereta----

    ["train_prompt_kreta"] = {id = {"⏰ Jam Kereta [1;5]", "⏱️ Menit Kereta [0;55]", "❄️ Bekukan Isi Gerbong"},en = {"⏰ Train Hours [1;5]", "⏱️ Train Minutes [0;55]", "❄️ Freeze Train Carriage Contents"}},
    ["cancelled_kreta"] = {id="⚠️ Dibatalkan.", en="⚠️ Cancelled."},
    ["invalid_input_kreta"] = {id="❌ Input tidak valid.\n\nMasukkan waktu antara 1–5 jam dan 0–55 menit.", en="❌ Invalid input.\n\nEnter valid time between 1–5 hours and 0–55 minutes."},
    ["no_timer_kreta"] = {id="❌ Timer Kereta tidak ditemukan.\nCoba sesuaikan waktu atau restart game.",en="❌ No Train Timer found.\nTry adjusting time or restart the game."},
    ["success_msg_kreta"] = {id="✅ Sukses!\n\n", en="✅ Success!\n\n"},
    ["train_updated_kreta"] = {id="✅ Kereta diperbarui.", en="✅ Train updated."},
    ["train_timer_frozen_kreta"] = {id="🚂 Timer kereta dibekukan selama ", en="🚂 Train timer frozen for "},
    ["carriage_frozen_kreta"] = {id="\n❄️ Gerbong juga dibekukan.", en="\n❄️ Carriages also frozen."},

  ----skip time  pabrik pakan----

  ["feed_not_found_pbrikkan"] = {id="🚫 Data Pabrik Pakan tidak ditemukan.\nSilakan restart game dan coba lagi.", en="🚫 Feed Factory data not found.\nPlease restart the game and try again."},
  ["no_slot_selected_pbrikkan"] = {id="⚠️ Slot tidak dipilih. Operasi dibatalkan.", en="⚠️ No slot selected. Operation canceled."},
  ["invalid_amount_pbrikkan"] = {id="❗ Jumlah tidak valid. Masukkan antara 3 dan 500.", en="❗ Invalid amount. Please enter between 3 and 500."},
  ["select_slots_pbrikkan"] = {id="🧃 Pilih slot pakan untuk diterapkan", en="🧃 Select feed slots to apply"},
  ["enter_amount_pbrikkan"] = {id="📦 Masukkan jumlah pakan [3–500]:", en="📦 Enter feed amount [3–500]:"},
  ["feed_updated_pbrikkan"] = {id="✅ Pabrik Pakan diperbarui", en="✅ Feed Factory updated"},
  
  ----ternak makan cepet----

  ["alert_feed_not_found_mkncpt"] = {id = "❌ Pola Fast Feed tidak ditemukan.\n\nSilakan masuk ke layar pemberian makan hewan dan coba lagi.",en = "❌ No Fast Feed pattern found.\n\nPlease enter the animal feeding screen and try again."},
  ["toast_fast_feed_applied_mkncpt"] = {id = "🐮 Fast Feeding berhasil diterapkan!",en = "🐮 Fast Feeding applied successfully!"},
  
    ----skip time dealer----
  
  ["dealer_cooldown_not_found_dealer"] = {id = "❌ Tidak ada cooldown Dealer yang ditemukan.\n\nSilakan restart game dan coba lagi.",en = "❌ No Dealer cooldown found to freeze.\n\nPlease restart the game and try again."},
["dealer_cooldown_frozen_dealer"] = {id = "🛒 Tanpa istirahat dealer berhasil dibekukan!",en = "🛒 No dealer rest successfully frozen!"},

----Foundry----

  ["no_smelter_data_foundry"] = {id = "🚫 Data peleburan tidak ditemukan.\n\nSilakan mulai ulang game dan coba lagi.",en = "🚫 No smelter data found.\n\nPlease restart the game and try again."},
  ["smelter_success_foundry"] = {id = "🏭 Peleburan instan berhasil diterapkan!",en = "🏭 Instant smelting applied successfully!"},

  ----skip time minta----

  ["stime6_no_values_minta"] = {id = "🚫 Tidak ada nilai cooldown request ditemukan.\n\nSilakan restart game dan coba lagi.",en = "🚫 No request cooldown values found.\n\nPlease restart the game and try again."},
  ["stime6_success_minta"] = {id = "⏱️ Delay permintaan berhasil dihapus!",en = "⏱️ Request delay removed successfully!"},

----menu farm----

["wheat_exp_menupenambah"]     = {id = "🌾 • Boost EXP Gandum", en = "🌾 • Wheat EXP Boost"},
["animal_count_menupenambah"]  = {id = "🐾 • Edit Jumlah Hewan", en = "🐾 • Edit Animal Count"},
["extra_ship_menupenambah"]    = {id = "📦 • Tambahan Barang Kapal", en = "📦 • Extra Ship Items"},
["more_requests_menupenambah"] = {id = "📬 • Permintaan Lebih Banyak", en = "📬 • More Requests"},
["market_unlim_menupenambah"]  = {id = "🛒 • Pasar Tanpa Batas", en = "🛒 • Unlimited Market"},
["back_menupenambah"]          = {id = "❌ • Kembali", en = "❌ • Go Back"},

----exp gandum----

  ["oder2_prompt_boostexp"] = {id = "⭐ Masukkan jumlah EXP:",en = "⭐ Enter EXP amount:"},
  ["oder2_cancel_boostexp"] = {id = "⚠️ Tidak ada EXP yang dimasukkan.\nOperasi dibatalkan.",en = "⚠️ No EXP entered.\nOperation cancelled."},
  ["oder2_notfound_boostexp"] = {id = "❌ Nilai tidak ditemukan.\nEXP Gandum gagal diterapkan.\nCoba lagi atau mulai ulang game!",en = "❌ No matching value found.\nWheat EXP could not be applied.\nPlease try again or restart the game!"},
  ["oder2_success_boostexp"] = {id = "🌾 EXP Gandum berhasil: ",en = "🌾 Wheat EXP applied: "},
  
  ----tambah binatang----

  ["animal_prompt_curr_hew"] = {id = "🐾 Masukkan jumlah hewan SAAT INI [3–9]:", en = "🐾 Enter CURRENT animal count [3–9]:"},
  ["animal_prompt_new_hew"]  = {id = "🆕 Masukkan jumlah BARU hewan [3–9]:", en = "🆕 Enter NEW animal count [3–9]:"},
  ["invalid_input_hew"]      = {id = "⚠️ Input tidak valid. Nilai harus antara 3 sampai 9.", en = "⚠️ Invalid input. Value must be between 3 and 9."},
  ["select_animals_hew"]     = {id = "🐾 Pilih jenis hewan yang ingin diubah:", en = "🐾 Select animal types to update:"},
  ["cancel_operation_hew"]   = {id = "❌ Operasi dibatalkan.", en = "❌ Operation canceled."},
  ["not_found_prefix_hew"]   = {id = "🚫 Data", en = "🚫"},
  ["not_found_suffix_hew"]   = {id = "tidak ditemukan.", en = "data not found."},
  ["updated_prefix_hew"]     = {id = "✅", en = "✅"},
  ["updated_suffix_hew"]     = {id = "jumlah diubah menjadi", en = "count updated to"},

  ["cow_hew"]       = {id = "🐄  Sapi", en = "🐄  Cow"},
  ["chicken_hew"]   = {id = "🐔  Ayam", en = "🐔  Chicken"},
  ["sheep_hew"]     = {id = "🐑  Domba", en = "🐑  Sheep"},
  ["bee_hew"]      = {id = "🐝  Lebah", en = "🐝  Bee"},
  ["pig_hew"]       = {id = "🐖  Babi", en = "🐖  Pig"},
  ["mushroom_hew"]  = {id = "🍄  Jamur", en = "🍄  Mushroom"},
  
  ----tambah buah kapal----
  
["ship_warning_palkapal"]   = {id = "⚠️ Jangan tinggalkan layar Produk Kapal sampai proses selesai!", en = "⚠️ Do NOT leave the Ship Product screen until editing is complete!"},
["ship_input1_palkapal"]    = {id = "📦 Masukkan jumlah produk kapal saat ini:", en = "📦 Enter current number of ship products:"},
["ship_input2_palkapal"]    = {id = "➕ Atur jumlah produk baru [3–500]:", en = "➕ Set new product quantity [3–500]:"},
["cancelled_palkapal"]      = {id = "❌ Operasi dibatalkan.", en = "❌ Operation cancelled."},
["invalid_range_palkapal"]  = {id = "🚫 Input tidak valid. Masukkan antara 3 dan 500.", en = "🚫 Invalid input. Enter between 3 and 500."},
["not_found_palkapal"]      = {id = "🚫 Data Produk Kapal tidak ditemukan.\nCoba restart game lalu ulangi.", en = "🚫 No Ship Product data found.\nTry restarting the game and retry."},
["ship_done_toast_palkapal"]= {id = "🛳️ Produk kapal berhasil diubah menjadi ", en = "🛳️ Ship products set to "},
["ship_done_alert_palkapal"]= {id = "✅ Produk diperbarui menjadi ", en = "✅ Products updated to "},
["ship_done_alert2_palkapal"]= {id = ".\nSilakan ambil sebelum peti diperbarui.", en = ".\nPlease collect them before the crate is refreshed."},  

----tambah jumlah minta minta----
  
    ["🌿 Select crops to modify"] = {id="🌿 Pilih tanaman untuk diubah", en="🌿 Select crops to modify"},
    ["📦 Enter crop amount [1;500]:"] = {id="📦 Masukkan jumlah tanaman [1;500]:", en="📦 Enter crop amount [1;500]:"},
    ["🚫 Invalid input. Must be between 1 and 500."] = {id="🚫 Input tidak valid. Harus antara 1 sampai 500.", en="🚫 Invalid input. Must be between 1 and 500."},
    ["❌ Not found: "] = {id="❌ Tidak ditemukan: ", en="❌ Not found: "},
    ["✅ "] = {id="✅ ", en="✅ "},
    [" set to "] = {id=" diset ke ", en=" set to "},
    
    ----tambah kotak pasar----
    
["prompt_market_boxes"] = {id = "📦 Masukkan jumlah kotak pasar (10–2000):",en = "📦 Enter number of market boxes (10–2000):"},
["invalid_input_market"] = {id = "⚠️ Input tidak valid! Masukkan angka antara 10 dan 2000.",en = "⚠️ Invalid input! Please enter a number between 10 and 2000."},
["data_not_found_market"] = {id = "❌ Data kotak pasar tidak ditemukan!",en = "❌ Market box data not found!"},
["no_valid_offset_market"] = {id = "⚠️ Data tidak ditemukan.",en = "⚠️ Data not found."},
["toast_success_market"] = {id = "✅ Kotak pasar berhasil diatur menjadi ",en = "✅ Market boxes successfully set to "},
["alert_success_market_1"] = {id = "📦 Jumlah kotak pasar telah diatur ke ",en = "📦 Number of market boxes set to "},
["alert_success_market_2"] = {id = ".\nKeluar dari pasar dan buka kembali untuk melihat perubahan.",en = ".\nExit and reopen the market to see the change."},
	
----menu ragam----

  ["industry_boost_gamragam"]   = {id = "🏭 • Pengurangan Waktu Industri", en = "🏭 • Industry Time Reduction"},
["heli_tcash_gamragam"]       = {id = "🚁 • T-Cash dari Helikopter", en = "🚁 • T-Cash from Helicopter"},
["free_boxes_gamragam"]       = {id = "🎁 • Kotak Pabrik Gratis", en = "🎁 • Free Factory Box"},
["build_no_tools_gamragam"]   = {id = "👷‍♀️ • Komunitas Tanpa Alat", en = "👷‍♀️ • Community Without Tools"},
["freeze_expansion_gamragam"] = {id = "🚧 • Bekukan Ekspansi Kota", en = "🚧 • Freeze City Expansion"},
["barn_expand_gamragam"]      = {id = "🏡 • Perluas Gudang Tanpa Alat", en = "🏡 • Expand Barn Without Tools"},
["dealer_rent_gamragam"]      = {id = "📦 • Sewa Dealer 30 Hari", en = "📦 • 30-Day Dealer Rental"},
  ["back_gamragam"]             = {id = "❌ • Kembali", en = "❌ • Go Back"},
  
  ["alert_star_brik"]   = {id = "🌟 Pilih level bintang di industri", en = "🌟 Select the star level in the industry"},
  ["prompt_star_brik"]  = {id = "🔢 Masukkan nomor level bintang [2–53]:", en = "🔢 Enter star level number [2–53]:"},
  ["prompt_value_brik"] = {id = "🕑 Masukkan nilai cooldown [99;100]", en = "🕑 Cooldown value [99;100]"},
  ["err_star_brik"]     = {id = "❌ Level bintang tidak valid (harus 2–53).", en = "❌ Invalid star level (must be 2–53)."},
  ["err_value_brik"]    = {id = "❌ Nilai cooldown tidak valid (harus 99 atau 100).", en = "❌ Invalid star value (must be 99 or 100)."},
  ["not_found_brik"]    = {id = "❌ Pola tidak ditemukan", en = "❌ Pattern not found"},
  ["patched_brik"]      = {id = "✅ Pola berhasil diubah", en = "✅ Pattern successfully set"},
  
    ----heli hack----

  ["input_oder1_suntikheli"] = {id = {"💰 Koin [1;99999]", "💵 T-Cash [0;999]", "⭐ EXP [Tanpa Batas]"},en = {"💰 Coins [1;99999]", "💵 T-Cash [0;999]", "⭐ EXP [Unlimited]"}},
  ["no_input_suntikheli"] = {id = "⚠️ Tidak ada input.\nOperasi dibatalkan.",en = "⚠️ No input provided.\nOperation cancelled."},
  ["zero_values_suntikheli"] = {id = "⚠️ Semua nilai nol.\nHadiah tidak diterapkan.",en = "⚠️ All values are zero.\nNo rewards applied."},
  ["no_match_suntikheli"] = {id = "❌ Nilai tidak ditemukan.\nSilakan mulai ulang game.",en = "❌ No matching values found.\nPlease restart the game."},
  ["toast_oder1_suntikheli"] = {id = "🚁 Hadiah helikopter berhasil diterapkan!",en = "🚁 Helicopter rewards applied!"},

----free boks pabrik----

  ["prompt_cash_input_freebox"] = {id = "💸 Masukkan jumlah Uang Tunai yang terlihat di kotak pabrik:",en = "💸 Enter the Cash amount shown in the factory box:"},
  ["invalid_or_cancel_freebox"] = {id = "❌ Input tidak valid atau dibatalkan.",en = "❌ Invalid input or cancelled."},
  ["not_found_new_freebox"] = {id = "❌ Tata Letak Baru tidak ditemukan.",en = "❌ New Layout not found."},
  ["activated_new_freebox"] = {id = "✅ Nilai Tata Letak Baru diubah ke 0 dan dibekukan.",en = "✅ New Layout value changed to 0 and frozen."},

----free open komunitas----
    
  ["other4_not_found_nitas"] = {en = "❌ No matching values found.\n\n'Community Without Tools' could not be applied.\nPlease try again or restart the game.",id = "❌ Tidak ada nilai yang cocok ditemukan.\n\n'Komunitas Tanpa Alat' tidak dapat diterapkan.\nSilakan coba lagi atau mulai ulang permainan."},
  ["other4_success_nitas"] = {en = "✅ 'Community Without Tools' has been successfully applied.\n\nPlease restart the game to apply changes.",id = "✅ 'Komunitas Tanpa Alat' berhasil diterapkan.\n\nSilakan mulai ulang permainan untuk menerapkan perubahan."},
  ["other4_toast_nitas"] = {en = "🛠️ Building unlocked without tools!",id = "🛠️ Bangunan terbuka tanpa alat!"},
  
  ----free luasan----

  ["expansion_city_freeluas"] = {id = "Perluasan Kota (Tanpa Populasi)",en = "City Expansion (No Population)"},
  ["not_found_restart_freeluas"] = {id = "tidak ditemukan! Coba restart lokasi dan ulangi.",en = "not found! Try restarting the location and try again."},
  ["frozen_freeluas"] = {id = "telah dibekukan.",en = "has been frozen."},
  ["land_freeze_success_freeluas"] = {id = "Perluasan kota berhasil dibekukan!",en = "City expansion successfully frozen!"},
  
  ----gudang dang----
  
  ["barn_not_found_gudangdang"] = {id = "❌ Data lumbung tidak ditemukan.\n\nSilakan restart game lalu coba lagi.",en = "❌ No barn data found.\n\nPlease restart the game and try again."},
  ["barn_freeze_not_found_gudangdang"] = {id = "❌ Target pembekuan lumbung tidak ditemukan.\n\nSilakan restart game lalu coba lagi.",en = "❌ No matching barn freeze targets found.\n\nPlease restart the game and try again."},
  ["barn_frozen_gudangdang"] = {id = "🏡 Kapasitas lumbung berhasil dibekukan di ",en = "🏡 Barn capacity successfully frozen in "},
  ["entries_gudangdang"] = {id = " entri!",en = " entry(ies)!"},
  
  ----delerler----
  
  ["dealer_not_found_deler"] = {id = "❌ Data Dealer 30-hari tidak ditemukan.\n\nSilakan restart game dan coba lagi.",en = "❌ No 30-day Dealer data found.\n\nPlease restart the game and try again."},
["dealer_success_deler"] = {id = "✅ Sewa Dealer diperpanjang 30 hari.\n\nSilakan keluar dan masuk kembali ke pasar kota untuk menerapkan perubahan.",en = "✅ Dealer rental extended by 30 days.\n\nPlease exit and re-enter the city market to apply changes."},
["dealer_toast_deler"] = {id = "📦 Sewa Dealer 30 hari aktif!",en = "📦 30-day Dealer rental activated!"},

  ["cancelled"] = {id = "❌ Dibatalkan", en = "❌ Cancelled"},
  ["invalid"]   = {id = "❌ Username atau Password Salah!", en = "❌ Invalid Username or Password!"},
  ["adminMenuTitle"] = {id = "⚙️ Admin ARH Reset Logs", en = "⚙️ ARH Admin Reset Logs"},
  ["resetLogs"] = {id = "🔁 • Reset Log Pengguna", en = "🔁 • Reset User Logs"},
  ["exitMenu"]  = {id = "❌ • Keluar Skrip", en="❌ • Exit Script"},
  ["logsReset"] = {id = "🔁 Log berhasil direset.\n\nScript akan ditutup. Silakan masukkan username baru (mudah diingat), kemudian hubungi admin dan berikan username Anda. Terima kasih.", en = "🔁 Logs have been reset successfully.\n\nThe script will now close. Please enter a new username (easy to remember), then contact the admin and provide your username. Thank you."},
  ["exiting"]  = {id = "👋 Keluar dari Mode Admin...", en = "👋 Exiting Admin Mode..."},

["about_script"] = {id="📖 • Tentang Skrip", en="📖 • About Script"},
["contact_dev"]  = {id="📞 • Kontak Admin", en="📞 • Contact Admin"},
["reset_default"] = {id="♻️ • Setelan Awal", en="♻️ • Reset to Default"},
["change_lang"]  = {id="🌐 • Ganti Bahasa", en="🌐 • Change Language"},
  ["go_back"] = {id="❌ • Kembali", en="❌ • Go Back"},

  ["select_lang"] = {id="🌐 Pilih Bahasa:", en="🌐 Choose Language:"},
  ["lang_set"] = {id="✅ Bahasa diatur ke: Indonesia", en="✅ Language set to: English"},

["contact_telegram"] = {id = "Hubungi via Telegram", en = "Contact via Telegram"},
["contact_facebook"] = {id = "Hubungi via Facebook", en = "Contact via Facebook"},
["contact_menu_title"] = {id = "Menu Kontak Admin", en = "Admin Contact Menu"},
["contact_menu_desc"] = {id = "Pilih platform untuk menghubungi:", en = "Choose a platform to reach out:"},
["exit_script1"] = {id = "Keluar Script", en = "Exit Script"},
["exit1"] = {id = "Keluar", en = "Exit"},
["copy_link1"] = {id = "Salin Tautan", en = "Copy Link"},
["link_copied"] = {id = "Tautan disalin ke clipboard 📋", en = "Link copied to clipboard 📋"},
["contact_cancelled"] = {id = "Kontak dibatalkan.", en = "Contact cancelled."},
["exit_contact_menu"] = {id = "Keluar dari menu kontak Admin.", en = "Exiting Admin contact menu."},
	
["thank_you_exit"] = {id = "Terima kasih telah menggunakan script ini!\nSemoga harimu menyenangkan!",en = "Thanks for using this script!\nHave a great day!"},

["about_msg"] = {id =[[
   ┏┳┳┓┏━┓─────────┏━━┓┏━┓
   ┃┃┃┃┃━┫┏┓─┏━┓┏━┓┃┃┃┃┃━┫
   ┃┃┃┃┃━┫┃┣┓┃┣┫┃╋┃┃┃┃┃┃━┫
   ┗━━┛┗━┛┗━┛┗━┛┗━┛┗┻┻┛┗━┛

📜 *Informasi Script – Azka Project*

🔹 Nama Script: 👑ARH-Script Township👑.lua  
🔹 Versi: 1.0.0  
🔹 Admin: Azka Raditya Hermawan  
🔹 Platform: Game Guardian (Android)  
🔹 Fitur Premium:
        • 🎭 Buka skin lama
        • 🏞️ 200+ dekorasi
        • 🚀 Booster Match-3 Lengkap
        • 🏡 Booster Gudang Tak Terbatas
        • 🔐 Fitur Premium Lainnya
        • ✨ ...dan masih banyak lagi!

⚠️ *Peringatan Penting:*  
Gunakan script ini **dengan bijak** agar tidak terkena banned.

1. 💸 *T-Cash Hack*  
      • Batas aman: **maksimal 25.000 T-Cash**  
      • Jika ingin lebih, tunggu **6 bulan** sejak upgrade terakhir  
      • Melebihi batas ini bisa menyebabkan **banned permanen**

2. 🏡 *Upgrade Lumbung*  
      • Ikuti batas upgrade dari game  
      • Selalu lihat **tabel upgrade resmi Playrix**  
      • Mengabaikan bisa menyebabkan **auto-banned**

3. 🤝 *Global Co-op*  
      • Anda **tidak perlu bergabung** dengan global co-op top  
      • Bergabung bisa menyebabkan **banned dalam 3–7 hari**

💡 Jika hack gagal:  
      • Restart game 2–3 kali  
      • Masih gagal? Hubungi Admin lewat menu kontak

🔐 Upgrade Premium:  
Buka semua fitur + dukungan prioritas dari Admin!

🙏 Terima kasih:  
Terima kasih sudah menggunakan script ini!

📢 *Gabung Channel WhatsApp Resmi:*  
Update dan info terbaru:  
Township Script (ARH)  
🔗 https://whatsapp.com/channel/0029Vb6ez5yCcW4t9G1AJE3q

────────────
© Azka Project
]],en =[[
   ┏┳┳┓┏━┓─────────┏━━┓┏━┓
   ┃┃┃┃┃━┫┏┓─┏━┓┏━┓┃┃┃┃┃━┫
   ┃┃┃┃┃━┫┃┣┓┃┣┫┃╋┃┃┃┃┃┃━┫
   ┗━━┛┗━┛┗━┛┗━┛┗━┛┗┻┻┛┗━┛

📜 *Script Information – Azka Project*

🔹 Script Name: 👑ARH-Script Township👑.lua  
🔹 Version: 1.0.0  
🔹 Admin: Azka Raditya Hermawan  
🔹 Platform: Game Guardian (Android)  
🔹 Premium Features:
        • 🎭 Unlock old skins
        • 🏞️ 200+ decorations
        • 🚀 Full Match-3 Boosters
        • 🏡 Unlimited Barn Boosters
        • 🔐 Other Premium Features
        • ✨ ...and much more!

⚠️ *Important Warning:*  
Use this script **wisely** to avoid being banned.

1. 💸 *T-Cash Hack*  
      • Safe limit: **maximum 25,000 T-Cash**  
      • If you want more, wait at least **6 months** after the last upgrade  
      • Exceeding this limit may cause a **permanent ban**

2. 🏡 *Barn Upgrade*  
      • Follow the upgrade limits from the game  
      • Always check the **official Playrix upgrade tables**  
      • Ignoring this may trigger an **auto-ban**

3. 🤝 *Global Co-op*  
      • You **do NOT need to join** top global co-ops  
      • Joining them may cause a **ban within 3–7 days**

💡 If the hack fails:  
      • Restart the game 2–3 times  
      • Still not working? Contact the Admin via the contact menu

🔐 Premium Upgrade:  
Unlock all features + get priority support from the Admin!

🙏 Thank You:  
Thank you for using this script!

📢 *Join the Official WhatsApp Channel:*  
Stay updated with the latest news and updates:  
Township Script (ARH)  
🔗 https://whatsapp.com/channel/0029Vb6ez5yCcW4t9G1AJE3q

────────────
© Azka Project
]]},
["exit"] = {id = "❌ Keluar",en = "❌ Exit"},
["copy_link"] = {id = "📋 Salin Link",en = "📋 Copy Link"},
["copied"] = {id = "✅ Link berhasil disalin!",en = "✅ Link copied to clipboard!"},
}
function _(k) return teks[k] and teks[k][lang] or k end

function saveLang()
  local file = io.open("/sdcard/.langmode.txt", "w")
  if file then
    file:write(lang)
    file:close()
  end
end

function loadLang()
  local file = io.open("/sdcard/.langmode.txt", "r")
  if file then
    local content = file:read("*l")
    if content == "id" or content == "en" then
      lang = content
    end
    file:close()
  end
end

-- ⏳ Panggil saat awal
loadLang()

-- 📁 Cache Setup
local folder = "/sdcard/ARH_Cache/"
local fileItem = folder .. "itemcache.txt"
local fileAddr = folder .. "addresscache.txt"

-- 🧹 Delete File Safely
local function deleteFile(path)
pcall(function() os.remove(path) end)
end

-- 📍 Get Cached or New Address
function getAddr()
local cacheInvalid = false
local cachedAddr
local file = io.open(fileAddr, "r")

if file then
cachedAddr = tonumber(file:read("*l") or "")
file:close()
end

if cachedAddr then
local check = gg.getValues({{address = cachedAddr, flags = gg.TYPE_DWORD}})
if check and check[1] and check[1].value == 30 then
return cachedAddr
else
deleteFile(fileAddr)
deleteFile(fileItem)
gg.toast(_("cache_cleared"))
cacheInvalid = true
end
end

gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("29;1599361808;5;30::641", gg.TYPE_DWORD)
gg.refineNumber("30", gg.TYPE_DWORD)
local results = gg.getResults(1)

if #results == 0 then
gg.alert(_("addr_not_found"))
return nil
end

local newAddr = results[1].address
local fileSave = io.open(fileAddr, "w")
if fileSave then
fileSave:write(newAddr)
fileSave:close()
end

if cacheInvalid then
gg.toast(_("addr_refreshed"))
while not gg.isVisible(true) do gg.sleep(200) end
gg.setVisible(false)
end

return newAddr
end

-- 📁 Global config
local configFile = "/sdcard/.mymode.txt"
local menuMode, menuRunning = nil, false

-- 📥 Load saved mode
function loadMode()
  local file = io.open(configFile, "r")
  if file then
    local mode = file:read("*l")
    file:close()
    if mode == "free" or mode == "premium" then
      menuMode = mode
    else
      menuMode = nil
    end
  else
    menuMode = nil
  end
end

-- 💾 Save mode
function saveMode(mode)
  local file = io.open(configFile, "w")
  if file then
    file:write(mode or "")
    file:close()
  end
end

-- 🔁 Reset mode
function resetMode()
  menuMode = nil
  saveMode(nil)
  gg.toast(_("mode_reset"))
end

-- ✅ Jalankan pengecekan alamat
if type(getAddr) == "function" then
  local addr = getAddr()
  if addr then
    -- 🔧 Tambahkan patching memori di sini jika diperlukan
  else
    gg.toast(_("addr_not_found"))
  end
else
  gg.toast(_("fn_not_defined"))
end

function mainMenu()
  local menu = gg.choice({
    _( "free_script" ),
    _( "premium_script" ),
    _( "buy_key" ),
    _( "exit_script" )
  }, nil, _( "main_menu" ))

  if menu == 1 then
    menuMode = "free" saveMode(menuMode) freekey()
  elseif menu == 2 then
    menuMode = "premium" saveMode(menuMode) Main()
  elseif menu == 3 then
    buykey()
  elseif menu == 4 then
    exit()
  end
end

-- 🌐 Feature Status Setup
local on, off = " ✓ ", ""
local cstatus_featureX = off

function toggle_featureX(silent)
  cstatus_featureX = (cstatus_featureX == off) and on or off
  if not silent then
    if cstatus_featureX == on then
      gg.alert("❄️ Freeze feature is now ON ✅")
    else
      gg.toast("🔥 Freeze feature is now OFF ❌")
    end
  end
end

-- 🔓 Free Script Menu
local freezeFlagAddr = 0x20000000  -- Gunakan alamat kosong/aman

function setFreezeFlag(value)
  gg.setValues({{address = freezeFlagAddr, flags = gg.TYPE_DWORD, value = value}})
end

function getFreezeFlag()
  local v = gg.getValues({{address = freezeFlagAddr, flags = gg.TYPE_DWORD}})
  return v[1].value == 1
end

function freekey()
  menuRunning = true
  while menuRunning and menuMode == "free" do
    local menuList = {
      _( "unlock_season_freemenu" ),
      _( "freeze_rewards_freemenu" ) .. " " .. cstatus_featureX
    }

    local idxChangeReward = nil
    if rewardVisible then
      table.insert(menuList, _( "change_reward_freemenu" ))
      idxChangeReward = #menuList
    end

    local idxMisc = #menuList + 1
    table.insert(menuList, _( "misc_mods_freemenu" ))

    local idxInfo = #menuList + 1
    table.insert(menuList, _( "script_info_freemenu" ))

    local idxExit = #menuList + 1
    table.insert(menuList, _( "exit_script_freemenu" ))

    local menu = gg.choice(menuList, nil, _( "free_menu_freemenu" ))
    if not menu then break end

    if menu == 1 then menue1()
    elseif menu == 2 then menue2()
    elseif idxChangeReward and menu == idxChangeReward then menue3()
    elseif menu == idxMisc then menue4()
    elseif menu == idxInfo then menu6()
    elseif menu == idxExit then exit() menuRunning = false break
    else
    end
  end
  menuRunning = false
end

function menue3()
  local title = banner
  local menu = gg.choice({
    _("smelt_ingots_changefree"),        -- 🪙 Smelt Ingots
    _("mining_tools1_changefree"),        -- ⛏️ Mining Tools
    _("redeem_coupons_changefree"),      -- 🎟️ Redeem Coupons
    _("add_gems_changefree"),            -- 💎 Add Gems
    _("match3_boosters_changefree"),     -- 🧩 Match-3 Boosters
    _("community_materials_changefree"), -- 🏗️ Community Materials
    _("claim_perks_changefree"),         -- 🎉 Claim Perks
    _("go_back_changefree")              -- ❌ • Go Back
  }, nil, title)

  if not menu then
    return
  end

  local actions = {rw1, rw2, rw3, rw4, rw5, rw6, rw7, rw8, freekey}
  if actions[menu] then
    actions[menu]()
  else
  end
end

function menue4()
  local title = banner
  local menu = gg.choice({
    _( "menu4_opt1_hackfree" ), -- 🚁 T-Cash dari Helikopter
    _( "menu4_opt2_hackfree" ), -- 🌾 EXP dari Panen Gandum
    _( "menu4_opt3_hackfree" ), -- 🎁 Kotak Pabrik Gratis
    _( "menu4_opt4_hackfree" ), -- 🚧 Perluas Lahan
    _( "menu4_opt5_hackfree" ), -- 🏭 Leleh Instan
    _( "menu4_opt6_hackfree" ), -- 🐮 Produksi Peternakan Cepat
    _( "menu4_opt7_hackfree" ), -- ⚡ Isi Ulang Energi Adventure
    _( "menu_back_hackfree" )   -- ❌ Kembali
  }, nil, title)

  if not menu then
    return
  end

  local actions = {
    oder1, -- Helicopter T-Cash
    oder2, -- Wheat EXP
    oder3, -- Factory Boxes
    oder4, -- Land Expansion
    oder5, -- Furnace Speedup
    oder6, -- Farm Production
    oder7, -- Refill Energy
    freekey -- Back
  }

  if actions[menu] then
    actions[menu]()
  else
    return
  end

  if menu ~= 8 then
    while not gg.isVisible(true) do end
    gg.setVisible(false)
    menue4()
  end
end

-- 💎 Premium Script Menu
function Main()
  menuRunning = true
  while menuRunning and menuMode == "premium" do

-- 💎 ARH PERMANENT & EXPIRED LOGIN HANDLER
local passFile           = "/sdcard/.ulog_craft"
local permCodeFile       = "/sdcard/.brush_viu"
local expiredDevicesFile = "/sdcard/.vutlenot"

-- 🔑 Expired code
local expiredCode   = "ARHPremiumTS-2025"
-- 📅 Expire date untuk expiredCode
local expireDate50  = "2025-09-25"

-- Hash helper
local function hash(str)
    local h = 0
    for i = 1, #str do
        h = (h * 31 + str:byte(i)) % 1000000007
    end
    return tostring(h)
end

-- 📅 Cek tanggal expired (untuk expiredCode)
local function isExpiredDate50()
    local today = os.date("%Y-%m-%d")
    return today > expireDate50
end

-- 🕒 Hitung sisa hari expired
local function getDaysLeft(expDate)
    local y, m, d = expDate:match("(%d+)-(%d+)-(%d+)")
    local target = os.time{year=tonumber(y), month=tonumber(m), day=tonumber(d), hour=23, min=59, sec=59}
    local now = os.time()
    local diff = math.floor((target - now) / (24*60*60))
    if diff < 0 then diff = 0 end
    return diff
end

-- 📂 Ambil permanent code
local f = io.open(permCodeFile, "r")
local permanentCode = f and f:read("*a") or nil
if f then f:close() end

if not permanentCode then
    gg.alert("❌ Permanent code not found. Please re-run main script.")
    resetMode()
    os.exit()
end

local expectedHash = hash(permanentCode)

-- 🔍 Load daftar device permanent
local permanentDevices = {}
local pf = io.open(passFile, "r")
if pf then
    for line in pf:lines() do
        permanentDevices[#permanentDevices + 1] = line
    end
    pf:close()
end

local function isPermanentDeviceRegistered(idHash)
    for _, h in ipairs(permanentDevices) do
        if h == idHash then return true end
    end
    return false
end

-- 🔍 Load daftar device expired
local expiredDevices = {}
local ef = io.open(expiredDevicesFile, "r")
if ef then
    for line in ef:lines() do
        expiredDevices[#expiredDevices+1] = line
    end
    ef:close()
end

local function isExpiredDeviceRegistered(id)
    for _, d in ipairs(expiredDevices) do
        if d == id then return true end
    end
    return false
end

-- 📌 Alert login info
local function showLoginInfo(mode)
    local now = os.date("%Y-%m-%d %H:%M:%S")
    local expDate = expireDate50
    local header, message

    if mode == "Permanent Code" then  
        header = "✅ Permanent Login Success"  
        message = string.format("%s\n\n📅 Login: %s\n🔑 Type: %s",
            header, now, mode)  

    elseif mode == "Expired Code" then  
        local daysLeft = getDaysLeft(expDate)  
        local leftText = (daysLeft == 1) and "1 day left" or (daysLeft .. " days left")  
        header = "✅ Expired Login Success"  
        message = string.format("%s\n\n📅 Login: %s\n⏳ Expire Date: %s\n⏳ %s\n🔑 Type: %s",
            header, now, expDate, leftText, mode)  
    end  

    gg.alert(message)
end

-- 🔐 Status login
local loginOK = false

-- ✅ Auto-login permanent code
if isPermanentDeviceRegistered(expectedHash) then
    loginOK = true
end

-- ✅ Auto-login expired code
if not loginOK and isExpiredDeviceRegistered(expiredCode) then
    if isExpiredDate50() then
        gg.alert("⛔ Expired code expired on " .. expireDate50 .. "\n\nPlease use a Permanent Code to continue.")
    else
        loginOK = true
    end
end

-- 🔑 Kalau belum ada auto-login, minta kode manual
while not loginOK do
    local input = gg.prompt({"🔐 Enter Code"}, {""}, {"text"})
    if not input then gg.alert("❌ Cancelled") resetMode() os.exit() end
    local code = input[1]

    if code == permanentCode then  
        if not isPermanentDeviceRegistered(expectedHash) then  
            local pfw = io.open(passFile, "a")  
            if pfw then pfw:write(expectedHash .. "\n") pfw:close() end  
            permanentDevices[#permanentDevices + 1] = expectedHash  
        end  
        gg.toast("✅ Access granted with Permanent Code")  
        showLoginInfo("Permanent Code")  
        loginOK = true  

    elseif code == expiredCode then  
        if isExpiredDate50() then  
            gg.alert("⛔ Expired code expired on " .. expireDate50 .. "\n\nPlease use a Permanent Code to continue.")  
        else  
            if not isExpiredDeviceRegistered(expiredCode) then  
                local efw = io.open(expiredDevicesFile, "a")  
                if efw then efw:write(expiredCode .. "\n") efw:close() end  
                expiredDevices[#expiredDevices+1] = expiredCode  
            end  
            gg.toast("✅ Access granted with Expired Code")  
            showLoginInfo("Expired Code")  
            loginOK = true  
        end  
    else  
        gg.alert("❌ Invalid code, please try again")  
    end  
		end
		
local menu = gg.choice({
_( "special_hack_premenu" ),  -- 🔹 Menu baru di atas limited_events
  _( "unlock_season_premenu" ),
  _( "limited_events_premenu" ),
  _( "skip_time_premenu" ),     -- 🔹 Menu baru di bawah limited_events (sudah ada)
  _( "farming_products_premenu" ),
  _( "misc_mods_premenu" ),
  _( "script_info_premenu" ),
  _( "exit_script_premenu" )
}, nil, _( "premium_menu_premenu" ))

if menu == nil then break end
if menu == 2 then
  menu1()
elseif menu == 1 then
  menuSpecial() -- 🔹 Fungsi untuk special hack
elseif menu == 3 then
  menu2()
elseif menu == 4 then
  menu7() -- 🔹 Skip waktu
elseif menu == 5 then
  menu3()
elseif menu == 6 then
  menu4()
elseif menu == 7 then
  menu6()
elseif menu == 8 then
  exit()
  menuRunning = false
else
end
break
end
menuRunning = false
end

rewardVisible = rewardVisible or false  -- bersifat sementara (reset tiap restart)

function menu1()
  local title = banner
  local menuList = {
    _("unlock_pass_rwpremium"), -- 1
    _("freeze_rewards_rwpremium") .. cstatus_featureX -- 2
  }

  if rewardVisible then
    table.insert(menuList, _("skins_decor_rwpremium"))      -- 3
    table.insert(menuList, _("add_cash_rwpremium"))         -- 4
    table.insert(menuList, _("boosters_rwpremium"))         -- 5
    table.insert(menuList, _("redeem_coupon_rwpremium"))    -- 6
    table.insert(menuList, _("add_gems_rwpremium"))         -- 7
    table.insert(menuList, _("special_product_rwpremium"))  -- 8
    table.insert(menuList, _("claim_bonus_rwpremium"))      -- 9
  end

  table.insert(menuList, _("go_back_rwpremium")) -- 10 (atau 3 jika rewardVisible = false)

  local menu = gg.choice(menuList, nil, title)

  if not menu then
    return  -- ⛔ Stop di sini, jangan lanjut ke loop
  end

  if menu == 1 then
    gp1()
  elseif menu == 2 then
    gp2()
  elseif rewardVisible and menu == 3 then
    gp3()
  elseif rewardVisible and menu == 4 then
    gp4()
  elseif rewardVisible and menu == 5 then
    gp5()
  elseif rewardVisible and menu == 6 then
    gp6()
  elseif rewardVisible and menu == 7 then
    gp7()
  elseif rewardVisible and menu == 8 then
    gp8()
  elseif rewardVisible and menu == 9 then
    gp9()
  elseif (not rewardVisible and menu == 3) or (rewardVisible and menu == 10) then
    Main()
    return
  else
    return
  end

  -- 🔁 Hanya lanjut loop jika opsi valid dijalankan
  while true do
    if gg.isVisible(true) then
      gg.setVisible(false)
      menu1()
      break
    end
  end
end

-- 🌟 Unlock Season Pass
function menue1()
  gp1("free")
end

function gp1(caller)
  gg.setVisible(false)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)

  -- 🔍 Cari QWORD utama
  gg.searchNumber("6875698586322892050", gg.TYPE_QWORD)
  local hasil = gg.getResults(100) -- ambil lebih banyak hasil untuk keamanan

  if #hasil == 0 then
    return gg.alert(_("gold_not_found"))
  end

  local kandidat = {}

  -- 🧩 Filter hasil berdasarkan offset +0x48 == 640
  for i, res in ipairs(hasil) do
    local check = gg.getValues({{address = res.address + 0x48, flags = gg.TYPE_DWORD}})
    if check and check[1] and check[1].value == 640 then
      table.insert(kandidat, res)
    end
  end

  if #kandidat == 0 then
    return gg.alert(_("addr_not_found"))
  end

  -- 🔁 Siapkan daftar edit untuk SEMUA kandidat
  local edits = {}
  for _, t in ipairs(kandidat) do
    local base = t.address
    table.insert(edits, {address = base + 0x118, flags = gg.TYPE_DWORD, value = 0})
    table.insert(edits, {address = base + 0x11C, flags = gg.TYPE_DWORD, value = 651}) -- kode Gold Pass
    table.insert(edits, {address = base + 0x128, flags = gg.TYPE_DWORD, value = 1})
  end

  -- 🛠 Terapkan perubahan
  gg.setValues(edits)

  -- ✅ Info ke user
  gg.toast(_("gold_enabled"))
end

-- ❄️ Freeze Rewards
function menue2()
  gp2("free")
end

function gp2(caller)
if cstatus_featureX == off then
    local confirm = gg.alert(
      _("freeze_info_title") .. "\n\n" ..
      _("freeze_info_question") .. "\n" ..
      _("freeze_info_explain"),
      _("freeze_continue"),
      _("freeze_cancel")
    )

    if confirm ~= 1 then return end
    cstatus_featureX = on
    rewardVisible = true
  end

  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("8315166925580948240", gg.TYPE_QWORD)
  local hasil = gg.getResults(1000)

  if #hasil == 0 then
    return gg.alert(_("freeze_fail_title"))
  end

  local kandidat = {}

  -- 🧩 Filter hasil dengan offset +0x1CC = 27491
  for i, res in ipairs(hasil) do
    local check = gg.getValues({{address = res.address + 0x1CC, flags = gg.TYPE_DWORD}})
    if check[1].value == 27491 then
      table.insert(kandidat, res)
    end
  end

  if #kandidat == 0 then
    return
  end

  -- ❄️ Siapkan pembekuan untuk semua kandidat
  local freezeItems = {}
  for _, target in ipairs(kandidat) do
    table.insert(freezeItems, {address = target.address - 8,  flags = gg.TYPE_DWORD, value = 0, freeze = true})
    table.insert(freezeItems, {address = target.address - 12, flags = gg.TYPE_DWORD, value = 0, freeze = true})
    table.insert(freezeItems, {address = target.address - 16, flags = gg.TYPE_DWORD, value = 0, freeze = true})
  end

  gg.addListItems(freezeItems)

  -- 🎉 Efek Mengetik Toast
  local function typingToast(msg, delay)
    for i = 1, #msg do
      gg.toast(msg:sub(1, i))
      gg.sleep(delay or 50)
    end
  end

  typingToast(_("freeze_active_toast"), 70)
  gg.clearResults()
end

function gp4() -- 💰 Currency Menu
  local indev = dev
  local menu = gg.choice({
    "💵 • " .. _("add_tcash_tambahduit"),
    "💰 • " .. _("add_coins_tambahduit"),
    "🪙 • " .. _("add_regatta_tambahduit"),
    "🍀 • " .. _("add_clover_tambahduit"),
    "🗽 • " .. _("add_statuecoins_tambahduit"),
    "❌ • " .. _("go_back_tambahduit")
  }, nil, indev)

  if menu == nil then
    return
  end

  local actions = {
    cash1,   -- 💵 T-Cash
    cash2,   -- 💰 Coins
    cash3,   -- 🪙 Regatta Token
    cash4,   -- 🍀 Clover
    cash5,   -- 🗽 Statue Coins
    menu1    -- ❌ Back
  }

  if actions[menu] then
    actions[menu]()
  else
    return
  end

  -- Kembali ke menu Currency jika belum memilih "Back"
  if menu ~= 6 then
    while true do
      if gg.isVisible(true) then
        gg.setVisible(false)
        gp4()
        break
      end
    end
  end
end

-- 🔄 Apply Reward Using Cached Address
function applyCurrencyReward(key, pattern, promptRange, fixedAmount)
  local label = _(key)
  local addr = getAddr()
  if not addr then return end

  local amount = fixedAmount
  if not amount and promptRange then
    local min, max = promptRange[1], promptRange[2]
    local input = gg.prompt({label .. " [" .. min .. "–" .. max .. "]:"}, nil, {"number"})
    amount = tonumber(input and input[1])
    if not amount or amount < min or amount > max then
      gg.alert(_( "invalid_tambahduit" ) .. min .. " dan " .. max .. ".")
      return
    end
  end

  local edits = {}
  for _, v in ipairs(pattern) do
    table.insert(edits, {address = addr + v[1], flags = gg.TYPE_DWORD, value = v[2]})
  end
  if amount then
    table.insert(edits, {address = addr - 0x2C, flags = gg.TYPE_DWORD, value = amount})
  end
  table.insert(edits, {address = addr + 0x10, flags = gg.TYPE_DWORD, value = 0})
  table.insert(edits, {address = addr + 0x18, flags = gg.TYPE_DWORD, value = 0})
  table.insert(edits, {address = addr + 0x20, flags = gg.TYPE_DWORD, value = 0})

  gg.setValues(edits)
  gg.toast(label .. (amount and (_("set_to_tambahduit") .. amount .. " ✅") or _("applied_tambahduit")))
end

function cash1() applyCurrencyReward("tcash_tambahduit", {
  {-0x48, 0x73616308}, {-0x44, 0x68}, {-0x40,0}, {-0x3C,0}, {-0x38,0}, {-0x34,0}, {-0x30,0}
}, {1, 25000}) end

function cash2() applyCurrencyReward("coin_tambahduit", {
  {-0x48, 0x696F630A}, {-0x44, 0x736E}, {-0x40,0}, {-0x3C,0}, {-0x38,0}, {-0x34,0}, {-0x30,0}
}, {1, 999999}) end

function cash3() applyCurrencyReward("regatta_tambahduit", {
  {-0x48, 0x67655214}, {-0x44, 0x43617461}, {-0x40, 0x687361}, {-0x3C,0}, {-0x38,0}, {-0x34,0}, {-0x30,0}
}, {1, 2000}) end

function cash4() applyCurrencyReward("clover_tambahduit", {
  {-0x48, 0x6F6C630C}, {-0x44, 0x726576}, {-0x40,0}, {-0x3C,0}, {-0x38,0}, {-0x34,0}, {-0x30,0}
}, {1, 50}) end

function cash5() applyCurrencyReward("statue_tambahduit", {
  {-0x48, 1635021594}, {-0x44, 1600484724}, {-0x40, 1953067639}, {-0x3C, 29285}, {-0x38,0}, {-0x34,0}, {-0x30,0}
}, nil, 1) end

function gp5()
  local title = banner
  local menu = gg.choice({
    "🧩 • " .. _("match3_boosters_menuboost"),
    "🧪 • " .. _("lab_boosters_menuboost"),
    "❌ • " .. _("go_back_menuboost")
  }, nil, title)

  if menu == nil then
    return
  end

  local actions = {
    [1] = boost1,   -- Match-3 Boosters
    [2] = boost2,   -- Lab Boosters
    [3] = menu1     -- Back to main menu
  }

  local selectedAction = actions[menu]
  if selectedAction then
    selectedAction()
  else
  end
end

-- ✅ Alias rw5 untuk Free Script
function rw5()
  boost1("free")
end

function boost1(caller)
  local indev = dev
  local menu, actions = {}, {}

  -- Booster Umum (Free & Premium)
  table.insert(menu, "🎲 • " .. _("rainbow_ball_eventboost"))     table.insert(actions, booster1)
  table.insert(menu, "💣 • " .. _("bomb_eventboost"))             table.insert(actions, booster2)
  table.insert(menu, "🚀 • " .. _("rocket_eventboost"))           table.insert(actions, booster3)

  -- Booster Tambahan (Premium Only)
  if caller ~= "free" then
    table.insert(menu, "🔨 • " .. _("jackhammer_eventboost"))             table.insert(actions, booster4)
    table.insert(menu, "🚿 • " .. _("hydrant_eventboost"))                table.insert(actions, booster5)
    table.insert(menu, "🧤 • " .. _("gloves_eventboost"))                 table.insert(actions, booster6)
    table.insert(menu, "❤️ • " .. _("infinite_lives_30_eventboost"))     table.insert(actions, booster7)
    table.insert(menu, "✨ • " .. _("double_points_30_eventboost"))       table.insert(actions, booster8)
    table.insert(menu, "🎲 • " .. _("rainbow_ball_30_eventboost"))        table.insert(actions, booster9)
    table.insert(menu, "💣 • " .. _("bomb_30_eventboost"))                table.insert(actions, booster10)
    table.insert(menu, "🚀 • " .. _("rocket_30_eventboost"))              table.insert(actions, booster11)
    table.insert(menu, "⚡ • " .. _("energy_adventure_eventboost"))       table.insert(actions, booster12)
    table.insert(menu, "💥 • " .. _("exploder_adventure_eventboost"))     table.insert(actions, booster13)
  end

  table.insert(menu, "❌ • " .. _("go_back_eventboost"))

  local choice = gg.choice(menu, nil, indev)
  if not choice then
    return
  end

  if choice == #menu then
    if caller == "free" then
      menue3()
    else
      gp5()
    end
    return
  end

  local selected = actions[choice]
  if selected then
    selected(caller)
  else
  end

  while true do
    if gg.isVisible(true) then
      gg.setVisible(false)
      boost1(caller)
      break
    end
  end
end

-- 🔧 Booster biasa dengan input jumlah
local function patchBooster(emoji, name, promptKey, hexData, caller)
  local addr = getAddr()
  if not addr then return end

  local maxLimit = (caller == "free") and 500 or 5000
  local input = gg.prompt({emoji .. " " .. _(promptKey) .. " [1–" .. maxLimit .. "]:"}, nil, {"number"})
  local amount = tonumber(input and input[1])

  if not amount then
    gg.alert(_ ("no_input_eventboost"))
    return
  end

  if amount < 1 or amount > maxLimit then
    gg.alert(_ ("invalid_range_eventboost") .. " " .. maxLimit .. ".")
    return
  end

  local patch = {}
  for _, v in ipairs(hexData) do
    table.insert(patch, {address = addr + v[1], flags = gg.TYPE_DWORD, value = v[2]})
  end

  table.insert(patch, {address = addr - 0x2C, flags = gg.TYPE_DWORD, value = amount})
  table.insert(patch, {address = addr + 0x10, flags = gg.TYPE_DWORD, value = 0})
  table.insert(patch, {address = addr + 0x18, flags = gg.TYPE_DWORD, value = 0})
  table.insert(patch, {address = addr + 0x20, flags = gg.TYPE_DWORD, value = 0})

  gg.setValues(patch)
  gg.toast("" .. emoji .. " " .. name .. " " .. _ ("booster_applied_eventboost") .. " " .. amount)
end

-- 🔧 Booster dengan waktu 30 hari
local function patchTimedBooster(emoji, name, hexData)
  local addr = getAddr()
  if not addr then return end

  local patch = {}
  for _, v in ipairs(hexData) do
    table.insert(patch, {address = addr + v[1], flags = gg.TYPE_DWORD, value = v[2]})
  end

  gg.setValues(patch)
  gg.toast("✅ " .. emoji .. " " .. name .. " - " .. _ ("success_30d_eventboost"))
end

local function patchTimedBooster(emoji, name, hexData)
local addr = getAddr()
if not addr then return end

local patch = {}
for _, v in ipairs(hexData) do
table.insert(patch, {address = addr + v[1], flags = gg.TYPE_DWORD, value = v[2]})
end

gg.setValues(patch)
gg.toast("" .. emoji .. " " .. name .. " (30 Days) successfully applied.")
end

-- 🔁 Booster dengan template salin
local function copyPatchTemplate(offset)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("1952533798;1701669204;8;23;28;23;1395879196::417", gg.TYPE_DWORD)
gg.refineNumber("28", gg.TYPE_DWORD)
local ref = gg.getResults(1)
if #ref == 0 then return nil end

local base = ref[1].address + offset
local copied = {}
for i = 0, 5 do
table.insert(copied, {address = base + i * 4, flags = gg.TYPE_DWORD})
end
return gg.getValues(copied)
end

-- 🔁 Booster dengan template salin
local function apply30DayBooster(name, offset)
  local copied = copyPatchTemplate(offset)
  if not copied then
    gg.alert(_ ("template_not_found_eventboost") .. " " .. name)
    return
  end

  gg.alert(_ ("template_copied_eventboost") .. ": " .. name)

  local target = getAddr()
  if not target then return end

  local addr = target - 0x48
  local patch = {}
  for i, v in ipairs(copied) do
    table.insert(patch, {address = addr + (i - 1) * 4, flags = gg.TYPE_DWORD, value = v.value})
  end

  local extra = {
    {0x18, 0}, {0x1C, 2592000}, {0x58, 0}, {0x60, 0}, {0x68, 0}
  }
  for _, e in ipairs(extra) do
    table.insert(patch, {address = addr + e[1], flags = gg.TYPE_DWORD, value = e[2]})
  end

  gg.setValues(patch)
  gg.toast("✅ 30-Day " .. name .. " " .. _ ("booster_applied_eventboost"))
end

-- ✅ Booster Functions
function booster1(caller) patchBooster("🎲", "Rainbow Ball", "rainbow_amount_eventboost", {{-0x48,1379101978},{-0x44,1651403105},{-0x40,1631745903},{-0x3C,27756},{-0x38,0},{-0x34,0},{-0x30,0}}, caller) end
function booster2(caller) patchBooster("💣", "Bomb", "bomb_amount_eventboost", {{-0x48,1110666508},{-0x44,6450543},{-0x40,0},{-0x3C,0},{-0x38,0},{-0x34,0},{-0x30,0}}, caller) end
function booster3(caller) patchBooster("🚀", "Rocket", "rocket_amount_eventboost", {{-0x48,1278438668},{-0x44,6647401},{-0x40,0},{-0x3C,0},{-0x38,0},{-0x34,0},{-0x30,0}}, caller) end

function booster4(caller) patchBooster("🔨", "Jackhammer", "jack_amount_eventboost", {{-0x48,1211329808},{-0x44,1701670241},{-0x40,114},{-0x3C,0},{-0x38,0},{-0x34,0},{-0x30,0}}, caller) end
function booster5(caller) patchBooster("🚿", "Hydrant", "hydrant_amount_eventboost", {{-0x48,1395879196},{-0x44,1734632812},{-0x40,1835100261},{-0x3C,7497069},{-0x38,0},{-0x34,0},{-0x30,0}}, caller) end
function booster6(caller) patchBooster("🧤", "Gloves", "gloves_amount_eventboost", {{-0x48,1194552590},{-0x44,1702260588},{-0x40,0},{-0x3C,0},{-0x38,0},{-0x34,0},{-0x30,0}}, caller) end

function booster7() patchTimedBooster("❤️", "Infinite Lives", {{-0x48,1952533798},{-0x44,1278437475},{-0x40,1936029289},{-0x3C,1718511967},{-0x38,1701669204},{-0x34,0},{-0x30,0},{-0x2C,2592000},{0x10,0},{0x18,0},{0x20,0}}) end
function booster8() patchTimedBooster("✨", "Double Points", {{-0x48,1835619372},{-0x44,1850041445},{-0x40,2037672308},{-0x3C,1635214674},{-0x38,1816224882},{-0x34,3299436},{-0x30,0},{-0x2C,2592000},{0x10,0},{0x18,0},{0x20,0}}) end

function booster9() apply30DayBooster("🎲 Rainbow Ball", -0x8) end
function booster10() apply30DayBooster("💣 Bomb", -0x70) end
function booster11() apply30DayBooster("🚀 Rocket", 0x60) end

function booster12()
  local addr = getAddr()
  if not addr then return end
  local prompt = gg.prompt({_("adventure_energy_prompt_eventboost")}, nil, {"number"})
  local energy = tonumber(prompt and prompt[1])
  if not energy or energy < 1 or energy > 100000 then
    gg.alert(_("invalid_value_energy_eventboost"))
    return
  end
  local patch = {1886938400,1953064037,1164865385,1735550318,121,0,0,energy}
  local edits = {}
  for i = 0, #patch - 1 do
    table.insert(edits, {address = addr - 0x48 + i * 4, flags = gg.TYPE_DWORD, value = patch[i + 1]})
  end
  table.insert(edits, {address = addr + 0x10, flags = gg.TYPE_DWORD, value = 0})
  table.insert(edits, {address = addr + 0x18, flags = gg.TYPE_DWORD, value = 0})
  table.insert(edits, {address = addr + 0x20, flags = gg.TYPE_DWORD, value = 0})
  gg.setValues(edits)
  gg.toast(string.format(_("toast_energy_applied_eventboost"), energy))
end

function booster13()
  local addr = getAddr()
  if not addr then return end
  local prompt = gg.prompt({_("exploder_adventure_prompt_eventboost")}, nil, {"number"})
  local amount = tonumber(prompt and prompt[1])
  if not amount or amount < 1 or amount > 5000 then
    gg.alert(_("invalid_value_exploder_eventboost"))
    return
  end
  local patch = {1886938394,1953064037,1416523625,1862292558,419456110,113,0,amount}
  local edits = {}
  for i = 0, #patch - 1 do
    table.insert(edits, {address = addr - 0x48 + i * 4, flags = gg.TYPE_DWORD, value = patch[i + 1]})
  end
  table.insert(edits, {address = addr + 0x10, flags = gg.TYPE_DWORD, value = 0})
  table.insert(edits, {address = addr + 0x18, flags = gg.TYPE_DWORD, value = 0})
  table.insert(edits, {address = addr + 0x20, flags = gg.TYPE_DWORD, value = 0})
  gg.setValues(edits)
  gg.toast(string.format(_("toast_exploder_applied_eventboost"), amount))
end

function boost2()
  local indev = dev
  local menu = gg.choice({
    "✈️ • " .. _("profitable_flight_labboost"),
    "🌾 • " .. _("rich_fields_labboost"),
    "📈 • " .. _("record_demand_labboost"),
    "🚚 • " .. _("busy_trade_labboost"),
    "🧭 • " .. _("smart_navigation_labboost"),
    "🤝 • " .. _("active_cooperation_labboost"),
    "🔥 • " .. _("efficient_smelting_labboost"),
    "🛒 • " .. _("vibrant_market_labboost"),
    "⚙️ • " .. _("high_speed_production_labboost"),
    "🌽 • " .. _("super_harvest_labboost"),
    "🌾 • " .. _("advanced_farming_labboost"),
    "💰 • " .. _("generous_customers_labboost"),
    "💡 • " .. _("see_the_light_labboost"),
    "🚀 • " .. _("shortcut_labboost"),
    "🙌 • " .. _("extra_hands_labboost"),
    "🏡 • " .. _("spacious_barn_labboost"),
    "📦 • " .. _("large_request_labboost"),
    "⛵ • " .. _("favorable_voyage_labboost"),
    "❌ • " .. _("go_back_labboost")
  }, nil, indev)

  if not menu then
    return
  end

  local actions = {
    lab1, lab2, lab3, lab4, lab5, lab6, lab7, lab8, lab9,
    lab10, lab11, lab12, lab13, lab14, lab15, lab16, lab17, lab18,
    gp5 -- index 19: kembali ke menu utama booster
  }

  if actions[menu] then
    actions[menu]()
    if menu >= 1 and menu <= 18 then
      -- opsional: efek visual atau suara bisa ditambahkan di sini
    end
  else
  end

-- Re-show the menu unless user chose "Back"
if menu ~= 19 then
while true do
if gg.isVisible(true) then
gg.setVisible(false)
boost2()
break
end
end
end
end

-- 🧱 Booster Lab: Modular Patch Functfunction applyLabBooster(label, emoji, name)
  function applyLabBooster(label, emoji, name)
  local addr = getAddr()
  if not addr then
    gg.alert(_("no_match_labboost", name))
    return
  end

  local prompt = gg.prompt({emoji .. " " .. _("enter_amount_labboost")}, nil, {"number"})
  if not prompt then
    gg.alert(_("no_amount_labboost"))
    return
  end

  local amt = tonumber(prompt[1])
  if not amt or amt < 1 or amt > 500 then
    gg.alert(_("invalid_input_labboost"))
    return
  end

  local patch = {}
  for i, val in ipairs(label) do
    table.insert(patch, {address = addr - 0x48 + (i - 1) * 4, flags = 4, value = val})
  end

  table.insert(patch, {address = addr - 0x30, flags = 4, value = 0})    -- duration
  table.insert(patch, {address = addr - 0x2C, flags = 4, value = amt})  -- amount
  for _, offset in ipairs({0x10, 0x18, 0x20}) do
    table.insert(patch, {address = addr + offset, flags = 4, value = 0})
  end

  gg.setValues(patch)
  gg.toast(emoji .. " " .. name .. " set to " .. amt .. "")
end

-- 🧬 Copy Template for Lab18
local function copyPatchTemplate(offset)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("1701081679;1919906915;49;23::", gg.TYPE_DWORD)
gg.refineNumber("23", gg.TYPE_DWORD)
local ref = gg.getResults(1)
if #ref == 0 then return nil end

local base = ref[1].address + offset
local copied = {}
for i = 0, 5 do
table.insert(copied, {address = base + i * 4, flags = gg.TYPE_DWORD})
end
return gg.getValues(copied)
end

function lab18(name, offset)
  name = name or _("unnamed_booster_labboost")
  offset = offset or -0x8

  local copied = copyPatchTemplate(offset)
  if not copied then
    gg.alert(_("ref_not_found_labboost", name))
    return
  end

  gg.alert("📋 " .. name .. " template copied")

  local addr = getAddr()
  if not addr then return end
  addr = addr - 0x48

  local patch = {}
  for i, v in ipairs(copied) do
    patch[i] = {address = addr + (i - 1) * 4, value = v.value, flags = gg.TYPE_DWORD}
  end

  patch[7] = {address = addr + 6 * 4, value = 0, flags = gg.TYPE_DWORD} -- duration

  local input = gg.prompt({"⛵ " .. _("enter_amount_labboost")}, nil, {"number"})
  local val = tonumber(input and input[1])
  if not val or val < 1 or val > 500 then
    gg.alert(_("invalid_amount_labboost"))
    return
  end

  patch[8] = {address = addr + 7 * 4, value = val, flags = gg.TYPE_DWORD}
  for _, o in ipairs({0x58, 0x5C, 0x60, 0x64, 0x68, 0x6C}) do
    table.insert(patch, {address = addr + o, value = 0, flags = gg.TYPE_DWORD})
  end

  gg.setValues(patch)
  gg.toast("⛵ " .. name .. " set to " .. val)
end

-- 🧪 Booster Lab Functions (lab1 to lab17)
function lab1()  applyLabBooster({0x6F6F4222,0x69417473,0x726F7072,0x696F4374,0x0000736E,0x00000000}, "✈️", _("lab1_labboost")) end
function lab2()  applyLabBooster({0x6F6F4226,0x70537473,0x55646565,0x72614870,0x74736576,0x00000000}, "🌾", _("lab2_labboost")) end
function lab3()  applyLabBooster({0x6F6F4222,0x70537473,0x55646565,0x64724F70,0x00007265,0x00000000}, "📈", _("lab3_labboost")) end
function lab4()  applyLabBooster({0x6F6F4224,0x70537473,0x55646565,0x61654470,0x0072656C,0x00000000}, "🚚", _("lab4_labboost")) end
function lab5()  applyLabBooster({0x6F6F4222,0x70537473,0x55646565,0x69685370,0x00007370,0x00000000}, "🧭", _("lab5_labboost")) end
function lab6()  applyLabBooster({0x6F6F4228,0x6C437473,0x65486E61,0x6552706C,0x73657571,0x00000074}, "🤝", _("lab6_labboost")) end
function lab7()  applyLabBooster({0x6F6F4222,0x69547473,0x6D53656D,0x65746C65,0x00007972,0x00000000}, "🔥", _("lab7_labboost")) end
function lab8()  applyLabBooster({0x6F6F421E,0x69547473,0x614D656D,0x74656B72,0x00000000,0x00000000}, "🛒", _("lab8_labboost")) end
function lab9()  applyLabBooster({0x6F6F4220,0x69547473,0x6146656D,0x726F7463,0x00000079,0x00000000}, "⚙️", _("lab9_labboost")) end
function lab10() applyLabBooster({0x6F6F4226,0x72507473,0x6375646F,0x72614874,0x74736576,0x00000000}, "🌽", _("lab10_labboost")) end
function lab11() applyLabBooster({0x6F6F4220,0x72507473,0x6375646F,0x72614674,0x0000006D,0x00000000}, "🌾", _("lab11_labboost")) end
function lab12() applyLabBooster({0x6F6F421E,0x6F4D7473,0x4F79656E,0x72656472,0x00000000,0x00000000}, "💰", _("lab12_labboost")) end
function lab13() applyLabBooster({0x6F6F4220,0x614C7473,0x7265746E,0x6E694D6E,0x00000065,0x00000000}, "💡", _("lab13_labboost")) end
function lab14() applyLabBooster({0x6F6F4224,0x70537473,0x55646565,0x61725470,0x00736E69,0x00000000}, "🚀", _("lab14_labboost")) end
function lab15() applyLabBooster({0x6F6F4224,0x6F447473,0x656C6275,0x74636146,0x0079726F,0x00000000}, "🙌", _("lab15_labboost")) end
function lab16() applyLabBooster({0x6F6F4228,0x74537473,0x6761726F,0x70614365,0x74696361,0x00000079}, "🏡", _("lab16_labboost")) end
function lab17() applyLabBooster({0x6F6F421C,0x614D7473,0x6E6F4478,0x00657461,0x74696361,0x00000079}, "📦", _("lab17_labboost")) end

-- ✅ Alias rw3() untuk akses dari menue3
function rw3()
  gp6("free")
end

-- ✅ Menu Kupon Utama (dipakai juga di gp8)
function gp6(caller)
  local indev = dev
  local menu = gg.choice({
    "🚚 • " .. _("coupon_loader_kuponpon"),
    "🧑‍💼 • " .. _("coupon_dealer_kuponpon"),
    "🏡 • " .. _("coupon_barn_kuponpon"),
    "🌆 • " .. _("coupon_city_kuponpon"),
    "🏭 • " .. _("coupon_factory_kuponpon"),
    "🚆 • " .. _("coupon_train_kuponpon"),
    "🏝️ • " .. _("coupon_island_kuponpon"),
    "❌ • " .. _("back_kuponpon")
  }, nil, indev)

  if not menu then
    return
  end

  local actions = {
    kupon1, kupon2, kupon3,
    kupon4, kupon5, kupon6, kupon7
  }

  if menu >= 1 and menu <= 7 then
    actions[menu](caller)
  elseif menu == 8 then
    if caller == "free" then
      menue3()
    else
      menu1()
    end
    return
  else
    return
  end

  -- ✅ Tampilkan ulang jika bukan 'Back'
  if menu ~= 8 then
    while true do
      if gg.isVisible(true) then
        gg.setVisible(false)
        gp6(caller)
        break
      end
    end
  end
end

-- 🧱 Fungsi Modular Apply Kupon
function applyCoupon(label, emoji, promptKey, maxAmount, caller, offsets)
  local addr = getAddr()
  if not addr then return end

  if caller == "free" and maxAmount > 500 then
    maxAmount = 500
  end

  local prompt = gg.prompt({emoji .. " " .. _(promptKey) .. " [1–" .. maxAmount .. "]:"}, nil, {"number"})
  local amt = tonumber(prompt and prompt[1])
  if not amt then return gg.alert(_("no_amount_kuponpon")) end
  if amt < 1 or amt > maxAmount then
    return gg.alert(_("invalid_range_kuponpon") .. " 1 – " .. maxAmount)
  end

  local edits = {}
  for k, v in pairs(offsets) do
    edits[#edits + 1] = {
      address = addr + k,
      flags = gg.TYPE_DWORD,
      value = (v == "AMT") and amt or v
    }
  end

  gg.setValues(edits)
  gg.toast(emoji .. " " .. _(label) .. ": " .. amt .. " ✅")
end

-- 🎟️ Kupon-Kupon
function kupon1(caller) applyCoupon("Loader Coupon", "🚚", "loader_coupon_kuponpon", 25000, caller, {
  [-0x48]=1970225964, [-0x44]=1282305904, [-0x40]=1415864687,
  [-0x3C]=1852399986, [-0x38]=1886546241, [-0x34]=7631471,
  [-0x30]=0, [-0x2C]="AMT", [0x10]=0, [0x18]=0, [0x20]=0
}) end

function kupon2(caller) applyCoupon("Hire Dealer Coupon", "🧑‍💼", "dealer_coupon_kuponpon", 10000, caller, {
  [-0x48]=0x756F4320, [-0x44]=0x486E6F70, [-0x40]=0x44657269,
  [-0x3C]=0x656C6165, [-0x38]=0x00000072, [-0x34]=0,
  [-0x30]=0, [-0x2C]="AMT", [0x10]=0, [0x18]=0, [0x20]=0
}) end

function kupon3(caller) applyCoupon("Barn Upgrade Coupon", "🏡", "barn_coupon_kuponpon", 5000, caller, {
  [-0x48]=1701996056, [-0x44]=1651327333, [-0x40]=1850307169,
  [-0x3C]=99, [-0x38]=0, [-0x34]=0,
  [-0x30]=0, [-0x2C]="AMT", [0x10]=0, [0x18]=0, [0x20]=0
}) end

function kupon4(caller) applyCoupon("City Expansion Coupon", "🌆", "city_coupon_kuponpon", 5000, caller, {
  [-0x48]=1701996058, [-0x44]=1886930277, [-0x40]=1769172577,
  [-0x3C]=28271, [-0x38]=0, [-0x34]=0,
  [-0x30]=0, [-0x2C]="AMT", [0x10]=0, [0x18]=0, [0x20]=0
}) end

function kupon5(caller) applyCoupon("Factory Upgrade Coupon", "🏭", "factory_coupon_kuponpon", 5000, caller, {
  [-0x48]=1970225960, [-0x44]=1433300848, [-0x40]=1634887536,
  [-0x3C]=1632003428, [-0x38]=1919906915, [-0x34]=121,
  [-0x30]=0, [-0x2C]="AMT", [0x10]=0, [0x18]=0, [0x20]=0
}) end

function kupon6(caller) applyCoupon("Train Upgrade Coupon", "🚆", "train_coupon_kuponpon", 5000, caller, {
  [-0x48]=1970225956, [-0x44]=1433300848, [-0x40]=1634887536,
  [-0x3C]=1918133604, [-0x38]=7235937, [-0x34]=120,
  [-0x30]=0, [-0x2C]="AMT", [0x10]=0, [0x18]=0, [0x20]=0
}) end

function kupon7(caller) applyCoupon("Island Upgrade Coupon", "🏝️", "island_coupon_kuponpon", 5000, caller, {
  [-0x48]=1970225958, [-0x44]=1433300848, [-0x40]=1634887536,
  [-0x3C]=1934189924, [-0x38]=1684955500, [-0x34]=0,
  [-0x30]=0, [-0x2C]="AMT", [0x10]=0, [0x18]=0, [0x20]=0
}) end
  
  -- ✅ Alias rw3() untuk akses dari menue3
function rw4()
  gp7("free")
end

function gp7(caller)
  local indev = dev
  local menu = gg.choice({
    "🟧 • " .. _("orange_gem_gemgem"),
    "🟩 • " .. _("green_gem_gemgem"),
    "🟥 • " .. _("red_gem_gemgem"),
    "❌ • " .. _("go_back_gemgem")
  }, nil, indev)

  if not menu then
    return
  end

  local actions = {gem1, gem2, gem3}
  if menu >= 1 and menu <= 3 then
    actions[menu]()
  elseif menu == 4 then
    if caller == "free" then
      menue3()
    else
      menu1()
    end
    return
  else
    return
  end

  if menu ~= 4 then
    while true do
      if gg.isVisible(true) then
        gg.setVisible(false)
        gp7(caller)
        break
      end
    end
  end
end

-- 💎 Modular Gem Reward Function (dengan batasan free max 100)
function applyGemReward(label, emoji, gemId, caller)
  local base = getAddr()
  if not base then
    return
  end

  local max = (caller == "free") and 100 or 10000
  local promptText = string.format("%s %s %s [1–%d]:", emoji, _("enter_amount_gemgem"), label, max)
  local p = gg.prompt({promptText}, nil, {"number"})
  local val = tonumber(p and p[1])

  if not val then
    gg.alert(_("no_input_gemgem"))
    return
  end

  if val < 1 or val > max then
    gg.alert(_("invalid_input_gemgem") .. max .. ".")
    return
  end

  local a = {}
  local function dw(offset, v)
    table.insert(a, {address = base + offset, flags = gg.TYPE_DWORD, value = v})
  end

  dw(-0x48, 1835362056)
  dw(-0x44, gemId)
  for _, o in ipairs({-0x40, -0x3C, -0x38, -0x34, -0x30}) do dw(o, 0) end
  dw(-0x2C, val)
  dw(0x10, 0)
  dw(0x18, 0)
  dw(0x20, 0)

  gg.setValues(a)
  gg.toast(string.format("%s %s %s %s 💎", emoji, label, _("reward_set_gemgem"), val))
end

-- 🔸 Specific Gem Wrappers
function gem1(caller) applyGemReward(_("orange_gem_gemgem"), "🟧", 49, caller) end
function gem2(caller) applyGemReward(_("green_gem_gemgem"),  "🟩", 50, caller) end
function gem3(caller) applyGemReward(_("red_gem_gemgem"),    "🟥", 51, caller) end
  
  function gp8()
  local title = banner
  local menu = gg.choice({
    "🏅 • " .. _("metal_ingots_materialyal"),
    "⛏️ • " .. _("mining_tools_materialyal"),
    "🧰 • " .. _("community_tools_materialyal"),
    "🏡 • " .. _("barn_tools_materialyal"),
    "🚧 • " .. _("expansion_tools_materialyal"),
    "❌ • " .. _("go_back_materialyal")
  }, nil, title)

  if menu == nil then
    return
  elseif menu == 1 then tools1()
  elseif menu == 2 then tools2()
  elseif menu == 3 then tools3()
  elseif menu == 4 then tools4()
  elseif menu == 5 then tools5()
  elseif menu == 6 then menu1()
  else
  end
end

-- ✅ Alias rw2 untuk Free Script
function rw1()
  tools1("free")
end

function tools1(caller)
  local indev = dev
  _G.ingotCaller = caller -- Simpan caller secara global

  local menu = gg.choice({
    "🥉 • " .. _("bronze_ingot_batangtang"),
    "🥈 • " .. _("silver_ingot_batangtang"),
    "🥇 • " .. _("gold_ingot_batangtang"),
    "🏅 • " .. _("platinum_ingot_batangtang"),
    "❌ • " .. _("go_back_batangtang")
  }, nil, indev)

  if menu == nil then
    return
  end

  local actions = {
    batang1, batang2, batang3, batang4
  }

  if menu >= 1 and menu <= 4 then
    actions[menu]()
  elseif menu == 5 then
    -- Kembali ke menu sesuai asal
    if caller == "free" then
      menue3()
    else
      gp8()
    end
    return
  else
    return
  end

  -- Tampilkan ulang jika bukan tombol "Go Back"
  while true do
    if gg.isVisible(true) then
      gg.setVisible(false)
      tools1(caller)
      break
    end
  end
end

-- ✅ Fungsi utama untuk memberi reward Ingot
function applyIngotReward(labelKey, emoji, hexes)
  local base = getAddr()
  if not base then return end

  local maxval = _G.ingotCaller == "free" and 100 or 5000
  local prompt = gg.prompt({
    emoji .. " " .. _( "enter_amount_batangtang") .. " " .. _(labelKey) .. " [1–" .. maxval .. "]:"
  }, nil, {"number"})
  local val = tonumber(prompt and prompt[1])

  if not val or val < 1 or val > maxval then
    if val then
      gg.alert(_( "invalid_input_batangtang") .. "\n" .. _( "invalid_range_batangtang") .. " 1–" .. maxval .. ".")
    else
      gg.alert(_( "no_input_batangtang"))
    end
    return
  end

  local a, offsets = {}, {-0x48, -0x44, -0x40, -0x3C, -0x38, -0x34}
  for i, v in ipairs(hexes) do
    a[#a + 1] = {address = base + offsets[i], flags = gg.TYPE_DWORD, value = v}
  end

  -- Patch tambahan
  local patch = {
    {-0x30, 0},
    {-0x2C, val},
    {0x10, 0},
    {0x18, 0},
    {0x20, 0}
  }
  for _, v in ipairs(patch) do
    a[#a + 1] = {address = base + v[1], flags = gg.TYPE_DWORD, value = v[2]}
  end

  gg.setValues(a)
  gg.toast(emoji .. " " .. _(labelKey) .. " " .. _( "set_to_batangtang") .. ": " .. val .. " ✅")
end

-- ✅ Fungsi-fungsi ingot individual
function batang1()
  applyIngotReward("bronze", "🥉", {
    0x6F724228, 0x42657A6E, 0x696C6C75,
    0x6F436E6F, 0x65746E75, 0x00000072
  })
end

function batang2()
  applyIngotReward("silver", "🥈", {
    0x6C695328, 0x42726576, 0x696C6C75,
    0x6F436E6F, 0x65746E75, 0x00000072
  })
end

function batang3()
  applyIngotReward("gold", "🥇", {
    0x6C6F4724, 0x6C754264, 0x6E6F696C,
    0x6E756F43, 0x00726574, 0x00000000
  })
end

function batang4()
  applyIngotReward("platinum", "🏅", {
    0x616C502C, 0x756E6974, 0x6C75426D,
    0x6E6F696C, 0x6E756F43, 0x00726574
  })
end

-- ✅ Alias rw2() untuk akses dari menue3
function rw2()
  tools2("free")
end

-- ✅ tools2 juga dipakai di gp8
function tools2(caller)
  local indev = dev
  local options, actions = {}, {}

  -- Tambahkan item normal
  table.insert(options, "⛏️ • " .. _("pickaxe_macul"))
  table.insert(actions, altam1)
  table.insert(options, "🧨 • " .. _("tnt_macul"))
  table.insert(actions, altam2)
  table.insert(options, "💣 • " .. _("dynamite_macul"))
  table.insert(actions, altam3)

  -- Bonus hanya untuk premium
  if caller ~= "free" then
    table.insert(options, "🔁 • " .. _("x2_ore_bonus_macul"))
    table.insert(actions, altam4)
  end

  table.insert(options, "❌ • " .. _("go_back_macul"))

  local subMenu = gg.choice(options, nil, indev)

  if subMenu == nil then
    return
  end

  if subMenu >= 1 and subMenu <= #actions then
    actions[subMenu](caller)
  elseif subMenu == #options then
    if caller == "free" then
      menue3()
    else
      gp8()
    end
    return
  else
    return
  end

  -- Auto refresh menu
  while true do
    if gg.isVisible(true) then
      gg.setVisible(false)
      tools2(caller)
      break
    end
  end
end

-- 🎯 Modular Mining Tools Reward
function applyMiningReward(label, emoji, itemId, caller, duration)
  local base = getAddr()
  if not base then
    return
  end

  local edits = {}
  local val

  local function dw(off, v)
    table.insert(edits, {address = base + off, flags = gg.TYPE_DWORD, value = v})
  end

  if duration then
    -- 30-Day Bonus Patch
    dw(-0x48, 1835619372)
    dw(-0x44, 1850041445)
    dw(-0x40, 2037672308)
    dw(-0x3C, 1635214674)
    dw(-0x38, 1766679666)
    dw(-0x34, itemId)
    dw(-0x30, 0)
    dw(-0x2C, duration)
    val = duration
  else
    local max = (caller == "free") and 500 or 25000
    local input = gg.prompt({emoji .. " " .. _("mining_prompt_macul") .. " " .. label .. " [1–" .. max .. "]:"}, nil, {"number"})
    val = tonumber(input and input[1])
    if not val then
      gg.alert(_("cancel_input_macul"))
      return
    end
    if val < 1 or val > max then
      gg.alert(_("invalid_input_macul") .. " 1 - " .. max .. ".")
      return
    end

    -- Normal Item Patch
    dw(-0x48, itemId)
    for i = -0x44, -0x30, 4 do dw(i, 0) end
    dw(-0x2C, val)
  end

  -- Clean-up
  dw(0x10, 0)
  dw(0x18, 0)
  dw(0x20, 0)

  gg.setValues(edits)

  if duration then
    gg.toast(emoji .. " " .. label .. " " .. _("success_bonus_macul"))
  else
    gg.toast(emoji .. " " .. label .. " set to: " .. val .. " ✅")
  end
end

-- 🧱 Modular Calls
function altam1(caller) applyMiningReward(_("pickaxes_macul"),  "⛏️", 3304708, caller) end
function altam2(caller) applyMiningReward(_("tnt_macul"),       "🧨", 3239172, caller) end
function altam3(caller) applyMiningReward(_("dynamite_macul"),  "💣", 3370244, caller) end
function altam4(caller) applyMiningReward(_("ore_bonus_macul"), "🔁", 3237230, caller, 2592000) end

-- ✅ Alias rw7() untuk akses dari menue3
function rw6()
  tools3("free")
end

-- ✅ tools3 digunakan di gp8
function tools3(caller)
  local indev = dev
  local menu = gg.choice({
    "🪟 • " .. _("glass_matdung"),
    "🧱 • " .. _("bricks_matdung"),
    "🪵 • " .. _("slab_matdung"),
    "🔨 • " .. _("jackhammer_matdung"),
    "⚙️ • " .. _("electric_saw_matdung"),
    "🪛 • " .. _("drill_matdung"),
    "❌ • " .. _("back_matdung")
  }, nil, indev)

  if not menu then
    return
  end

  local actions = {
    gekom1, gekom2, gekom3, gekom4, gekom5, gekom6
  }

  if menu >= 1 and menu <= 6 then
    actions[menu](caller)
  elseif menu == 7 then
    if caller == "free" then
      menue3()
    else
      gp8()
    end
    return
  else
    return
  end

  -- ✅ Tampilkan ulang hanya jika bukan "Back"
  if menu ~= 7 then
    while true do
      if gg.isVisible(true) then
        gg.setVisible(false)
        tools3(caller)
        break
      end
    end
  end
end

-- ✅ Fungsi modular hadiah konstruksi
function applyConstructReward(label, emoji, hexList, caller)
  local base = getAddr()
  if not base then return end

  local max = (caller == "free") and 100 or 5000
  local promptText = _("input_construct_matdung"):gsub("{label}", label):gsub("{max}", max)
  local prompt = gg.prompt({emoji .. " " .. promptText}, nil, {"number"})
  local amount = tonumber(prompt and prompt[1])

  if not amount then
    gg.alert(_("no_amount_matdung"))
    return
  end

  if amount < 1 or amount > max then
    local msg = _("invalid_input_matdung"):gsub("{max}", max)
    gg.alert(msg)
    return
  end

  local edits = {}
  for _, hex in ipairs(hexList) do
    local addr = base + hex[1]
    local val = (hex[2] == "amount") and amount or hex[2]
    table.insert(edits, {address = addr, flags = gg.TYPE_DWORD, value = val})
  end

  gg.setValues(edits)

  local msg = _("reward_set_matdung"):gsub("{emoji}", emoji):gsub("{label}", label):gsub("{amount}", amount)
  gg.toast(msg)
end

-- ✅ Fungsi hadiah spesifik
function gekom1(caller) applyConstructReward(_("glass_matdung"), "🪟", {
  {-0x48, 0x616C470A}, {-0x44, 0x00007373}, {-0x40, 0xA4A23A90},
  {-0x3C, 0x8EFCC1BB}, {-0x38, 0x23330000}, {-0x34, 0x6F},
  {-0x30, 0}, {-0x2C, "amount"}, {0x10, 0}, {0x18, 0}, {0x20, 0}
}, caller) end

function gekom2(caller) applyConstructReward(_("bricks_matdung"), "🧱", {
  {-0x48, 0x6972420A}, {-0x44, 0x00006B63}, {-0x40, 0}, {-0x3C, 0},
  {-0x38, 0}, {-0x34, 0}, {-0x30, 0}, {-0x2C, "amount"}, {0x10, 0},
  {0x18, 0}, {0x20, 0}
}, caller) end

function gekom3(caller) applyConstructReward(_("slabs_matdung"), "🪵", {
  {-0x48, 0x696C500A}, {-0x44, 0x00006174}, {-0x40, 0}, {-0x3C, 0},
  {-0x38, 0}, {-0x34, 0}, {-0x30, 0}, {-0x2C, "amount"}, {0x10, 0},
  {0x18, 0}, {0x20, 0}
}, caller) end

function gekom4(caller) applyConstructReward(_("jackhammer_matdung"), "🔨", {
  {-0x48, 1667328532}, {-0x44, 1835100267}, {-0x40, 7497069}, {-0x3C, 0},
  {-0x38, 0}, {-0x34, 0}, {-0x30, 0}, {-0x2C, "amount"}, {0x10, 0},
  {0x18, 0}, {0x20, 0}
}, caller) end

function gekom5(caller) applyConstructReward(_("saw_matdung"), "⚙️", {
  {-0x48, 2003791888}, {-0x44, 1634955877}, {-0x40, 119}, {-0x3C, 0},
  {-0x38, 0}, {-0x34, 0}, {-0x30, 0}, {-0x2C, "amount"}, {0x10, 0},
  {0x18, 0}, {0x20, 0}
}, caller) end

function gekom6(caller) applyConstructReward(_("drill_matdung"), "🪛", {
  {-0x48, 1769104394}, {-0x44, 1627417708}, {-0x40, 119}, {-0x3C, 0},
  {-0x38, 0}, {-0x34, 0}, {-0x30, 0}, {-0x2C, "amount"}, {0x10, 0},
  {0x18, 0}, {0x20, 0}
}, caller) end

function tools4()
  local indev = dev
  local menu = gg.choice({
    "🔨 • " .. _("hammer_gudangdang"),
    "📍 • " .. _("nail_gudangdang"),
    "🪣 • " .. _("red_paint_gudangdang"),
    "❌ • " .. _("go_back_gudangdang")
  }, nil, indev)

  if menu == nil then
    return
  end

  local actions = {
    lumbung1, -- Hammer
    lumbung2, -- Nail
    lumbung3, -- Red Paint
    gp8       -- Back
  }

  if actions[menu] then
    actions[menu]()
    if menu >= 1 and menu <= 3 then
    end
  else
    return
  end

  if menu ~= 4 then
    while true do
      if gg.isVisible(true) then
        gg.setVisible(false)
        tools4()
        break
      end
    end
  end
end

-- 🛠 Fungsi apply barn reward
function applyBarnReward(labelKey, emoji, hex1, hex2, hex3)
  local base = getAddr()
  if not base then return end

  local p = gg.prompt({emoji .. " " .. _( "enter_amount_gudangdang" ) .. " " .. _( labelKey ) .. ":"}, nil, {"number"})
  local amount = tonumber(p and p[1])
  if not amount or amount < 1 or amount > 5000 then
    gg.alert(_( "invalid_input_gudangdang" ))
    return
  end

  local patch = {
    {address = base - 0x48, flags = gg.TYPE_DWORD, value = hex1},
    {address = base - 0x44, flags = gg.TYPE_DWORD, value = hex2},
    {address = base - 0x40, flags = gg.TYPE_DWORD, value = hex3},
    {address = base - 0x2C, flags = gg.TYPE_DWORD, value = amount},
    {address = base + 0x10, flags = gg.TYPE_DWORD, value = 0},
    {address = base + 0x18, flags = gg.TYPE_DWORD, value = 0},
    {address = base + 0x20, flags = gg.TYPE_DWORD, value = 0}
  }

  for o = 0x3C, 0x30, -4 do
    table.insert(patch, {address = base - o, flags = gg.TYPE_DWORD, value = 0})
  end

  gg.setValues(patch)
  gg.toast(emoji .. " " .. _(labelKey) .. " " .. _( "barn_reward_set_gudangdang" ) .. ": " .. amount .. " ✅")
end

-- 📦 Item lumbung
function lumbung1()
  applyBarnReward("hammers_gudangdang", "🔨", 0x6D616812, 0x4D72656D, 0x00007461)
end

function lumbung2()
  applyBarnReward("nails_gudangdang", "📍", 0x69616E0E, 0x74614D6C, 0x00000000)
end

function lumbung3()
  applyBarnReward("red_paint_gudangdang", "🪣", 0x69617016, 0x6552746E, 0x74614D64)
end

function tools5()
  local indev = dev
  local menu = gg.choice({
    "🪚 • " .. _("saw_waswas" ),
    "🪓 • " .. _("axe_waswas" ),
    "⛏️ • " .. _("shovel_waswas" ),
    "❌ • " .. _("go_back_waswas" )
  }, nil, indev)

  if menu == nil then
    return
  end

  local actions = {
    luas1,    -- Saw
    luas2,    -- Axe
    luas3,    -- Shovel
    gp8       -- Back
  }

  if actions[menu] then
    actions[menu]()
    if menu >= 1 and menu <= 3 then
      -- bisa tambahkan aksi lain di sini kalau perlu
    end
  else
    return
  end

  -- Tampilkan ulang menu jika bukan Back
  if menu ~= 4 then
    while true do
      if gg.isVisible(true) then
        gg.setVisible(false)
        tools5()
        break
      end
    end
  end
end

function applyExpansionReward(labelKey, emoji, toolId, metaVal)
    local base = getAddr()
    if not base then return end

    local label = _(labelKey)
    local p = gg.prompt({emoji .. " " .. _("enter_amount_waswas") .. " " .. label}, nil, {"number"})

    local amount = tonumber(p and p[1])
    if not amount or amount < 1 or amount > 5000 then
        gg.alert(_("invalid_input_waswas"))
        return
    end

    local patch = {
        {address = base - 0x48, flags = gg.TYPE_DWORD, value = toolId},
        {address = base - 0x2C, flags = gg.TYPE_DWORD, value = amount},
        {address = base + 0x10, flags = gg.TYPE_DWORD, value = 0},
        {address = base + 0x18, flags = gg.TYPE_DWORD, value = 0},
        {address = base + 0x20, flags = gg.TYPE_DWORD, value = 0}
    }

    if metaVal then
        table.insert(patch, {address = base - 0x44, flags = gg.TYPE_DWORD, value = metaVal})
        for o = 0x40, 0x30, -4 do
            table.insert(patch, {address = base - o, flags = gg.TYPE_DWORD, value = 0})
        end
    else
        for o = 0x44, 0x30, -4 do
            table.insert(patch, {address = base - o, flags = gg.TYPE_DWORD, value = 0})
        end
    end

    gg.setValues(patch)
    gg.toast(emoji .. " " .. label .. " " .. _("reward_set_waswas") .. ": " .. amount .. " ✅")
end

-- 🔧 Tool Reward Functions
function luas1() applyExpansionReward("saw_waswas", "🪚", 1414419462) end
function luas2() applyExpansionReward("axe_waswas", "🪓", 1702387974) end
function luas3() applyExpansionReward("shovel_waswas", "⛏️", 1667854344, 107) end

-- 🔹 Fungsi menu rw7
function rw7()
  gp9("free")
end

-- 🔹 Fungsi utama gp9 dengan multi bahasa
function gp9(caller)
  local indev = dev
  local isPremium = (caller ~= "free")

  -- Susun menu sesuai status premium
  local menuLabels = {
    _("express_plane_keuntungan"),
    _("instant_crop_keuntungan"),
    _("fast_farm_keuntungan"),
  }

  if isPremium then
    table.insert(menuLabels, _("instant_build_keuntungan"))
    table.insert(menuLabels, _("unlimited_barn_keuntungan"))
  end

  table.insert(menuLabels, _("train_booster_keuntungan"))
  table.insert(menuLabels, _("double_train_keuntungan"))
  table.insert(menuLabels, _("go_back_keuntungan"))

  local menu = gg.choice(menuLabels, nil, indev)
  if not menu then
    return
  end

  local actions = {
    perk1,  -- Express Plane
    perk2,  -- Instant Crop
    perk3,  -- Fast Farm
  }

  if isPremium then
    table.insert(actions, perk4) -- Instant Build
    table.insert(actions, perk5) -- Unlimited Barn
  end

  table.insert(actions, perk6) -- Train Booster
  table.insert(actions, perk7) -- Double Train

  if menu >= 1 and menu <= #actions then
    actions[menu](caller)
  elseif menu == #menuLabels then
    if caller == "free" then
      menue3()
    else
      menu1()
    end
    return
  else
    return
  end

  if menu ~= #menuLabels then
    while true do
      if gg.isVisible(true) then
        gg.setVisible(false)
        gp9(caller)
        break
      end
    end
  end
end

-- 📌 Fungsi umum apply perk
function applyPerk(labelKey, emoji, values)
  local base = getAddr()
  if not base then return end

  local addrList = {}
  for _, item in ipairs(values) do
    table.insert(addrList, {
      address = base + item.offset,
      flags = gg.TYPE_DWORD,
      value = item.value
    })
  end

  gg.setValues(addrList)
  gg.toast(emoji .. " " .. _(labelKey) .. " " .. _("perk_applied_keuntungan"))
end

function applyCopiedPerk(labelKey, emoji, matchValue, extraValues, customInput)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("1852793872;1600484449;23;24::201", gg.TYPE_DWORD)
  gg.refineNumber(matchValue, gg.TYPE_DWORD)
  local src = gg.getResults(1)
  if #src == 0 then
    gg.alert(_"source_not_found")
    return
  end

  local base = src[1].address - 0x8
  local copy = {}
  for i = 0, 5 do
    table.insert(copy, {address = base + i * 4, flags = gg.TYPE_DWORD})
  end
  copy = gg.getValues(copy)

  local tgt = getAddr()
  if not tgt then return end

  local addr = tgt - 0x48
  local newValues = {}

  for i, val in ipairs(copy) do
    table.insert(newValues, {
      address = addr + (i - 1) * 4,
      value = val.value,
      flags = gg.TYPE_DWORD
    })
  end

  for _, v in ipairs(extraValues or {}) do
    table.insert(newValues, {
      address = addr + v.offset,
      value = v.value,
      flags = gg.TYPE_DWORD
    })
  end

  if customInput then
    local input = gg.prompt({emoji .. " " .. _(customInput.prompt)}, nil, {"number"})
    if not input then return end
    local amount = tonumber(input[1])
    if not amount or amount < customInput.min or amount > customInput.max then
      gg.alert("🚫 " .. _(customInput.prompt))
      return
    end
    table.insert(newValues, {
      address = addr + customInput.offset,
      value = amount,
      flags = gg.TYPE_DWORD
    })
  end

  gg.setValues(newValues)
  gg.toast(emoji .. " " .. _(labelKey) .. " " .. _("perk_applied_keuntungan"))
end

-- 📌 Perk functions multi bahasa
function perk1()
  applyPerk("perk_express_plane_keuntungan", "✈️", {
    {offset = -0x48, value = 1599099684},
    {offset = -0x44, value = 1936682818},
    {offset = -0x40, value = 1701860212},
    {offset = -0x3C, value = 1884644453},
    {offset = -0x38, value = 7498049},
    {offset = -0x34, value = 7631717},
    {offset = -0x30, value = 0},
    {offset = -0x2C, value = 100},
    {offset = 0x10, value = 0},
    {offset = 0x18, value = 0},
    {offset = 0x20, value = 0}
  })
end

function perk2()
  applyPerk("perk_instant_crop_keuntungan", "🌾", {
    {offset = -0x48, value = 1599099692},
    {offset = -0x44, value = 1936682818},
    {offset = -0x40, value = 1701860212},
    {offset = -0x3C, value = 1884644453},
    {offset = -0x38, value = 1987207496},
    {offset = -0x34, value = 7631717},
    {offset = -0x30, value = 0},
    {offset = -0x2C, value = 100},
    {offset = 0x10, value = 0},
    {offset = 0x18, value = 0},
    {offset = 0x20, value = 0}
  })
end

function perk3()
  applyPerk("perk_rapid_farm_keuntungan", "🐄", {
    {offset = -0x48, value = 1599099688},
    {offset = -0x44, value = 1936682818},
    {offset = -0x40, value = 1701860212},
    {offset = -0x3C, value = 1884644453},
    {offset = -0x38, value = 1836212550},
    {offset = -0x34, value = 7602291},
    {offset = -0x30, value = 0},
    {offset = -0x2C, value = 100},
    {offset = 0x10, value = 0},
    {offset = 0x18, value = 0},
    {offset = 0x20, value = 0}
  })
end

function perk4()
  applyCopiedPerk("perk_instant_building_keuntungan", "🏗️", 24, {
    {offset = 24, value = 0},
    {offset = 0x58, value = 0},
    {offset = 0x60, value = 0},
    {offset = 0x68, value = 0},
    {offset = 28, value = 100}
  })
end

function perk5()
  applyCopiedPerk("perk_unlimited_barn_keuntungan", "🏡", 23, {
    {offset = 24, value = 0},
    {offset = 0x58, value = 0},
    {offset = 0x60, value = 0},
    {offset = 0x68, value = 0}
  }, {
    prompt = "enter_barn_boost_keuntungan",
    offset = 28,
    min = 1,
    max = 20000
  })
end

function perk6()
  applyPerk("perk_train_boost_keuntungan", "🚆", {
    {offset = -0x48, value = 0x5F50532A},
    {offset = -0x44, value = 0x736F6F42},
    {offset = -0x40, value = 0x65705374},
    {offset = -0x3C, value = 0x70556465},
    {offset = -0x38, value = 0x69617254},
    {offset = -0x34, value = 0x0000736E},
    {offset = -0x30, value = 0},
    {offset = -0x2C, value = 3},
    {offset = 0x10, value = 0},
    {offset = 0x18, value = 0},
    {offset = 0x20, value = 0}
  })
end

function perk7()
  applyPerk("perk_double_train_keuntungan", "🚃", {
    {offset = -0x48, value = 0x5F505322},
    {offset = -0x44, value = 0x736F6F42},
    {offset = -0x40, value = 0x61725474},
    {offset = -0x3C, value = 0x614D6E69},
    {offset = -0x38, value = 0x4A007374},
    {offset = -0x34, value = 0x00000078},
    {offset = -0x30, value = 0},
    {offset = -0x2C, value = 3},
    {offset = 0x10, value = 0},
    {offset = 0x18, value = 0},
    {offset = 0x20, value = 0}
  })
end
  
function gp3()
  local title = banner
  local menu = gg.choice({
  "🎍 • Decoration Collection",
  "🚛 • Transport Skins",
  "🪧 • City Town Sign",
  "🧩 • Stickers",
  "🖼️ • Frame Style",
  "👤 • Avatar List",
  "🎖️ • Bagde Collection",
  "❌ • Go Back"
}, nil, title)

  if menu == nil then
    return
    elseif menu == 1 then minidekor()
  elseif menu == 2 then kums1()
  elseif menu == 3 then kums2()
  elseif menu == 4 then kums3()
  elseif menu == 5 then kums4()
  elseif menu == 6 then kums5()
  elseif menu == 7 then kums6()
  elseif menu == 8 then menu1()
  end
end

function minidekor()
local indev = dev
  local menu = gg.choice({
"🎄 • Christmas Decoration",
"🏮 • Lantern Decoration",
"🐰 • Easter Decoration",
"💘 • Valentine Decoration",
"🎃 • Halloween Decoration",
"🏺 • Egypt Decoration",
"🌟 • Exclusive Decoration",
  "❌ • Go Back"
  }, nil, indev)

    if menu == nil then
    return
  elseif menu == 1 then coldekor1()
  elseif menu == 2 then coldekor2()
  elseif menu == 3 then coldekor3()
  elseif menu == 4 then coldekor4()
  elseif menu == 5 then coldekor5()
  elseif menu == 6 then coldekor6()
  elseif menu == 7 then coldekor7()
  elseif menu == 8 then gp3()
  end
end

-- ✨ Placeholder for unavailable decorations
local function dekorNotAvailable()
  gg.alert("⚠️ This decoration is not available yet.\nPlease wait for the next update.\n\nThank you!")
  minidekor()
end

function coldekor1()
  dekorNotAvailable()
end

function coldekor5()
  dekorNotAvailable()
end

function coldekor6()
  dekorNotAvailable()
end

function coldekor2()
  while true do
    gg.setVisible(false)
    gg.clearResults()

    local skins = {
"🏮 • Paper Lanterns",
"🏯 • Chinese House",
"🌳 • Lantern Tree",
"🐠 • Goldfish",
"🐒 • Monkey Statue",
"🐉 • Red Dragon",
"🐕 • Yellow Dog",
"🦁 • Chinese Lion",
"🐱 • Maneki-neko",
"🌉 • Red Bridge",
"🐸 • Money Toad",
"🥣 • Bowl of Wealth",
"🎉 • New Year Symbol",
"🐲 • Dragon Dance",
  "❌ • Go Back"
    }

    local choice = gg.multiChoice(
      skins,
      nil,
      "🏮 Lantern Decoration"
    )

    if not choice then
      return
    end

    -- 🔙 Back option
    if choice[15] then
      if type(minidekor) == "function" then
        minidekor()
      else
      end
      return
    end

    -- 🔁 Process selected avatars one by one
    for i = 1, 14 do
      if choice[i] then
        local func = _G["lenterndek" .. i]
        if type(func) == "function" then
          func()
          gg.toast("✅ Lantern " .. i .. " Decoration applied.\n👉 Claim it in-freeze reward!")

          -- ⏸️ Wait for user to press GG icon before continuing
          repeat
            gg.sleep(500)
          until gg.isVisible(true)

          gg.setVisible(false)
        else
          gg.alert("❌ Function Lantern Decoration " .. i .. "() not found!")
        end
      end
    end

    gg.toast("🎉 All selected Lantern Decoration have been processed!")
    -- 🔄 Setelah selesai → otomatis balik ke menu lagi
  end
end

-- 📁 Cache & File Setup
local folder = "/sdcard/ARH_Cache/"
local fileAddr = folder .. "addresscache.txt"
local function deleteFile(p) pcall(function() os.remove(p) end) end
gg.setVisible(false)

-- 📍 Get Lantern Decoration Address
function getAddr()
  local f = io.open(fileAddr, "r")
  local addr = f and tonumber(f:read("*l")) or nil
  if f then f:close() end

  if addr then
    local chk = gg.getValues({{address = addr, flags = gg.TYPE_DWORD}})
    if chk and chk[1] and chk[1].value == 30 then return addr end
    deleteFile(fileAddr)
    gg.toast("👑 ARH-Cache cleared")
  end

  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("1768440596;6778692;1769300575::37", gg.TYPE_DWORD)
  gg.refineNumber("1769300575", gg.TYPE_DWORD)
  local r = gg.getResults(1)
  if #r == 0 then gg.alert("❌ Address not found.\nOpen lantern decoration first.") return nil end

  local newAddr = r[1].address
  local save = io.open(fileAddr, "w")
  if save then save:write(newAddr) save:close() end
  return newAddr
end

-- 📦 Lantern Decoration Source Base
local baseLanternAddr = nil
function initLanternDecorationSearch()
  if baseLanternAddr then return true end
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("1768440596;6778692;1769300575::37", gg.TYPE_DWORD)
  gg.refineNumber("1769300575", gg.TYPE_DWORD)
  local r = gg.getResults(1)
  if #r == 0 then gg.alert("❌ Lantern decoration structure not found.") return false end
  baseLanternAddr = r[1].address
  return true
end

-- 🏮 Apply Lantern Decoration
function lanterndecor(offset, label, emoji)
  if not initLanternDecorationSearch() then return end
  local src = baseLanternAddr + offset
  local vals = {}
  for i = 0, 5 do
    table.insert(vals, {address = src + i * 4, flags = gg.TYPE_DWORD})
  end
  vals = gg.getValues(vals)

  local target = getAddr()
  if not target then return end
  target = target - 0x48

  local newVals = {}
  for i, v in ipairs(vals) do
    table.insert(newVals, {address = target + (i - 1) * 4, value = v.value, flags = gg.TYPE_DWORD})
  end

  table.insert(newVals, {address = target + 24, value = 0, flags = gg.TYPE_DWORD})
  table.insert(newVals, {address = target + 28, value = 1, flags = gg.TYPE_DWORD})
  for _, off in ipairs({0x58, 0x5C, 0x60, 0x64, 0x68, 0x6C}) do
    table.insert(newVals, {address = target + off, value = 0, flags = gg.TYPE_DWORD})
  end

  gg.setValues(newVals)
  gg.toast(emoji .. " " .. label .. " lantern decoration applied!")
end

function lenterndek1()  lanterndecor(-0x204, "Paper Lanterns", "🏮") end
function lenterndek2()  lanterndecor(-0x1b4, "Chinese House", "🏯") end
function lenterndek3()  lanterndecor(-0x164, "Lantern Tree", "🌳") end
function lenterndek4()  lanterndecor(-0x114, "Goldfish", "🐠") end
function lenterndek5()  lanterndecor(-0xC4, "Monkey Statue", "🐒") end
function lenterndek6()  lanterndecor(-0x74, "Red Dragon", "🐉") end
function lenterndek7()  lanterndecor(-0x24, "Yellow Dog", "🐕") end
function lenterndek8()  lanterndecor(0x2c, "Chinese Lion", "🦁") end
function lenterndek9()  lanterndecor(0x7c, "Maneki-neko", "🐱") end
function lenterndek10() lanterndecor(0xCC, "Red Bridge", "🌉") end
function lenterndek11() lanterndecor(0x11c, "Money Toad", "🐸") end
function lenterndek12() lanterndecor(0x16c, "Bowl of Wealth", "🥣") end
function lenterndek13() lanterndecor(0x1bc, "New Year Symbol", "🎉") end
function lenterndek14() lanterndecor(0x20c, "Dragon Dance", "🐲") end

function coldekor3()
  while true do
    gg.setVisible(false)
    gg.clearResults()

    local skins = {
"🥚 • Faberge Egg (Red)",
"🍫 • Chocolate Fountain",
"🐇 • Easter Bunny's House",
"🎨 • Throes of Art",
"🌸 • Spring",
"⛲ • Easter Fountain",
"🚧 • Easter Fence",
"🧸 • Stuffed Bunny",
"🌳 • Easter Topiary",
"🎁 • Cart Full of Gifts",
"🌲 • Easter Tree",
"🥚 • Egg Topiary",
"🥚 • Faberge Egg (Blue)",
"🐇 • Talented Bunny Statue",
"🏭 • Easter Workshop",
"⛵ • Boat Ride Attraction",
"🚂 • Easter Railway",
"🛏️ • Easter Hammock",
"🍇 • Vineyard",
"🏠 • Rabbit's House",
"🍄 • Mushroom Stump",
"💡 • Flower Lamppost",
"💎 • Rabbit Treasure",
  "❌ • Go Back"
    }

    local choice = gg.multiChoice(
      skins,
      nil,
      "🐰 Easter Decoration"
    )

    if not choice then 
      return
    end

    -- 🔙 Back option
    if choice[24] then
      if type(minidekor) == "function" then
        minidekor()
      else
      end
      return
    end

    -- 🔁 Process selected avatars one by one
    for i = 1, 23 do
      if choice[i] then
        local func = _G["eastdek" .. i]
        if type(func) == "function" then
          func()
          gg.toast("✅ Easter " .. i .. " Decoration applied.\n👉 Claim it in-freeze reward!")

          -- ⏸️ Wait for user to press GG icon before continuing
          repeat
            gg.sleep(500)
          until gg.isVisible(true)

          gg.setVisible(false)
        else
          gg.alert("❌ Function Easter Decoration " .. i .. "() not found!")
        end
      end
    end

    gg.toast("🎉 All selected Easter Decoration have been processed!")
    -- 🔄 Setelah selesai → otomatis balik ke menu lagi
  end
end

-- 📁 Cache & File Setup
local folder = "/sdcard/ARH_Cache/"
local fileAddr = folder .. "addresscache.txt"
local function deleteFile(p) pcall(function() os.remove(p) end) end
gg.setVisible(false)

-- 📍 Get Easter Decoration Address
function getAddr()
  local f = io.open(fileAddr, "r")
  local addr = f and tonumber(f:read("*l")) or nil
  if f then f:close() end

  if addr then
    local chk = gg.getValues({{address = addr, flags = gg.TYPE_DWORD}})
    if chk and chk[1] and chk[1].value == 30 then return addr end
    deleteFile(fileAddr)
    gg.toast("👑 ARH-Cache cleared")
  end

  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("1818318362;1801413998;1769300575::37", gg.TYPE_DWORD)
  gg.refineNumber("1769300575", gg.TYPE_DWORD)
  local r = gg.getResults(1)
  if #r == 0 then gg.alert("❌ Address not found.\nOpen easter decoration first.") return nil end

  local newAddr = r[1].address
  local save = io.open(fileAddr, "w")
  if save then save:write(newAddr) save:close() end
  return newAddr
end

-- 📦 Easter Decoration Source Base
local baseEasterAddr = nil
function initEasterDecorationSearch()
  if baseEasterAddr then return true end
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("1818318362;1801413998;1769300575::37", gg.TYPE_DWORD)
  gg.refineNumber("1769300575", gg.TYPE_DWORD)
  local r = gg.getResults(1)
  if #r == 0 then gg.alert("❌ Easter decoration structure not found.") return false end
  baseEasterAddr = r[1].address
  return true
end

-- 🐣 Apply Easter Decoration
function easterdecor(offset, label, emoji)
  if not initEasterDecorationSearch() then return end
  local src = baseEasterAddr + offset
  local vals = {}
  for i = 0, 5 do
    table.insert(vals, {address = src + i * 4, flags = gg.TYPE_DWORD})
  end
  vals = gg.getValues(vals)

  local target = getAddr()
  if not target then return end
  target = target - 0x48

  local newVals = {}
  for i, v in ipairs(vals) do
    table.insert(newVals, {address = target + (i - 1) * 4, value = v.value, flags = gg.TYPE_DWORD})
  end

  table.insert(newVals, {address = target + 24, value = 0, flags = gg.TYPE_DWORD})
  table.insert(newVals, {address = target + 28, value = 1, flags = gg.TYPE_DWORD})
  for _, off in ipairs({0x58, 0x5C, 0x60, 0x64, 0x68, 0x6C}) do
    table.insert(newVals, {address = target + off, value = 0, flags = gg.TYPE_DWORD})
  end

  gg.setValues(newVals)
  gg.toast(emoji .. " " .. label .. " easter decoration applied!")
end

function eastdek1()  easterdecor(0x2C,  "Faberge Egg (Red)", "🥚") end
function eastdek2()  easterdecor(0x7C,  "Chocolate Fountain", "🍫") end
function eastdek3()  easterdecor(0xCC,  "Easter Bunny's House", "🐇") end
function eastdek4()  easterdecor(0x11C, "Throes of Art", "🎨") end
function eastdek5()  easterdecor(0x16C, "Spring", "🌸") end
function eastdek6()  easterdecor(0x1BC, "Easter Fountain", "⛲") end
function eastdek7()  easterdecor(0x20C, "Easter Fence", "🚧") end
function eastdek8()  easterdecor(0x25C, "Stuffed Bunny", "🧸") end
function eastdek9()  easterdecor(0x2AC, "Easter Topiary", "🌳") end
function eastdek10() easterdecor(0x2FC, "Cart Full of Gifts", "🎁") end
function eastdek11() easterdecor(0x34C, "Easter Tree", "🌲") end
function eastdek12() easterdecor(0x39C, "Egg Topiary", "🥚") end
function eastdek13() easterdecor(0x3EC, "Faberge Egg (Blue)", "🥚") end
function eastdek14() easterdecor(0x43C, "Talented Bunny Statue", "🐇") end
function eastdek15() easterdecor(0x48C, "Easter Workshop", "🏭") end
function eastdek16() easterdecor(0x4DC, "Boat Ride Attraction", "⛵") end
function eastdek17() easterdecor(0x52C, "Easter Railway", "🚂") end
function eastdek18() easterdecor(0x57C, "Easter Hammock", "🛏️") end
function eastdek19() easterdecor(0x5CC, "Vineyard", "🍇") end
function eastdek20() easterdecor(0x61C, "Rabbit's House", "🏠") end
function eastdek21() easterdecor(0x66C, "Mushroom Stump", "🍄") end
function eastdek22() easterdecor(0x6BC, "Flower Lamppost", "💡") end
function eastdek23() easterdecor(0x70C, "Rabbit Treasure", "💎") end

function coldekor4()
  while true do
    gg.setVisible(false)
    gg.clearResults()

    local skins = {
"🌸 • Heart Flowerbed",
"🏞️ • Small Romantic Park",
"🕊️ • Doves in Love",
"❤️ • Ruby Heart",
"🚃 • Carriage",
"📦 • Love Delivery Statue",
"🍷 • Romantic Date",
"🌳 • Heartfelt Topiary",
"🏹 • Cupid",
"🐻 • Bear in Love",
"🦄 • Stuffed Unicorn",
"🗿 • Affection Statue",
"⛲ • Heart to Heart Fountain",
"🗿 • Statue of Lovers",
"🦚 • Peacocks in Love",
"🎁 • Unexpected Gift",
"📸 • Perfect Pair Photo Zone",
"🌳 • Topiary",
"🏡 • Romantic Gazebo",
"🦢 • Pond with Swans",
"🛒 • Flower Cart",
"🧸 • Teddy Bear",
"👼 • Flowerbed with Angels",
"🎠 • Carousel",
"🤴 • Prince on a White Horse",
"🪑 • Lovers Bench",
"🔒 • Love Padlocks",
"🌉 • Love Tunnel",
"💘 • Flying Hearts",
"🏹 • Cupid Arrow",
"🐰 • Stuffed Bunny",
"🐱 • Cuddly Kitty",
"👁️ • Eagle Eye Cupid",
"🌹 • Love Arch",
"💞 • Eternal Love Sculpture",
"🗝️ • Key to the Heart",
        "❌ • Go Back"
    }

    local choice = gg.multiChoice(
      skins,
      nil,
      "💘 Valentine Decoration"
    )

    if not choice then 
      return
    end

    -- 🔙 Back option
    if choice[37] then
      if type(minidekor) == "function" then
        minidekor()
      else
      end
      return
    end

    -- 🔁 Process selected avatars one by one
    for i = 1, 36 do
      if choice[i] then
        local func = _G["valdek" .. i]
        if type(func) == "function" then
          func()
          gg.toast("✅ Valentine " .. i .. " Decoration applied.\n👉 Claim it in-freeze reward!")

          -- ⏸️ Wait for user to press GG icon before continuing
          repeat
            gg.sleep(500)
          until gg.isVisible(true)

          gg.setVisible(false)
        else
          gg.alert("❌ Function Valentine Decoration " .. i .. "() not found!")
        end
      end
    end

    gg.toast("🎉 All selected Valentine Decoration have been processed!")
    -- 🔄 Setelah selesai → otomatis balik ke menu lagi
  end
end

-- 📁 Cache & File Setup
local folder = "/sdcard/ARH_Cache/"
local fileAddr = folder .. "addresscache.txt"
local function deleteFile(p) pcall(function() os.remove(p) end) end
gg.setVisible(false)

-- 📍 Get Valentine Decoration Address
function getAddr()
  local f = io.open(fileAddr, "r")
  local addr = f and tonumber(f:read("*l")) or nil
  if f then f:close() end

  if addr then
    local chk = gg.getValues({{address = addr, flags = gg.TYPE_DWORD}})
    if chk and chk[1] and chk[1].value == 30 then return addr end
    deleteFile(fileAddr)
    gg.toast("👑 ARH-Cache cleared")
  end

  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("1634035750;1918137458;1769300498::121", gg.TYPE_DWORD)
  gg.refineNumber("1769300498", gg.TYPE_DWORD)
  local r = gg.getResults(1)
  if #r == 0 then gg.alert("❌ Address not found.\nOpen valentine decoration first.") return nil end

  local newAddr = r[1].address
  local save = io.open(fileAddr, "w")
  if save then save:write(newAddr) save:close() end
  return newAddr
end

-- 📦 Valentine Decoration Source Base
local baseValentineAddr = nil
function initValentineDecorationSearch()
  if baseValentineAddr then return true end
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("1634035750;1918137458;1769300498::121", gg.TYPE_DWORD)
  gg.refineNumber("1769300498", gg.TYPE_DWORD)
  local r = gg.getResults(1)
  if #r == 0 then gg.alert("❌ Valentine decoration structure not found.") return false end
  baseValentineAddr = r[1].address
  return true
end

-- ?? Apply Valentine Decoration
function valentinedecor(offset, label, emoji)
  if not initValentineDecorationSearch() then return end
  local src = baseValentineAddr + offset
  local vals = {}
  for i = 0, 5 do
    table.insert(vals, {address = src + i * 4, flags = gg.TYPE_DWORD})
  end
  vals = gg.getValues(vals)

  local target = getAddr()
  if not target then return end
  target = target - 0x48

  local newVals = {}
  for i, v in ipairs(vals) do
    table.insert(newVals, {address = target + (i - 1) * 4, value = v.value, flags = gg.TYPE_DWORD})
  end

  table.insert(newVals, {address = target + 24, value = 0, flags = gg.TYPE_DWORD})
  table.insert(newVals, {address = target + 28, value = 1, flags = gg.TYPE_DWORD})
  for _, off in ipairs({0x58, 0x5C, 0x60, 0x64, 0x68, 0x6C}) do
    table.insert(newVals, {address = target + off, value = 0, flags = gg.TYPE_DWORD})
  end

  gg.setValues(newVals)
  gg.toast(emoji .. " " .. label .. " valentine decoration applied!")
end

function valdek1()  valentinedecor(-0x378, "Heart Flowerbed", "🌸") end
function valdek2()  valentinedecor(-0x78, "Small Romantic Park", "🏞️") end
function valdek3()  valentinedecor(0x288, "Doves in Love", "🕊️") end
function valdek4()  valentinedecor(0x588, "Ruby Heart", "❤️") end
function valdek5()  valentinedecor(0x888, "Carriage", "🚃") end
function valdek6()  valentinedecor(0xB88, "Love Delivery Statue", "📦") end
function valdek7()  valentinedecor(0xE88, "Romantic Date", "🍷") end
function valdek8()  valentinedecor(0x1188, "Heartfelt Topiary", "🌳") end
function valdek9()  valentinedecor(0x1488, "Cupid", "🏹") end
function valdek10() valentinedecor(0x1788, "Bear in Love", "🐻") end
function valdek11() valentinedecor(0x1A88, "Stuffed Unicorn", "🦄") end
function valdek12() valentinedecor(0x1D88, "Affection Statue", "🗿") end
function valdek13() valentinedecor(0x2088, "Heart to Heart Fountain", "⛲") end
function valdek14() valentinedecor(0x2388, "Statue of Lovers", "🗿") end
function valdek15() valentinedecor(0x2688, "Peacocks in Love", "🦚") end
function valdek16() valentinedecor(0x2988, "Unexpected Gift", "🎁") end
function valdek17() valentinedecor(0x2C88, "Perfect Pair Photo Zone", "📸") end
function valdek18() valentinedecor(0x2F88, "Topiary", "🌳") end
function valdek19() valentinedecor(0x3288, "Romantic Gazebo", "🏡") end
function valdek20() valentinedecor(0x3588, "Pond with Swans", "🦢") end
function valdek21() valentinedecor(0x3888, "Flower Cart", "🛒") end
function valdek22() valentinedecor(0x3B88, "Teddy Bear", "🧸") end
function valdek23() valentinedecor(0x3E88, "Flowerbed with Angels", "👼") end
function valdek24() valentinedecor(0x4188, "Carousel", "🎠") end
function valdek25() valentinedecor(0x4488, "Prince on a White Horse", "🤴") end
function valdek26() valentinedecor(0x4788, "Lovers Bench", "🪑") end
function valdek27() valentinedecor(0x4A88, "Love Padlocks", "🔒") end
function valdek28() valentinedecor(0x4D88, "Love Tunnel", "🌉") end
function valdek29() valentinedecor(0x5088, "Flying Hearts", "💘") end
function valdek30() valentinedecor(0x5388, "Cupid Arrow", "🏹") end
function valdek31() valentinedecor(0x5688, "Stuffed Bunny", "🐰") end
function valdek32() valentinedecor(0x5988, "Cuddly Kitty", "🐱") end
function valdek33() valentinedecor(0x5C88, "Eagle Eye Cupid", "👁️") end
function valdek34() valentinedecor(0x5F88, "Love Arch", "🌹") end
function valdek35() valentinedecor(0x6288, "Eternal Love Sculpture", "💞") end
function valdek36() valentinedecor(0x6588, "Key to the Heart", "🗝️") end

function coldekor7()
local indev = dev
  local menu = gg.choice({
"✨ • Special Decoration",
"💎 • Rare Decoration",
"🌸 • Unique Decoration",
"🏵️ • Limited Decoration",
"🎀 • Premium Decoration",
"🏰 • Classic Decoration",
    "❌ • Go Back"
  }, nil, indev)

    if menu == nil then
    return
  elseif menu == 1 then randecor1()
  elseif menu == 2 then randecor2()
  elseif menu == 3 then randecor3()
  elseif menu == 4 then randecor4()
  elseif menu == 5 then randecor5()
  elseif menu == 6 then randecor6()
  elseif menu == 7 then minidekor()
  end
end

function randecor1()
  while true do
    gg.setVisible(false)
    gg.clearResults()

    local skins = {
"👨‍🍳 • Chef",
"🍽️ • Romantic Dinner",
"🫖 • Tea Party Fountain",
"🍹 • Pear Tiki Bar",
"🌉 • Fruit Bridge",
"☕ • Coffee Bike",
"🌳 • Broccoli Tree",
"🚚 • Hot Pizza Truck",
"🍦 • Ice Cream Cafe",
"🎈 • Hot Air Balloon",
"🎨 • Cooking Masterpiece Banner",
"🎉 • 5 Year Together Banner",
"🏪 • Hot Cup Coffee Shop",
"🍫 • Chocolate Mill",
"🌭 • Hot Dog Swings",
"🏬 • Bargain District",
"🚡 • Ski Lift",
"🔥 • Eternal Torch",
"✈️ • Biomass-powered Airplane",
"🕷️ • Mechanical Spider",
"🤖 • Humanoid Robot",
"🌸 • Flower Arch",
"⛵ • Boat with Flowers",
"🚗 • Car Flower Bed",
"🦚 • Peacock Flower Bed",
"🎈 • Balloon Arch",
"🌲 • Inflatable Tree",
"🐶 • Inflatable Dog",
"🏠 • Flying House",
"🕺 • Air Dancer",
"3️⃣ • Inflatable Number 3",
"🏰 • Moving Castle",
"⛺ • Camping",
"🎂 • Township Turned 2!",
"🕍 • Chamber of Horrors",
"👻 • Ghost Huntress",
"⚰️ • Spooky Crypt",
"🎻 • Supernatural Orchestra",
"🐷 • Inflatable Pig",
"🐔 • Inflatable Chicken",
"🐑 • Inflatable Sheep",
"🐄 • Inflatable Cow",
"🌾 • Goddess of Harvest",
"🍉 • Giant Watermelon",
"🥕 • Carrot Tree",
"🌽 • Harvest a Giant",
"🌶️ • Spicy House",
"🏛️ • Grand Harvest Square",
"🌊 • Poseidon Statue",
"💰 • Treasure Chest",
  "❌ • Go Back"
    }

    local choice = gg.multiChoice(
      skins,
      nil,
      "✨ Special Decoration"
    )

    if not choice then 
      return
    end

    -- 🔙 Back option
    if choice[51] then
      if type(coldekor7) == "function" then
        coldekor7()
      else
      end
      return
    end

    -- 🔁 Process selected avatars one by one
    for i = 1, 50 do
      if choice[i] then
        local func = _G["spesialdekor" .. i]
        if type(func) == "function" then
          func()
          gg.toast("✅ Special " .. i .. " Decoration applied.\n👉 Claim it in-freeze reward!")

          -- ⏸️ Wait for user to press GG icon before continuing
          repeat
            gg.sleep(500)
          until gg.isVisible(true)

          gg.setVisible(false)
        else
          gg.alert("❌ Function Special Decoration " .. i .. "() not found!")
        end
      end
    end

    gg.toast("🎉 All selected Special Decoration have been processed!")
    -- 🔄 Setelah selesai → otomatis balik ke menu lagi
  end
end

-- 📁 Cache & File Setup
local folder = "/sdcard/ARH_Cache/"
local fileAddr = folder .. "addresscache.txt"
local function deleteFile(p) pcall(function() os.remove(p) end) end
gg.setVisible(false)

-- 📍 Get Special Decoration Address
function getAddr()
  local f = io.open(fileAddr, "r")
  local addr = f and tonumber(f:read("*l")) or nil
  if f then f:close() end

  if addr then
    local chk = gg.getValues({{address = addr, flags = gg.TYPE_DWORD}})
    if chk and chk[1] and chk[1].value == 30 then return addr end
    deleteFile(fileAddr)
    gg.toast("👑 ARH-Cache cleared")
  end

  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("1935754524;1852732770;1769300575::37", gg.TYPE_DWORD)
  gg.refineNumber("1769300575", gg.TYPE_DWORD)
  local r = gg.getResults(1)
  if #r == 0 then gg.alert("❌ Address not found.\nOpen special decoration first.") return nil end

  local newAddr = r[1].address
  local save = io.open(fileAddr, "w")
  if save then save:write(newAddr) save:close() end
  return newAddr
end

-- 📦 Special Decoration Source Base
local baseSpecialAddr = nil
function initSpecialDecorationSearch()
  if baseSpecialAddr then return true end
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("1935754524;1852732770;1769300575::37", gg.TYPE_DWORD)
  gg.refineNumber("1769300575", gg.TYPE_DWORD)
  local r = gg.getResults(1)
  if #r == 0 then gg.alert("❌ Special decoration structure not found.") return false end
  baseSpecialAddr = r[1].address
  return true
end

-- 💎 Apply Special Decoration
function specialdecor(offset, label, emoji)
  if not initSpecialDecorationSearch() then return end
  local src = baseSpecialAddr + offset
  local vals = {}
  for i = 0, 5 do
    table.insert(vals, {address = src + i * 4, flags = gg.TYPE_DWORD})
  end
  vals = gg.getValues(vals)

  local target = getAddr()
  if not target then return end
  target = target - 0x48

  local newVals = {}
  for i, v in ipairs(vals) do
    table.insert(newVals, {address = target + (i - 1) * 4, value = v.value, flags = gg.TYPE_DWORD})
  end

  table.insert(newVals, {address = target + 24, value = 0, flags = gg.TYPE_DWORD})
  table.insert(newVals, {address = target + 28, value = 1, flags = gg.TYPE_DWORD})
  for _, off in ipairs({0x58, 0x5C, 0x60, 0x64, 0x68, 0x6C}) do
    table.insert(newVals, {address = target + off, value = 0, flags = gg.TYPE_DWORD})
  end

  gg.setValues(newVals)
  gg.toast(emoji .. " " .. label .. " special decoration applied!")
end

function spesialdekor1()  specialdecor(0x2C,  "Chef", "👨‍🍳") end
function spesialdekor2()  specialdecor(0x7C,  "Romantic Dinner", "🍽️") end
function spesialdekor3()  specialdecor(0xCC,  "Tea Party Fountain", "🫖") end
function spesialdekor4()  specialdecor(0x11C, "Pear Tiki Bar", "🍹") end
function spesialdekor5()  specialdecor(0x16C, "Fruit Bridge", "🌉") end
function spesialdekor6()  specialdecor(0x1BC, "Coffee Bike", "☕") end
function spesialdekor7()  specialdecor(0x20C, "Broccoli Tree", "🌳") end
function spesialdekor8()  specialdecor(0x25C, "Hot Pizza Truck", "🚚") end
function spesialdekor9()  specialdecor(0x2AC, "Ice Cream Cafe", "🍦") end
function spesialdekor10() specialdecor(0x2FC, "Hot Air Balloon", "🎈") end
function spesialdekor11() specialdecor(0x34C, "Cooking Masterpiece Banner", "🎨") end
function spesialdekor12() specialdecor(0x39C, "5 Year Together Banner", "🎉") end
function spesialdekor13() specialdecor(0x3EC, "Hot Cup Coffee Shop", "🏪") end
function spesialdekor14() specialdecor(0x43C, "Chocolate Mill", "🍫") end
function spesialdekor15() specialdecor(0x48C, "Hot Dog Swings", "🌭") end
function spesialdekor16() specialdecor(0x4DC, "Bargain District", "🏬") end
function spesialdekor17() specialdecor(0x52C, "Ski Lift", "🚡") end
function spesialdekor18() specialdecor(0x57C, "Eternal Torch", "🔥") end
function spesialdekor19() specialdecor(0x5CC, "Biomass-powered Airplane", "✈️") end
function spesialdekor20() specialdecor(0x61C, "Mechanical Spider", "🕷️") end
function spesialdekor21() specialdecor(0x66C, "Humanoid Robot", "🤖") end
function spesialdekor22() specialdecor(0x6BC, "Flower Arch", "🌸") end
function spesialdekor23() specialdecor(0x70C, "Boat with Flowers", "⛵") end
function spesialdekor24() specialdecor(0x75C, "Car Flower Bed", "🚗") end
function spesialdekor25() specialdecor(0x7AC, "Peacock Flower Bed", "🦚") end
function spesialdekor26() specialdecor(0x7FC, "Balloon Arch", "🎈") end
function spesialdekor27() specialdecor(0x84C, "Inflatable Tree", "🌲") end
function spesialdekor28() specialdecor(0x89C, "Inflatable Dog", "🐶") end
function spesialdekor29() specialdecor(0x8EC, "Flying House", "🏠") end
function spesialdekor30() specialdecor(0x93C, "Air Dancer", "🕺") end
function spesialdekor31() specialdecor(0x98C, "Inflatable Number 3", "3️⃣") end
function spesialdekor32() specialdecor(0x9DC, "Moving Castle", "🏰") end
function spesialdekor33() specialdecor(0xA2C, "Camping", "⛺") end
function spesialdekor34() specialdecor(0xA7C, "Township Turned 2!", "🎂") end
function spesialdekor35() specialdecor(0xACC, "Chamber of Horrors", "🕍") end
function spesialdekor36() specialdecor(0xB1C, "Ghost Huntress", "👻") end
function spesialdekor37() specialdecor(0xB6C, "Spooky Crypt", "⚰️") end
function spesialdekor38() specialdecor(0xBBC, "Supernatural Orchestra", "🎻") end
function spesialdekor39() specialdecor(0xC0C, "Inflatable Pig", "🐷") end
function spesialdekor40() specialdecor(0xC5C, "Inflatable Chicken", "🐔") end
function spesialdekor41() specialdecor(0xCAC, "Inflatable Sheep", "🐑") end
function spesialdekor42() specialdecor(0xCFC, "Inflatable Cow", "🐄") end
function spesialdekor43() specialdecor(0xD4C, "Goddess of Harvest", "🌾") end
function spesialdekor44() specialdecor(0xD9C, "Giant Watermelon", "🍉") end
function spesialdekor45() specialdecor(0xDEC, "Carrot Tree", "🥕") end
function spesialdekor46() specialdecor(0xE3C, "Harvest a Giant", "🌽") end
function spesialdekor47() specialdecor(0xE8C, "Spicy House", "🌶️") end
function spesialdekor48() specialdecor(0xEDC, "Grand Harvest Square", "🏛️") end
function spesialdekor49() specialdecor(0xF2C, "Poseidon Statue", "🌊") end
function spesialdekor50() specialdecor(0xF7C, "Treasure Chest", "💰") end

function randecor2()
  while true do
    gg.setVisible(false)
    gg.clearResults()

    local skins = {
"🏛️ • Ruins of Atlantis",
"🚢 • Pirate Ship Bow",
"🚤 • Submarine",
"🍭 • Mountain of Candy",
"🌉 • Candy Bridge",
"🌳 • Candy Tree",
"🏠 • Candy House",
"🐄 • Confectioner Cow",
"🎠 • Candy Carousel",
"🍬 • Sweet Tooth Street",
"🏪 • Souvenir Shop",
"🏋️ • Training Ground",
"🤿 • Diving Board",
"⛲ • New Record Fountain",
"🏆 • Champions Plaza",
"🔥 • Torchbearer Statue",
"🌊 • Snow Wave Statue",
"🎖️ • Triumphal Victory Statue",
"🏒 • Hockey Rink",
"🛷 • Bobsled Track",
"⛷️ • Never-ending Slope",
"🏊 • Triathlon",
"🛹 • Skateboarders",
"🥅 • Seasoned Goalkeeper",
"🌍 • World Champion",
"⛸️ • Forest Skating Rink",
  "❌ • Go Back"
    }

    local choice = gg.multiChoice(
      skins,
      nil,
      "💎 Rare Decoration"
    )

    if not choice then 
      return
    end

    -- 🔙 Back option
    if choice[27] then
      if type(coldekor7) == "function" then
        coldekor7()
      else
      end
      return
    end

    -- 🔁 Process selected avatars one by one
    for i = 1, 26 do
      if choice[i] then
        local func = _G["raredekor" .. i]
        if type(func) == "function" then
          func()
          gg.toast("✅ Rare " .. i .. " Decoration applied.\n👉 Claim it in-freeze reward!")

          -- ⏸️ Wait for user to press GG icon before continuing
          repeat
            gg.sleep(500)
          until gg.isVisible(true)

          gg.setVisible(false)
        else
          gg.alert("❌ Function Rare Decoration " .. i .. "() not found!")
        end
      end
    end

    gg.toast("🎉 All selected Rare Decoration have been processed!")
    -- 🔄 Setelah selesai → otomatis balik ke menu lagi
  end
end

-- 📁 Cache & File Setup
local folder = "/sdcard/ARH_Cache/"
local fileAddr = folder .. "addresscache.txt"
local function deleteFile(p) pcall(function() os.remove(p) end) end
gg.setVisible(false)

-- 📍 Get Rare Decoration Address
function getAddr()
  local f = io.open(fileAddr, "r")
  local addr = f and tonumber(f:read("*l")) or nil
  if f then f:close() end

  if addr then
    local chk = gg.getValues({{address = addr, flags = gg.TYPE_DWORD}})
    if chk and chk[1] and chk[1].value == 30 then return addr end
    deleteFile(fileAddr)
    gg.toast("👑 ARH-Cache cleared")
  end

  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("1634034218;1634038388;1769300575::37", gg.TYPE_DWORD)
  gg.refineNumber("1769300575", gg.TYPE_DWORD)
  local r = gg.getResults(1)
  if #r == 0 then gg.alert("❌ Address not found.\nOpen rare decoration first.") return nil end

  local newAddr = r[1].address
  local save = io.open(fileAddr, "w")
  if save then save:write(newAddr) save:close() end
  return newAddr
end

-- 📦 Rare Decoration Source Base
local baseRareAddr = nil
function initRareDecorationSearch()
  if baseRareAddr then return true end
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("1634034218;1634038388;1769300575::37", gg.TYPE_DWORD)
  gg.refineNumber("1769300575", gg.TYPE_DWORD)
  local r = gg.getResults(1)
  if #r == 0 then gg.alert("❌ Rare decoration structure not found.") return false end
  baseRareAddr = r[1].address
  return true
end

-- 💎 Apply Rare Decoration
function raredecor(offset, label, emoji)
  if not initRareDecorationSearch() then return end
  local src = baseRareAddr + offset
  local vals = {}
  for i = 0, 5 do
    table.insert(vals, {address = src + i * 4, flags = gg.TYPE_DWORD})
  end
  vals = gg.getValues(vals)

  local target = getAddr()
  if not target then return end
  target = target - 0x48

  local newVals = {}
  for i, v in ipairs(vals) do
    table.insert(newVals, {address = target + (i - 1) * 4, value = v.value, flags = gg.TYPE_DWORD})
  end

  table.insert(newVals, {address = target + 24, value = 0, flags = gg.TYPE_DWORD})
  table.insert(newVals, {address = target + 28, value = 1, flags = gg.TYPE_DWORD})
  for _, off in ipairs({0x58, 0x5C, 0x60, 0x64, 0x68, 0x6C}) do
    table.insert(newVals, {address = target + off, value = 0, flags = gg.TYPE_DWORD})
  end

  gg.setValues(newVals)
  gg.toast(emoji .. " " .. label .. " rare decoration applied!")
end

function raredekor1()  raredecor(0x2C,  "Ruins of Atlantis", "🏛️") end
function raredekor2()  raredecor(0x7C,  "Pirate Ship Bow", "🚢") end
function raredekor3()  raredecor(0xCC,  "Submarine", "🚤") end
function raredekor4()  raredecor(0x11C, "Mountain of Candy", "🍭") end
function raredekor5()  raredecor(0x16C, "Candy Bridge", "🌉") end
function raredekor6()  raredecor(0x1BC, "Candy Tree", "🌳") end
function raredekor7()  raredecor(0x20C, "Candy House", "🏠") end
function raredekor8()  raredecor(0x25C, "Confectioner Cow", "🐄") end
function raredekor9()  raredecor(0x2AC, "Candy Carousel", "🎠") end
function raredekor10() raredecor(0x2FC, "Sweet Tooth Street", "🍬") end
function raredekor11() raredecor(0x34C, "Souvenir Shop", "🏪") end
function raredekor12() raredecor(0x39C, "Training Ground", "🏋️") end
function raredekor13() raredecor(0x3EC, "Diving Board", "🤿") end
function raredekor14() raredecor(0x43C, "New Record Fountain", "⛲") end
function raredekor15() raredecor(0x48C, "Champions Plaza", "🏆") end
function raredekor16() raredecor(0x4DC, "Torchbearer Statue", "🔥") end
function raredekor17() raredecor(0x52C, "Snow Wave Statue", "🌊") end
function raredekor18() raredecor(0x57C, "Triumphal Victory Statue", "🎖️") end
function raredekor19() raredecor(0x5CC, "Hockey Rink", "🏒") end
function raredekor20() raredecor(0x61C, "Bobsled Track", "🛷") end
function raredekor21() raredecor(0x66C, "Never-ending Slope", "⛷️") end
function raredekor22() raredecor(0x6BC, "Triathlon", "🏊") end
function raredekor23() raredecor(0x70C, "Skateboarders", "🛹") end
function raredekor24() raredecor(0x75C, "Seasoned Goalkeeper", "🥅") end
function raredekor25() raredecor(0x7AC, "World Champion", "🌍") end
function raredekor26() raredecor(0x7FC, "Forest Skating Rink", "⛸️") end

function randecor3()
  while true do
    gg.setVisible(false)
    gg.clearResults()

    local skins = {
"🌊 • Sea Fence",
"⚓ • Admiralty Anchor",
"🐚 • Pearl Shell",
"🐴 • Sea Horse",
"🎣 • Lucky Fisherman",
"🐟 • Dancing Koi",
"🧜‍♀️ • The Mermaid",
"🏰 • Water Tower",
"🐙 • Fishing Octopus",
"🛥️ • Stranded Yacht",
"🏯 • Flooded Tower",
"🏡 • Fisherman's House",
"⚙️ • Watermill",
"🐠 • Carp Pond",
"🎠 • Underwater World Carousel",
"🐝 • Bee Pilot",
"🛩️ • Amphibious Aircraft",
"🎈 • Inflatable Plane",
"🚁 • Helicopter Trampoline",
"🕊️ • Dovecote",
"🪁 • Fly-seasoned Friends",
"🎏 • Kite Master",
"🎢 • Takeoff Ride",
"🎒 • Jet Pack Attraction",
"🏆 • Winged Winner",
"🗽 • Happy Town Day Statue",
"📸 • Festival Selfie Banner",
"🏰 • Inflatable Castle",
"🚂 • Kids Train Ride",
"🚗 • Bumper Car Ride",
"🗿 • Titans",
"🌳 • Tree of Life Fountain",
"🎨 • Jolly Painters",
"🏙️ • Art District",
"🧊 • Thingamacube",
"🤹 • Juggler",
"🖌️ • Graffiti Championship",
"⛄ • Winter Fun",
"🏚️ • Lake House",
"🌀 • Endless Stairs",
"🦣 • Frozen Mammoth",
"🦀 • Hermit Crab",
"🤿 • Divers",
"💦 • Happy Splashes",
"🏪 • Fishing-wharf Market",
"🎣 • Lure Makers Hut",
"🏊 • Polar Water Park",
"⛩️ • Underwater Temple",
"👨‍🚀 • Diver",
"🔭 • Bathyscaphe Model",
  "❌ • Go Back"
    }

    local choice = gg.multiChoice(
      skins,
      nil,
      "🌸 Unique Decoration"
    )

    if not choice then 
      return
    end

    -- 🔙 Back option
    if choice[51] then
      if type(coldekor7) == "function" then
        coldekor7()
      else
      end
      return
    end

    -- 🔁 Process selected avatars one by one
    for i = 1, 50 do
      if choice[i] then
        local func = _G["uniquedekor" .. i]
        if type(func) == "function" then
          func()
          gg.toast("✅ Unique " .. i .. " Decoration applied.\n👉 Claim it in-freeze reward!")

          -- ⏸️ Wait for user to press GG icon before continuing
          repeat
            gg.sleep(500)
          until gg.isVisible(true)

          gg.setVisible(false)
        else
          gg.alert("❌ Function Unique Decoration " .. i .. "() not found!")
        end
      end
    end

    gg.toast("🎉 All selected Unique Decoration have been processed!")
    -- 🔄 Setelah selesai → otomatis balik ke menu lagi
  end
end

-- 📁 Cache & File Setup
local folder = "/sdcard/ARH_Cache/"
local fileAddr = folder .. "addresscache.txt"
local function deleteFile(p) pcall(function() os.remove(p) end) end
gg.setVisible(false)

-- 📍 Get Unique Decoration Address
function getAddr()
  local f = io.open(fileAddr, "r")
  local addr = f and tonumber(f:read("*l")) or nil
  if f then f:close() end

  if addr then
    local chk = gg.getValues({{address = addr, flags = gg.TYPE_DWORD}})
    if chk and chk[1] and chk[1].value == 30 then return addr end
    deleteFile(fileAddr)
    gg.toast("👑 ARH-Cache cleared")
  end

  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("1634034214;1734439524;1769300575::37", gg.TYPE_DWORD)
  gg.refineNumber("1769300575", gg.TYPE_DWORD)
  local r = gg.getResults(1)
  if #r == 0 then gg.alert("❌ Address not found.\nOpen unique decoration first.") return nil end

  local newAddr = r[1].address
  local save = io.open(fileAddr, "w")
  if save then save:write(newAddr) save:close() end
  return newAddr
end

-- 📦 Unique Decoration Source Base
local baseUniqueAddr = nil
function initUniqueDecorationSearch()
  if baseUniqueAddr then return true end
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("1634034214;1734439524;1769300575::37", gg.TYPE_DWORD)
  gg.refineNumber("1769300575", gg.TYPE_DWORD)
  local r = gg.getResults(1)
  if #r == 0 then gg.alert("❌ Unique decoration structure not found.") return false end
  baseUniqueAddr = r[1].address
  return true
end

-- 💎 Apply Unique Decoration
function unikdecor(offset, label, emoji)
  if not initUniqueDecorationSearch() then return end
  local src = baseUniqueAddr + offset
  local vals = {}
  for i = 0, 5 do
    table.insert(vals, {address = src + i * 4, flags = gg.TYPE_DWORD})
  end
  vals = gg.getValues(vals)

  local target = getAddr()
  if not target then return end
  target = target - 0x48

  local newVals = {}
  for i, v in ipairs(vals) do
    table.insert(newVals, {address = target + (i - 1) * 4, value = v.value, flags = gg.TYPE_DWORD})
  end

  table.insert(newVals, {address = target + 24, value = 0, flags = gg.TYPE_DWORD})
  table.insert(newVals, {address = target + 28, value = 1, flags = gg.TYPE_DWORD})
  for _, off in ipairs({0x58, 0x5C, 0x60, 0x64, 0x68, 0x6C}) do
    table.insert(newVals, {address = target + off, value = 0, flags = gg.TYPE_DWORD})
  end

  gg.setValues(newVals)
  gg.toast(emoji .. " " .. label .. " unique decoration applied!")
end

function uniquedekor1()  unikdecor(0x2C,  "Sea Fence", "🌊") end
function uniquedekor2()  unikdecor(0x7C,  "Admiralty Anchor", "⚓") end
function uniquedekor3()  unikdecor(0xCC,  "Pearl Shell", "🐚") end
function uniquedekor4()  unikdecor(0x11C, "Sea Horse", "🐴") end
function uniquedekor5()  unikdecor(0x16C, "Lucky Fisherman", "🎣") end
function uniquedekor6()  unikdecor(0x1BC, "Dancing Koi", "🐟") end
function uniquedekor7()  unikdecor(0x20C, "The Mermaid", "🧜‍♀️") end
function uniquedekor8()  unikdecor(0x25C, "Water Tower", "🏰") end
function uniquedekor9()  unikdecor(0x2AC, "Fishing Octopus", "🐙") end
function uniquedekor10() unikdecor(0x2FC, "Stranded Yacht", "🛥️") end
function uniquedekor11() unikdecor(0x34C, "Flooded Tower", "🏯") end
function uniquedekor12() unikdecor(0x39C, "Fisherman's House", "🏡") end
function uniquedekor13() unikdecor(0x3EC, "Watermill", "⚙️") end
function uniquedekor14() unikdecor(0x43C, "Carp Pond", "🐠") end
function uniquedekor15() unikdecor(0x48C, "Underwater World Carousel", "🎠") end
function uniquedekor16() unikdecor(0x4DC, "Bee Pilot", "🐝✈️") end
function uniquedekor17() unikdecor(0x52C, "Amphibious Aircraft", "🛩️") end
function uniquedekor18() unikdecor(0x57C, "Inflatable Plane", "🎈✈️") end
function uniquedekor19() unikdecor(0x5CC, "Helicopter Trampoline", "🚁") end
function uniquedekor20() unikdecor(0x61C, "Dovecote", "🕊️") end
function uniquedekor21() unikdecor(0x66C, "Fly-seasoned Friends", "🪁") end
function uniquedekor22() unikdecor(0x6BC, "Kite Master", "🎏") end
function uniquedekor23() unikdecor(0x70C, "Takeoff Ride", "🎢") end
function uniquedekor24() unikdecor(0x75C, "Jet Pack Attraction", "🎒") end
function uniquedekor25() unikdecor(0x7AC, "Winged Winner", "🏆") end
function uniquedekor26() unikdecor(0x7FC, "Happy Town Day Statue", "🗽") end
function uniquedekor27() unikdecor(0x84C, "Festival Selfie Banner", "📸") end
function uniquedekor28() unikdecor(0x89C, "Inflatable Castle", "🏰") end
function uniquedekor29() unikdecor(0x8EC, "Kids Train Ride", "🚂") end
function uniquedekor30() unikdecor(0x93C, "Bumper Car Ride", "🚗") end
function uniquedekor31() unikdecor(0x98C, "Titans", "🗿") end
function uniquedekor32() unikdecor(0x9DC, "Tree of Life Fountain", "🌳") end
function uniquedekor33() unikdecor(0xA2C, "Jolly Painters", "🎨") end
function uniquedekor34() unikdecor(0xA7C, "Art District", "🏙️") end
function uniquedekor35() unikdecor(0xACC, "Thingamacube", "🧊") end
function uniquedekor36() unikdecor(0xB1C, "Juggler", "🤹") end
function uniquedekor37() unikdecor(0xB6C, "Graffiti Championship", "🖌️") end
function uniquedekor38() unikdecor(0xBBC, "Winter Fun", "⛄") end
function uniquedekor39() unikdecor(0xC0C, "Lake House", "🏚️") end
function uniquedekor40() unikdecor(0xC5C, "Endless Stairs", "🌀") end
function uniquedekor41() unikdecor(0xCAC, "Frozen Mammoth", "🦣") end
function uniquedekor42() unikdecor(0xCFC, "Hermit Crab", "🦀") end
function uniquedekor43() unikdecor(0xD4C, "Divers", "🤿") end
function uniquedekor44() unikdecor(0xD9C, "Happy Splashes", "💦") end
function uniquedekor45() unikdecor(0xDEC, "Fishing-wharf Market", "🏪") end
function uniquedekor46() unikdecor(0xE3C, "Lure Makers Hut", "🎣🏠") end
function uniquedekor47() unikdecor(0xE8C, "Polar Water Park", "🏊") end
function uniquedekor48() unikdecor(0xEDC, "Underwater Temple", "⛩️") end
function uniquedekor49() unikdecor(0xF2C, "Diver", "👨‍🚀") end
function uniquedekor50() unikdecor(0xF7C, "Bathyscaphe Model", "🔭") end

function randecor4()
  while true do
    gg.setVisible(false)
    gg.clearResults()

    local skins = {
"🐠 • City Aquarium",
"🎐 • Inflatable Jellyfish",
"🛩️ • Biplane",
"⛵ • Air Galleon",
"🎮 • Flight Simulator",
"✈️ • Experimental Plane",
"🛰️ • System Plane",
"🎯 • Regatta Carnival Game",
"🪑 • Friendship Bench",
"🎈 • Duck Balloon",
"📸 • Superfriends Photo Cutout",
"🏝️ • Summer-fun Island",
"🐑 • Stuffed Sheep",
"🌉 • Glass Bridge",
"📎 • Clothespin Art Object",
"👑 • His Majesty's Throne",
"🏖️ • Vacation",
"🌴 • Cozy Tropics",
"🐬 • Visiting the Dolphins",
"🍕 • Open Air Pizzeria",
"👨‍🍳 • Jolly Chefs",
"⛵ • Golden Sail",
"🌳 • Wild Park",
"🚤 • Pleasure Boat",
"🔔 • Gong",
"🎆 • Fireworks Stand",
"🎈 • Balloon Bouquet",
"🏡 • Florist House",
"🐑 • Sheep Flowerbed",
"🌸 • Vase of Flowers",
"💦 • Jet Ski",
"💎 • The Biggest Diamond",
"🚪 • Gates of Glory",
"🌺 • Flower Gate",
"🥕 • Veggie Cart",
  "❌ • Go Back"
    }

    local choice = gg.multiChoice(
      skins,
      nil,
      "🏵️  Limited Decoration"
    )

    if not choice then 
      return
    end

    -- 🔙 Back option
    if choice[36] then
      if type(coldekor7) == "function" then
        coldekor7()
      else
      end
      return
    end

    -- 🔁 Process selected avatars one by one
    for i = 1, 35 do
      if choice[i] then
        local func = _G["limiteddekor" .. i]
        if type(func) == "function" then
          func()
          gg.toast("✅ Limited " .. i .. " Decoration applied.\n👉 Claim it in-freeze reward!")

          -- ⏸️ Wait for user to press GG icon before continuing
          repeat
            gg.sleep(500)
          until gg.isVisible(true)

          gg.setVisible(false)
        else
          gg.alert("❌ Function Limited Decoration " .. i .. "() not found!")
        end
      end
    end

    gg.toast("🎉 All selected Limited Decoration have been processed!")
    -- 🔄 Setelah selesai → otomatis balik ke menu lagi
  end
end

-- 📁 Cache & File Setup
local folder = "/sdcard/ARH_Cache/"
local fileAddr = folder .. "addresscache.txt"
local function deleteFile(p) pcall(function() os.remove(p) end) end
gg.setVisible(false)

-- 📍 Get Limited Decoration Address
function getAddr()
  local f = io.open(fileAddr, "r")
  local addr = f and tonumber(f:read("*l")) or nil
  if f then f:close() end

  if addr then
    local chk = gg.getValues({{address = addr, flags = gg.TYPE_DWORD}})
    if chk and chk[1] and chk[1].value == 30 then return addr end
    deleteFile(fileAddr)
    gg.toast("👑 ARH-Cache cleared")
  end

  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("1701860140;1918989681;1769300575::37", gg.TYPE_DWORD)
  gg.refineNumber("1769300575", gg.TYPE_DWORD)
  local r = gg.getResults(1)
  if #r == 0 then gg.alert("❌ Address not found.\nOpen limited decoration first.") return nil end

  local newAddr = r[1].address
  local save = io.open(fileAddr, "w")
  if save then save:write(newAddr) save:close() end
  return newAddr
end

-- 📦 Limited Decoration Source Base
local baseLimitedAddr = nil
function initLimitedDecorationSearch()
  if baseLimitedAddr then return true end
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("1701860140;1918989681;1769300575::37", gg.TYPE_DWORD)
  gg.refineNumber("1769300575", gg.TYPE_DWORD)
  local r = gg.getResults(1)
  if #r == 0 then gg.alert("❌ Limited decoration structure not found.") return false end
  baseLimitedAddr = r[1].address
  return true
end

-- 💎 Apply Limited Decoration
function limiteddecor(offset, label, emoji)
  if not initLimitedDecorationSearch() then return end
  local src = baseLimitedAddr + offset
  local vals = {}
  for i = 0, 5 do
    table.insert(vals, {address = src + i * 4, flags = gg.TYPE_DWORD})
  end
  vals = gg.getValues(vals)

  local target = getAddr()
  if not target then return end
  target = target - 0x48

  local newVals = {}
  for i, v in ipairs(vals) do
    table.insert(newVals, {address = target + (i - 1) * 4, value = v.value, flags = gg.TYPE_DWORD})
  end

  table.insert(newVals, {address = target + 24, value = 0, flags = gg.TYPE_DWORD})
  table.insert(newVals, {address = target + 28, value = 1, flags = gg.TYPE_DWORD})
  for _, off in ipairs({0x58, 0x5C, 0x60, 0x64, 0x68, 0x6C}) do
    table.insert(newVals, {address = target + off, value = 0, flags = gg.TYPE_DWORD})
  end

  gg.setValues(newVals)
  gg.toast(emoji .. " " .. label .. " limited decoration applied!")
end

function limiteddekor1()  limiteddecor(-0x24,  "Sea Fence", "🌊") end
function limiteddekor2()  limiteddecor(0x2C,  "Sea Fence", "🌊") end
function limiteddekor3()  limiteddecor(0x7C,  "Admiralty Anchor", "⚓") end
function limiteddekor4()  limiteddecor(0xCC,  "Pearl Shell", "🐚") end
function limiteddekor5()  limiteddecor(0x11C, "Sea Horse", "🐴") end
function limiteddekor6()  limiteddecor(0x16C, "Lucky Fisherman", "🎣") end
function limiteddekor7()  limiteddecor(0x1BC, "Dancing Koi", "🐟") end
function limiteddekor8()  limiteddecor(0x20C, "The Mermaid", "🧜‍♀️") end
function limiteddekor9()  limiteddecor(0x25C, "Water Tower", "🏰") end
function limiteddekor10()  limiteddecor(0x2AC, "Fishing Octopus", "🐙") end
function limiteddekor11() limiteddecor(0x2FC, "Stranded Yacht", "🛥️") end
function limiteddekor12() limiteddecor(0x34C, "Flooded Tower", "🏯") end
function limiteddekor13() limiteddecor(0x39C, "Fisherman's House", "🏡") end
function limiteddekor14() limiteddecor(0x3EC, "Watermill", "⚙️") end
function limiteddekor15() limiteddecor(0x43C, "Carp Pond", "🐠") end
function limiteddekor16() limiteddecor(0x48C, "Underwater World Carousel", "🎠") end
function limiteddekor17() limiteddecor(0x4DC, "Bee Pilot", "🐝✈️") end
function limiteddekor18() limiteddecor(0x52C, "Amphibious Aircraft", "🛩️") end
function limiteddekor19() limiteddecor(0x57C, "Inflatable Plane", "🎈✈️") end
function limiteddekor20() limiteddecor(0x5CC, "Helicopter Trampoline", "🚁") end
function limiteddekor21() limiteddecor(0x61C, "Dovecote", "🕊️") end
function limiteddekor22() limiteddecor(0x66C, "Fly-seasoned Friends", "🪁") end
function limiteddekor23() limiteddecor(0x6BC, "Kite Master", "🎏") end
function limiteddekor24() limiteddecor(0x70C, "Takeoff Ride", "🎢") end
function limiteddekor25() limiteddecor(0x75C, "Jet Pack Attraction", "🎒") end
function limiteddekor26() limiteddecor(0x7AC, "Winged Winner", "🏆") end
function limiteddekor27() limiteddecor(0x7FC, "Happy Town Day Statue", "🗽") end
function limiteddekor28() limiteddecor(0x84C, "Festival Selfie Banner", "📸") end
function limiteddekor29() limiteddecor(0x89C, "Inflatable Castle", "🏰") end
function limiteddekor30() limiteddecor(0x8EC, "Kids Train Ride", "🚂") end
function limiteddekor31() limiteddecor(0x93C, "Bumper Car Ride", "🚗") end
function limiteddekor32() limiteddecor(0x98C, "Titans", "🗿") end
function limiteddekor33() limiteddecor(0x9DC, "Tree of Life Fountain", "🌳") end
function limiteddekor34() limiteddecor(0xA2C, "Jolly Painters", "🎨") end
function limiteddekor35() limiteddecor(0xA7C, "Art District", "🏙️") end

function randecor5()
  while true do
    gg.setVisible(false)
    gg.clearResults()
    local skins = {
"🏠 • Egyptian House",
"🌄 • Pyramid of Cheops",
"🗿 • Pharaoh Statue",
"⛵ • Papyrus Boat",
"🏬 • Papyrus Shop",
"🐴 • Trojan Horse",
"🏟️ • Amphitheater",
"🚙 • Chariot",
"🤾 • Discobolus",
"🚢 • Odysseus Ship",
"🐂 • Minotaur",
"⚒️ • Sculptor's Workshop",
"🏜️ • Oasis",
"🏰 • Sheikh's Palace",
"🔮 • Magic Lamp",
"🐎 • Arabian Horse",
"🦅 • Falconry",
"♟️ • Chess Match",
"🌳 • Hanging Gardens",
"🌴 • Beach Swing",
"🏡 • Bungalow",
"🥥 • Coconut Paradise Juice Bar",
"🌊 • Catch the Wave Ride",
"🎨 • Primeval Painter",
"🪨 • Stonehenge",
"🏇 • The First Rider",
"🦕 • Diplodocus",
"🏠 • Stone Age House",
"🚢 • Haunted Ship",
"🐉 • Nessie",
"🛸 • First Contact",
"❄️ • Yeti",
"☕ • Shuttle Cafe",
"🔭 • Astronomical Tower",
"🌌 • Open-air Planetarium",
"👩‍🚀 • Betsy the Astronaut",
  "❌ • Go Back"
    }

    local choice = gg.multiChoice(
      skins,
      nil,
      "🎀 Premium Decoration"
    )

    if not choice then 
      return
    end

    -- 🔙 Back option
    if choice[37] then
      if type(coldekor7) == "function" then
        coldekor7()
      else
      end
      return
    end

    -- 🔁 Process selected avatars one by one
    for i = 1, 36 do
      if choice[i] then
        local func = _G["premiumdekor" .. i]
        if type(func) == "function" then
          func()
          gg.toast("✅ Premium " .. i .. " Decoration applied.\n👉 Claim it in-freeze reward!")

          -- ⏸️ Wait for user to press GG icon before continuing
          repeat
            gg.sleep(500)
          until gg.isVisible(true)

          gg.setVisible(false)
        else
          gg.alert("❌ Function Premium Decoration " .. i .. "() not found!")
        end
      end
    end

    gg.toast("🎉 All selected Premium Decoration have been processed!")
    -- 🔄 Setelah selesai → otomatis balik ke menu lagi
  end
end

-- 📁 Cache & File Setup
local folder = "/sdcard/ARH_Cache/"
local fileAddr = folder .. "addresscache.txt"
local function deleteFile(p) pcall(function() os.remove(p) end) end
gg.setVisible(false)

-- 📍 Get Premium Decoration Address
function getAddr()
  local f = io.open(fileAddr, "r")
  local addr = f and tonumber(f:read("*l")) or nil
  if f then f:close() end

  if addr then
    local chk = gg.getValues({{address = addr, flags = gg.TYPE_DWORD}})
    if chk and chk[1] and chk[1].value == 30 then return addr end
    deleteFile(fileAddr)
    gg.toast("👑 ARH-Cache cleared")
  end

  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("2036811032;1768776050;1769300498::121", gg.TYPE_DWORD)
  gg.refineNumber("1769300498", gg.TYPE_DWORD)
  local r = gg.getResults(1)
  if #r == 0 then gg.alert("❌ Address not found.\nOpen premium decoration first.") return nil end

  local newAddr = r[1].address
  local save = io.open(fileAddr, "w")
  if save then save:write(newAddr) save:close() end
  return newAddr
end

-- 📦 Premium Decoration Source Base
local basePrmAddr = nil
function initPrmDecorationSearch()
  if basePrmAddr then return true end
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("2036811032;1768776050;1769300498::121", gg.TYPE_DWORD)
  gg.refineNumber("1769300498", gg.TYPE_DWORD)
  local r = gg.getResults(1)
  if #r == 0 then gg.alert("❌ Premium decoration structure not found.") return false end
  basePrmAddr = r[1].address
  return true
end

-- 💖 Apply Premium Decoration
function premiumdecor(offset, label, emoji)
  if not initPrmDecorationSearch() then return end
  local src = basePrmAddr + offset
  local vals = {}
  for i = 0, 5 do
    table.insert(vals, {address = src + i * 4, flags = gg.TYPE_DWORD})
  end
  vals = gg.getValues(vals)

  local target = getAddr()
  if not target then return end
  target = target - 0x48

  local newVals = {}
  for i, v in ipairs(vals) do
    table.insert(newVals, {address = target + (i - 1) * 4, value = v.value, flags = gg.TYPE_DWORD})
  end

  table.insert(newVals, {address = target + 24, value = 0, flags = gg.TYPE_DWORD})
  table.insert(newVals, {address = target + 28, value = 1, flags = gg.TYPE_DWORD})
  for _, off in ipairs({0x58, 0x5C, 0x60, 0x64, 0x68, 0x6C}) do
    table.insert(newVals, {address = target + off, value = 0, flags = gg.TYPE_DWORD})
  end

  gg.setValues(newVals)
  gg.toast(emoji .. " " .. label .. " premium decoration applied!")
end

function premiumdekor1()  premiumdecor(-0x378, "Egyptian House", "🏠") end
function premiumdekor2()  premiumdecor(-0x78,  "Pyramid of Cheops", "🌄") end
function premiumdekor3()  premiumdecor(0x288,  "Pharaoh Statue", "🗿") end
function premiumdekor4()  premiumdecor(0x588,  "Papyrus Boat", "⛵") end
function premiumdekor5()  premiumdecor(0x888,  "Papyrus Shop", "🏬") end
function premiumdekor6()  premiumdecor(0xB88,  "Trojan Horse", "🐴") end
function premiumdekor7()  premiumdecor(0xE88,  "Amphitheater", "🏟️") end
function premiumdekor8()  premiumdecor(0x1188, "Chariot", "🚙") end
function premiumdekor9()  premiumdecor(0x1488, "Discobolus", "🤾") end
function premiumdekor10() premiumdecor(0x1788, "Odysseus Ship", "🚢") end
function premiumdekor11() premiumdecor(0x1A88, "Minotaur", "🐂") end
function premiumdekor12() premiumdecor(0x1D88, "Sculptor's Workshop", "⚒️") end
function premiumdekor13() premiumdecor(0x2088, "Oasis", "🏜️") end
function premiumdekor14() premiumdecor(0x2388, "Sheikh's Palace", "🏰") end
function premiumdekor15() premiumdecor(0x2688, "Magic Lamp", "🔮") end
function premiumdekor16() premiumdecor(0x2988, "Arabian Horse", "🐎") end
function premiumdekor17() premiumdecor(0x2C88, "Falconry", "🦅") end
function premiumdekor18() premiumdecor(0x2F88, "Chess Match", "♟️") end
function premiumdekor19() premiumdecor(0x3288, "Hanging Gardens", "🌳") end
function premiumdekor20() premiumdecor(0x3588, "Beach Swing", "🌴") end
function premiumdekor21() premiumdecor(0x3888, "Bungalow", "🏡") end
function premiumdekor22() premiumdecor(0x3B88, "Coconut Paradise Juice Bar", "🥥") end
function premiumdekor23() premiumdecor(0x3E88, "Catch the Wave Ride", "🌊") end
function premiumdekor24() premiumdecor(0x4188, "Primeval Painter", "🎨") end
function premiumdekor25() premiumdecor(0x4488, "Stonehenge", "🪨") end
function premiumdekor26() premiumdecor(0x4788, "The First Rider", "🏇") end
function premiumdekor27() premiumdecor(0x4A88, "Diplodocus", "🦕") end
function premiumdekor28() premiumdecor(0x4D88, "Stone Age House", "🏠") end
function premiumdekor29() premiumdecor(0x5088, "Haunted Ship", "🚢") end
function premiumdekor30() premiumdecor(0x5388, "Nessie", "🐉") end
function premiumdekor31() premiumdecor(0x5688, "First Contact", "🛸") end
function premiumdekor32() premiumdecor(0x5988, "Yeti", "❄️") end
function premiumdekor33() premiumdecor(0x5C88, "Shuttle Cafe", "☕") end
function premiumdekor34() premiumdecor(0x5F88, "Astronomical Tower", "🔭") end
function premiumdekor35() premiumdecor(0x6288, "Open-air Planetarium", "🌌") end
function premiumdekor36() premiumdecor(0x6588, "Betsy the Astronaut", "👩‍🚀") end

function randecor6()
  while true do
    gg.setVisible(false)
    gg.clearResults()

    local skins = {
"🚀 • Mars rover",
"🏙️ • Lost city",
"🗿 • Ancient statue",
"🦓 • Wildlife reserve",
"🍌 • Banana breaks",
"🏝️ • Jungle village",
"❄️ • Polar station",
"🐕 • Dogsled",
"🐧 • Penguin skating rink",
"🦌 • Ice sculpture reindeer",
"🚢 • Icebreaker",
"🔱 • Atlantean trident",
"🏨 • Atlantis hotel",
"🪸 • Coral fence",
"🐠 • Atlantean aquarium",
"🛏️ • Atlantean rest",
"💰 • Sea riches statue",
"🏴‍☠️ • Pirate camp",
"🎠 • Pirate playground",
"🤠 • Saloon",
"🎬 • Western movie set",
"🐞 • Scarab statue",
"⛺ • Paradise tent",
"🌐 • Plasma globe",
"🧪 • Experimental monument",
"📽️ • 3D projector",
"🏢 • Research facility",
"📚 • Knowledge tower",
"🍊 • Orange juice fountain",
"💃 • Flower dancerfloor",
"🌴 • Palm tree juice bar",
"🟡 • Yellow submarine club",
"🥭 • Mixed fruit",
"🐘 • Happy elephants",
"🏡 • Elf house",
"🏰 • Ice castle",
"🏮 • Chinatown",
"🌺 • Coral garden",
"🤿 • Deep sea explorers",
"🌸 • Spring holiday",
"🔪 • Knife throwing",
  "❌ • Go Back"
    }

    local choice = gg.multiChoice(
      skins,
      nil,
      "🏰 Classic Decoration"
    )

    if not choice then
      return
    end

    -- 🔙 Back option
    if choice[42] then
      if type(coldekor7) == "function" then
        coldekor7()
      else
      end
      return
    end

    -- 🔁 Process selected avatars one by one
    for i = 1, 41 do
      if choice[i] then
        local func = _G["classicdekor" .. i]
        if type(func) == "function" then
          func()
          gg.toast("✅ Classic " .. i .. " Decoration applied.\n👉 Claim it in-freeze reward!")

          -- ⏸️ Wait for user to press GG icon before continuing
          repeat
            gg.sleep(500)
          until gg.isVisible(true)

          gg.setVisible(false)
        else
          gg.alert("❌ Function Classic Decoration " .. i .. "() not found!")
        end
      end
    end

    gg.toast("🎉 All selected Classic Decoration have been processed!")
    -- 🔄 Setelah selesai → otomatis balik ke menu lagi
  end
end

-- 📁 Cache & File Setup
local folder = "/sdcard/ARH_Cache/"
local fileAddr = folder .. "addresscache.txt"
local function deleteFile(p) pcall(function() os.remove(p) end) end
gg.setVisible(false)

-- 📍 Get Classic Decoration Address
function getAddr()
  local f = io.open(fileAddr, "r")
  local addr = f and tonumber(f:read("*l")) or nil
  if f then f:close() end

  if addr then
    local chk = gg.getValues({{address = addr, flags = gg.TYPE_DWORD}})
    if chk and chk[1] and chk[1].value == 30 then return addr end
    deleteFile(fileAddr)
    gg.toast("👑 ARH-Cache cleared")
  end

  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("1634034214;1735292266;1769300498::121", gg.TYPE_DWORD)
  gg.refineNumber("1769300498", gg.TYPE_DWORD)
  local r = gg.getResults(1)
  if #r == 0 then gg.alert("❌ Address not found.\nOpen classic decoration first.") return nil end

  local newAddr = r[1].address
  local save = io.open(fileAddr, "w")
  if save then save:write(newAddr) save:close() end
  return newAddr
end

-- 📦 Classic Decoration Source Base
local baseClassicAddr = nil
function initClassicDecorationSearch()
  if baseClassicAddr then return true end
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("1634034214;1735292266;1769300498::121", gg.TYPE_DWORD)
  gg.refineNumber("1769300498", gg.TYPE_DWORD)
  local r = gg.getResults(1)
  if #r == 0 then gg.alert("❌ Classic decoration structure not found.") return false end
  baseClassicAddr = r[1].address
  return true
end

-- 🏺 Apply Classic Decoration
function classicdecor(offset, label, emoji)
  if not initClassicDecorationSearch() then return end
  local src = baseClassicAddr + offset
  local vals = {}
  for i = 0, 5 do
    table.insert(vals, {address = src + i * 4, flags = gg.TYPE_DWORD})
  end
  vals = gg.getValues(vals)

  local target = getAddr()
  if not target then return end
  target = target - 0x48

  local newVals = {}
  for i, v in ipairs(vals) do
    table.insert(newVals, {address = target + (i - 1) * 4, value = v.value, flags = gg.TYPE_DWORD})
  end

  table.insert(newVals, {address = target + 24, value = 0, flags = gg.TYPE_DWORD})
  table.insert(newVals, {address = target + 28, value = 1, flags = gg.TYPE_DWORD})
  for _, off in ipairs({0x58, 0x5C, 0x60, 0x64, 0x68, 0x6C}) do
    table.insert(newVals, {address = target + off, value = 0, flags = gg.TYPE_DWORD})
  end

  gg.setValues(newVals)
  gg.toast(emoji .. " " .. label .. " classic decoration applied!")
end

function classicdekor1()  classicdecor(-0x378, "Mars rover", "🚀") end
function classicdekor2()  classicdecor(-0x78,  "Lost city", "🏙️") end
function classicdekor3()  classicdecor(0x288,  "Ancient statue", "🗿") end
function classicdekor4()  classicdecor(0x588,  "Wildlife reserve", "🦓") end
function classicdekor5()  classicdecor(0x888,  "Banana breaks", "🍌") end
function classicdekor6()  classicdecor(0xB88,  "Jungle village", "🏝️") end
function classicdekor7()  classicdecor(0xE88,  "Polar station", "❄️") end
function classicdekor8()  classicdecor(0x1188, "Dogsled", "🐕") end
function classicdekor9()  classicdecor(0x1488, "Penguin skating rink", "🐧") end
function classicdekor10() classicdecor(0x1788, "Ice sculpture reindeer", "🦌") end
function classicdekor11() classicdecor(0x1A88, "Icebreaker", "🚢") end
function classicdekor12() classicdecor(0x1D88, "Atlantean trident", "🔱") end
function classicdekor13() classicdecor(0x2088, "Atlantis hotel", "🏨") end
function classicdekor14() classicdecor(0x2388, "Coral fence", "🪸") end
function classicdekor15() classicdecor(0x2688, "Atlantean aquarium", "🐠") end
function classicdekor16() classicdecor(0x2988, "Atlantean rest", "🛏️") end
function classicdekor17() classicdecor(0x2C88, "Sea riches statue", "💰") end
function classicdekor18() classicdecor(0x2F88, "Pirate camp", "🏴‍☠️") end
function classicdekor19() classicdecor(0x3288, "Pirate playground", "🎠") end
function classicdekor20() classicdecor(0x3588, "Saloon", "🤠") end
function classicdekor21() classicdecor(0x3888, "Western movie set", "🎬") end
function classicdekor22() classicdecor(0x3B88, "Scarab statue", "🐞") end
function classicdekor23() classicdecor(0x3E88, "Paradise tent", "⛺") end
function classicdekor24() classicdecor(0x4188, "Plasma globe", "🌐") end
function classicdekor25() classicdecor(0x4488, "Experimental monument", "🧪") end
function classicdekor26() classicdecor(0x4788, "3D projector", "📽️") end
function classicdekor27() classicdecor(0x4A88, "Research facility", "🏢") end
function classicdekor28() classicdecor(0x4D88, "Knowledge tower", "📚") end
function classicdekor29() classicdecor(0x5088, "Orange juice fountain", "🍊") end
function classicdekor30() classicdecor(0x5388, "Flower dancerfloor", "💃") end
function classicdekor31() classicdecor(0x5688, "Palm tree juice bar", "🌴") end
function classicdekor32() classicdecor(0x5988, "Yellow submarine club", "🟡") end
function classicdekor33() classicdecor(0x5C88, "Mixed fruit", "🥭") end
function classicdekor34() classicdecor(0x5F88, "Happy elephants", "🐘") end
function classicdekor35() classicdecor(0x6288, "Elf house", "🏡") end
function classicdekor36() classicdecor(0x6588, "Ice castle", "🏰") end
function classicdekor37() classicdecor(0x6888, "Chinatown", "🏮") end
function classicdekor38() classicdecor(0x6B88, "Coral garden", "🌺") end
function classicdekor39() classicdecor(0x6E88, "Deep sea explorers", "🤿") end
function classicdekor40() classicdecor(0x7188, "Spring holiday", "🌸") end
function classicdekor41() classicdecor(0x7488, "Knife throwing", "🔪") end

function kums1()
local indev = dev
  local menu = gg.choice({
"🚁 • Helicopter Skins",
"✈️ • Airplane Skins",
"🚄 • Train Skins",
"🛳️ • Ship Skins",
"🏯 • Fortress Skins",
      "❌ • Go Back"
  }, nil, indev)

    if menu == nil then
    return
  elseif menu == 1 then colek1()
  elseif menu == 2 then colek2()
  elseif menu == 3 then colek3()
  elseif menu == 4 then colek4()
  elseif menu == 5 then colek5()
  elseif menu == 6 then gp3()
  end
end

function colek1()
local indev = dev
  local menu = gg.choice({
    "🚁 • Helipad Skins",
    "🚁 • Helicopter Skins",
      "❌ • Go Back"
  }, nil,indev)

  if menu == nil then
    return
  elseif menu == 1 then skinhel1()
  elseif menu == 2 then skinhel2()
  elseif menu == 3 then kums1()
  end
end

function skinhel1()
  while true do
    gg.setVisible(false)
    gg.clearResults()

  local skins = {
"🛸 • Flying Saucer Hangar",
"🤖 • Docking Station",
"🎄 • Sleigh Parking Lot",
"🎩 • Private Helipad",
"🥗 • Veggie Helipad",
"🕌 • Sultan's Palace",
"🏖️ • Five-Star Helipad",
"🧳 • Wanderers' Harbor",
"🏃‍♂️ • Fitness Pad",
"🏰 • Royal Palace",
"🕵️ • Detective Agency",
"🎃 • Haunted Tower",
"🎭 • Carnival Platform (🇧🇷)",
"🐰 • Easter Helipad",
"💧 • Underwater Palace",
"🏴‍☠️ • Pirate Helipad",
"🐉 • Festive Helipad",
"💃 • Ballroom Helipad",
  "❌ • Go Back"
  }

  local choice = gg.multiChoice(skins, nil, "🚁 Select an Helipad Skins:")
  if not choice then return end
    -- 🔙 Back option
    if choice[19] then
      if type(colek1) == "function" then
        colek1()
      else
      end
      return
    end

    -- 🔁 Process selected avatars one by one
    for i = 1, 18 do
      if choice[i] then
        local func = _G["pad" .. i]
        if type(func) == "function" then
          func()
          gg.toast("✅ " .. skins[i] .. " applied.\n👉 Claim it in-freeze reward!")

          -- ⏸️ Wait for user to press GG icon before continuing
          repeat
            gg.sleep(500)
          until gg.isVisible(true)

          gg.setVisible(false)
        else
          gg.alert("❌ Function Helipad" .. i .. "() not found!")
        end
      end
    end

    gg.toast("🎉 All selected Exclusive Helipad have been processed!")
    -- 🔄 Setelah selesai → otomatis balik ke menu lagi
  end
end

-- 📁 Cache & File Setup
local folder = "/sdcard/ARH_Cache/"
local fileAddr = folder .. "addresscache.txt"
local function deleteFile(p) pcall(function() os.remove(p) end) end
gg.setVisible(false)

-- 📍 Get Helipad Skin Address
function getAddr()
  local f = io.open(fileAddr, "r")
  local addr = f and tonumber(f:read("*l")) or nil
  if f then f:close() end

  if addr then
    local chk = gg.getValues({{address = addr, flags = gg.TYPE_DWORD}})
    if chk and chk[1] and chk[1].value == 30 then return addr end
    deleteFile(fileAddr)
    gg.toast("👑 ARH-Cache cleared")
  end

  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("34;1651462751;1952532319:841", gg.TYPE_DWORD)
  gg.refineNumber("1952532319", gg.TYPE_DWORD)
  local r = gg.getResults(1)
  if #r == 0 then gg.alert("❌ Address not found.\nOpen helipad skin first.") return nil end

  local newAddr = r[1].address
  local save = io.open(fileAddr, "w")
  if save then save:write(newAddr) save:close() end
  return newAddr
end

-- 🛬 Helipad Skin Source Base
local baseHelipadAddr = nil
function initHelipadSkinSearch()
  if baseHelipadAddr then return true end
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("34;1651462751;1952532319:841", gg.TYPE_DWORD)
  gg.refineNumber("1952532319", gg.TYPE_DWORD)
  local r = gg.getResults(1)
  if #r == 0 then gg.alert("❌ Helipad skin structure not found.") return false end
  baseHelipadAddr = r[1].address
  return true
end

-- 🏆 Apply Helipad Skin
function helipadSkin(offset, label, emoji)
  if not initHelipadSkinSearch() then return end
  local src = baseHelipadAddr + offset
  local vals = {}
  for i = 0, 5 do
    table.insert(vals, {address = src + i * 4, flags = gg.TYPE_DWORD})
  end
  vals = gg.getValues(vals)

  local target = getAddr()
  if not target then return end
  target = target - 0x48

  local newVals = {}
  for i, v in ipairs(vals) do
    table.insert(newVals, {address = target + (i - 1) * 4, value = v.value, flags = gg.TYPE_DWORD})
  end

  table.insert(newVals, {address = target + 24, value = 0, flags = gg.TYPE_DWORD})
  table.insert(newVals, {address = target + 28, value = 1, flags = gg.TYPE_DWORD})
  for _, off in ipairs({0x58, 0x5C, 0x60, 0x64, 0x68, 0x6C}) do
    table.insert(newVals, {address = target + off, value = 0, flags = gg.TYPE_DWORD})
  end

  gg.setValues(newVals)
  gg.toast(emoji .. " " .. label .. " helipad skin applied!")
end

function pad1()  helipadSkin(-0x610, "Flying Saucer Hangar", "🛸") end
function pad2()  helipadSkin(-0x5d0, "Docking Station", "🤖") end
function pad3()  helipadSkin(-0x590, "Sleigh Parking Lot", "🎄") end
function pad4()  helipadSkin(-0x550, "Private Helipad", "🎩") end
function pad5()  helipadSkin(-0x510, "Veggie Helipad", "🥗") end
function pad6()  helipadSkin(-0x4d0, "Sultan's Palace", "🕌") end
function pad7()  helipadSkin(-0x490, "Five-Star Helipad", "🏖️") end
function pad8()  helipadSkin(-0x450, "Wanderers' Harbor", "🧳") end
function pad9()  helipadSkin(-0x410, "Fitness Pad", "🏃‍♂️") end
function pad10() helipadSkin(-0x3d0, "Royal Palace", "🏰") end
function pad11() helipadSkin(-0x390, "Detective Agency", "🕵️") end
function pad12() helipadSkin(-0x350, "Haunted Tower", "🎃") end
function pad13() helipadSkin(-0x310, "Carnival Platform (🇧🇷)", "🎭") end
function pad14() helipadSkin(-0x2d0, "Easter Helipad", "🐰") end
function pad15() helipadSkin(-0x290, "Underwater Palace", "💧") end
function pad16() helipadSkin(-0x250, "Pirate Helipad", "🏴‍☠️") end
function pad17() helipadSkin(-0x210, "Festive Helipad", "🐉") end
function pad18() helipadSkin(-0x1D0, "Ballroom Helipad", "💃") end

function skinhel2()
  while true do
    gg.setVisible(false)
    gg.clearResults()

  local skins = {
"🛸 • Turbo Saucer",
"🤖 • Robot Courier",
"🎄 • Santa's Sleigh",
"🎩 • Private Helicopter",
"🥗 • Eggplant Helicopter",
"🕌 • Flying Carpet",
"🏖️ • Chise Lounge Drone",
"🧳 • Flying Ship",
"🏃‍♂️ • Helicycle",
"🏰 • Pumpkin Helicopter",
"🕵️ • Surveillance Airship",
"🎃 • Flying Cauldron",
"🎭 • Feathery Helicopter",
"🐰 • Egg Chopper",
"💧 • Flying Bathyscaphe",
"🏴‍☠️ • Pirate Helicopter",
"🐉 • Festive Helicopter",
"💃 • Ballroom Helicopter",
  "❌ • Go Back"
  }

local choice = gg.multiChoice(skins, nil, "🚁 Select an Helicopter Skins:")
  if not choice then return end
    -- 🔙 Back option
    if choice[19] then
      if type(colek1) == "function" then
        colek1()
      else
      end
      return
    end

    -- 🔁 Process selected avatars one by one
    for i = 1, 18 do
      if choice[i] then
        local func = _G["hel" .. i]
        if type(func) == "function" then
          func()
          gg.toast("✅ " .. skins[i] .. " applied.\n👉 Claim it in-freeze reward!")

          -- ⏸️ Wait for user to press GG icon before continuing
          repeat
            gg.sleep(500)
          until gg.isVisible(true)

          gg.setVisible(false)
        else
          gg.alert("❌ Function Helicopter" .. i .. "() not found!")
        end
      end
    end

    gg.toast("🎉 All selected Exclusive Helicopter have been processed!")
    -- 🔄 Setelah selesai → otomatis balik ke menu lagi
  end
end

-- 📁 Cache & File Setup
local folder = "/sdcard/ARH_Cache/"
local fileAddr = folder .. "addresscache.txt"
local function deleteFile(p) pcall(function() os.remove(p) end) end
gg.setVisible(false)

-- 📍 Get Helicopter Skin Address
function getAddr()
  local f = io.open(fileAddr, "r")
  local addr = f and tonumber(f:read("*l")) or nil
  if f then f:close() end

  if addr then
    local chk = gg.getValues({{address = addr, flags = gg.TYPE_DWORD}})
    if chk and chk[1] and chk[1].value == 30 then return addr end
    deleteFile(fileAddr)
    gg.toast("👑 ARH-Cache cleared")
  end

  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("34;1651462751;1952532319:841", gg.TYPE_DWORD)
  gg.refineNumber("1952532319", gg.TYPE_DWORD)
  local r = gg.getResults(1)
  if #r == 0 then gg.alert("❌ Address not found.\nOpen helicopter skin first.") return nil end

  local newAddr = r[1].address
  local save = io.open(fileAddr, "w")
  if save then save:write(newAddr) save:close() end
  return newAddr
end

-- 🚁 Helicopter Skin Source Base
local baseHelicopterAddr = nil
function initHelicopterSkinSearch()
  if baseHelicopterAddr then return true end
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("34;1651462751;1952532319:841", gg.TYPE_DWORD)
  gg.refineNumber("1952532319", gg.TYPE_DWORD)
  local r = gg.getResults(1)
  if #r == 0 then gg.alert("❌ Helicopter skin structure not found.") return false end
  baseHelicopterAddr = r[1].address
  return true
end

-- 🏆 Apply Helicopter Skin
function helicopterSkin(offset, label, emoji)
  if not initHelicopterSkinSearch() then return end
  local src = baseHelicopterAddr + offset
  local vals = {}
  for i = 0, 5 do
    table.insert(vals, {address = src + i * 4, flags = gg.TYPE_DWORD})
  end
  vals = gg.getValues(vals)

  local target = getAddr()
  if not target then return end
  target = target - 0x48

  local newVals = {}
  for i, v in ipairs(vals) do
    table.insert(newVals, {address = target + (i - 1) * 4, value = v.value, flags = gg.TYPE_DWORD})
  end

  table.insert(newVals, {address = target + 24, value = 0, flags = gg.TYPE_DWORD})
  table.insert(newVals, {address = target + 28, value = 1, flags = gg.TYPE_DWORD})
  for _, off in ipairs({0x58, 0x5C, 0x60, 0x64, 0x68, 0x6C}) do
    table.insert(newVals, {address = target + off, value = 0, flags = gg.TYPE_DWORD})
  end

  gg.setValues(newVals)
  gg.toast(emoji .. " " .. label .. " helicopter skin applied!")
end

function hel1()  helicopterSkin(-0x50,  "Turbo Saucer", "🛸") end
function hel2()  helicopterSkin(-0xD0, "Robot Courier", "🤖") end
function hel3()  helicopterSkin(-0x150, "Santa's Sleigh", "🎅") end
function hel4()  helicopterSkin(-0x10,  "Private Helicopter", "🎩") end
function hel5()  helicopterSkin(0x30,   "Eggplant Helicopter", "🥗") end
function hel6()  helicopterSkin(0x70,   "Flying Carpet", "🕌") end
function hel7()  helicopterSkin(0xB0,   "Chic Lounge Drone", "🏖️") end -- typo diperbaiki
function hel8()  helicopterSkin(0xF0,   "Flying Ship", "🧳") end
function hel9()  helicopterSkin(0x130,  "Helicycle", "🏃‍♂️") end
function hel10() helicopterSkin(0x170,  "Pumpkin Helicopter", "🎃") end
function hel11() helicopterSkin(0x1B0,  "Surveillance Airship", "🕵️") end
function hel12() helicopterSkin(0x1F0,  "Flying Cauldron", "🎃") end
function hel13() helicopterSkin(0x230,  "Feathery Helicopter", "🎭") end
function hel14() helicopterSkin(0x270,  "Egg Chopper", "🐰") end
function hel15() helicopterSkin(0x2B0,  "Flying Bathyscaphe", "💧") end
function hel16() helicopterSkin(0x2F0,  "Pirate Helicopter", "🏴‍☠️") end
function hel17() helicopterSkin(0x330,  "Festive Helicopter", "🐉") end
function hel18() helicopterSkin(0x370,  "Ballroom Helicopter", "💃") end      

function colek2()
local indev = dev
  local menu = gg.choice({
    "🛩️ • Airport Skins",
    "🛩️ • Airplane Skins",
  "❌ • Go Back"
  }, nil,indev)

  if menu == nil then
    return
  elseif menu == 1 then bandara1()
  elseif menu == 2 then bandara2()
  elseif menu == 3 then kums1()
  end
end

function bandara1()
  while true do
    gg.setVisible(false)
    gg.clearResults()

  local skins = {
"🛫 • Aeriel Portal",
"🐲 • Festival Airport",
"🌴 • Tropical Airport",
"👻 • Ghost Airport",
"🪐 • Space Airport",
"🎸 • Rock Airport",
"🎬 • Cinema Airport",
"🎅 • Santa's Residence",
"🐣 • Easter Airport",
"🍭 • Sugary Airport",
"🎿 • Ski Station",
"🌈 • Rainbow's end Airport",
"🕵️ • Secret Base",
"🌟 • Five-Star Airport",
"🎼 • Symphony Airport",
"👗 • Fashion Airport",
"🕌 • Arabian Airport",
  "❌ • Go Back"
  }

  local choice = gg.multiChoice(skins, nil, "🛩️ Select an Airport Skin:")
  if not choice then return end
    -- 🔙 Back option
    if choice[18] then
      if type(colek2) == "function" then
        colek2()
      else
      end
      return
    end

    -- 🔁 Process selected avatars one by one
    for i = 1, 17 do
      if choice[i] then
        local func = _G["das" .. i]
        if type(func) == "function" then
          func()
          gg.toast("✅ " .. skins[i] .. " applied.\n👉 Claim it in-freeze reward!")

          -- ⏸️ Wait for user to press GG icon before continuing
          repeat
            gg.sleep(500)
          until gg.isVisible(true)

          gg.setVisible(false)
        else
          gg.alert("❌ Function Airport" .. i .. "() not found!")
        end
      end
    end

    gg.toast("🎉 All selected Exclusive Airport have been processed!")
    -- 🔄 Setelah selesai → otomatis balik ke menu lagi
  end
end

-- 📁 Cache & File Setup
local folder = "/sdcard/ARH_Cache/"
local fileAddr = folder .. "addresscache.txt"
local function deleteFile(p) pcall(function() os.remove(p) end) end
gg.setVisible(false)

-- 📍 Get Airport Skin Address
function getAddr()
  local f = io.open(fileAddr, "r")
  local addr = f and tonumber(f:read("*l")) or nil
  if f then f:close() end

  if addr then
    local chk = gg.getValues({{address = addr, flags = gg.TYPE_DWORD}})
    if chk and chk[1] and chk[1].value == 30 then return addr end
    deleteFile(fileAddr)
    gg.toast("👑 ARH-Cache cleared")
  end

  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("51;6646134:385", gg.TYPE_DWORD)
  gg.refineNumber("6646134", gg.TYPE_DWORD)
  local r = gg.getResults(1)
  if #r == 0 then gg.alert("❌ Address not found.\nOpen airport skin first.") return nil end

  local newAddr = r[1].address
  local save = io.open(fileAddr, "w")
  if save then save:write(newAddr) save:close() end
  return newAddr
end

-- 🛬 Airport Skin Source Base
local baseAirportAddr = nil
function initAirportSkinSearch()
  if baseAirportAddr then return true end
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("51;6646134:385", gg.TYPE_DWORD)
  gg.refineNumber("6646134", gg.TYPE_DWORD)
  local r = gg.getResults(1)
  if #r == 0 then gg.alert("❌ Airport skin structure not found.") return false end
  baseAirportAddr = r[1].address
  return true
end

-- 🏆 Apply Airport Skin
function airportSkin(offset, label, emoji)
  if not initAirportSkinSearch() then return end
  local src = baseAirportAddr + offset
  local vals = {}
  for i = 0, 5 do
    table.insert(vals, {address = src + i * 4, flags = gg.TYPE_DWORD})
  end
  vals = gg.getValues(vals)

  local target = getAddr()
  if not target then return end
  target = target - 0x48

  local newVals = {}
  for i, v in ipairs(vals) do
    table.insert(newVals, {address = target + (i - 1) * 4, value = v.value, flags = gg.TYPE_DWORD})
  end

  table.insert(newVals, {address = target + 24, value = 0, flags = gg.TYPE_DWORD})
  table.insert(newVals, {address = target + 28, value = 1, flags = gg.TYPE_DWORD})
  for _, off in ipairs({0x58, 0x5C, 0x60, 0x64, 0x68, 0x6C}) do
    table.insert(newVals, {address = target + off, value = 0, flags = gg.TYPE_DWORD})
  end

  gg.setValues(newVals)
  gg.toast(emoji .. " " .. label .. " airport skin applied!")
end

function airportSkinManual(label, emoji, values)
  local base = getAddr()
  if not base then return end

  -- default values
  local defaults = {
    {offset = -0x30, value = 0},
    {offset = -0x2C, value = 1},
    {offset = 0x10, value = 0},
    {offset = 0x18, value = 0},
    {offset = 0x20, value = 0}
  }

  -- gabungkan defaults + custom
  local addrList = {}
  for _, item in ipairs(values) do
    table.insert(addrList, {
      address = base + item.offset,
      flags = gg.TYPE_DWORD,
      value = item.value
    })
  end
  for _, item in ipairs(defaults) do
    table.insert(addrList, {
      address = base + item.offset,
      flags = gg.TYPE_DWORD,
      value = item.value
    })
  end

  gg.setValues(addrList)
  gg.toast(emoji .. " " .. label .. " airport skin applied!")
end

function das1()  airportSkin(-0x190, "Aeriel Portal", "🛫") end
function das2()  airportSkin(-0x150, "Festival Airport", "🐲") end
function das3()  airportSkin(-0x110, "Tropical Airport", "🌴") end
function das4()  airportSkin(-0xD0,  "Ghost Airport", "👻") end
function das5()  airportSkin(-0x90,  "Space Airport", "🪐") end
function das6()  airportSkin(-0x50,  "Rock Airport", "🎸") end
function das7()  airportSkin(-0x10,  "Cinema Airport", "🎬") end
function das8()  airportSkin(0x30,   "Santa's Residence", "🎅") end
function das9()  airportSkin(0x70,   "Easter Airport", "🐣") end
function das10() airportSkin(0xB0,   "Sugary Airport", "🍭") end
function das11() airportSkin(0xF0,   "Ski Station", "🎿") end
function das12() airportSkin(0x130,  "Rainbow's End Airport", "🌈") end
function das13() airportSkin(0x170,  "Secret Base", "🕵️") end
function das14() airportSkin(0x1B0,  "Five-Star Airport", "🌟") end
function das15() airportSkin(0x1F0,  "Symphony Airport", "🎼") end
function das16()
  airportSkinManual("Fashion Airport", "👗", {
    {offset = -0x48, value = 0x696B5328},
    {offset = -0x44, value = 0x69415F6E},
    {offset = -0x40, value = 0x726F7072},
    {offset = -0x3C, value = 0x61665F74},
    {offset = -0x38, value = 0x6F696873},
    {offset = -0x34, value = 0x0000006E}
  })
end

function das17()
  airportSkinManual("Arabian Airport", "🕌", {
    {offset = -0x48, value = 0x696B5322},
    {offset = -0x44, value = 0x69415F6E},
    {offset = -0x40, value = 0x726F7072},
    {offset = -0x3C, value = 0x72615F74},
    {offset = -0x38, value = 0x00006261},
    {offset = -0x34, value = 0x00000000}
  })
end

function bandara2()
  while true do
    gg.setVisible(false)
    gg.clearResults()

  local skins = {
"🛫 • Ultra Plane",
"🐲 • Sky Dragon",
"🌴 • Tropical Biplane",
"👻 • Ghost Plane",
"🪐 • Launch Vehicle",
"🎸 • Rock Plane",
"🎬 • A-Lister Jet",
"🎅 • Holiday Plane",
"🐣 • Bird Plane",
"🍭 • Éclair Plane",
"🎿 • Aero Sleigh",
"🌈 • Lucky Jet",
"🕵️ • Stealth Aircraft",
"🌟 • Seaplane",
"🎼 • Symphony Plane",
"👗 • Fashion Airport",
"🕌 • Arabian Airport",
  "❌ • Go Back"
  }

local choice = gg.multiChoice(skins, nil, "🛩️ Select an Airplane Skin:")
  if not choice then return end
    -- 🔙 Back option
    if choice[18] then
      if type(colek2) == "function" then
        colek2()
      else
      end
      return
    end

    -- 🔁 Process selected avatars one by one
    for i = 1, 17 do
      if choice[i] then
        local func = _G["wat" .. i]
        if type(func) == "function" then
          func()
          gg.toast("✅ " .. skins[i] .. " applied.\n👉 Claim it in-freeze reward!")

          -- ⏸️ Wait for user to press GG icon before continuing
          repeat
            gg.sleep(500)
          until gg.isVisible(true)

          gg.setVisible(false)
        else
          gg.alert("❌ Function Airplane" .. i .. "() not found!")
        end
      end
    end

    gg.toast("🎉 All selected Exclusive Airplane have been processed!")
    -- 🔄 Setelah selesai → otomatis balik ke menu lagi
  end
end

-- 📁 Cache & File Setup
local folder = "/sdcard/ARH_Cache/"
local fileAddr = folder .. "addresscache.txt"
local function deleteFile(p) pcall(function() os.remove(p) end) end
gg.setVisible(false)

-- 📍 Get Airplane Skin Address
function getAddr()
  local f = io.open(fileAddr, "r")
  local addr = f and tonumber(f:read("*l")) or nil
  if f then f:close() end

  if addr then
    local chk = gg.getValues({{address = addr, flags = gg.TYPE_DWORD}})
    if chk and chk[1] and chk[1].value == 30 then return addr end
    deleteFile(fileAddr)
  end

  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("29550;8;1768641316;7037807:85", gg.TYPE_DWORD)
  gg.refineNumber("7037807", gg.TYPE_DWORD)
  local r = gg.getResults(1)
  if #r == 0 then gg.alert("❌ Address not found.\nOpen airplane skin first.") return nil end

  local newAddr = r[1].address
  local save = io.open(fileAddr, "w")
  if save then save:write(newAddr) save:close() end
  return newAddr
end

-- 🛫 Airplane Skin Source Base
local baseAirplaneAddr = nil
function initAirplaneSkinSearch()
  if baseAirplaneAddr then return true end
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("29550;8;1768641316;7037807:85", gg.TYPE_DWORD)
  gg.refineNumber("7037807", gg.TYPE_DWORD)
  local r = gg.getResults(1)
  if #r == 0 then gg.alert("❌ Airplane skin structure not found.") return false end
  baseAirplaneAddr = r[1].address
  return true
end

-- 🏆 Apply Airplane Skin
function airplaneSkin(offset, label, emoji)
  if not initAirplaneSkinSearch() then return end
  local src = baseAirplaneAddr + offset
  local vals = {}
  for i = 0, 5 do
    table.insert(vals, {address = src + i * 4, flags = gg.TYPE_DWORD})
  end
  vals = gg.getValues(vals)

  local target = getAddr()
  if not target then return end
  target = target - 0x48

  local newVals = {}
  for i, v in ipairs(vals) do
    table.insert(newVals, {address = target + (i - 1) * 4, value = v.value, flags = gg.TYPE_DWORD})
  end

  table.insert(newVals, {address = target + 24, value = 0, flags = gg.TYPE_DWORD})
  table.insert(newVals, {address = target + 28, value = 1, flags = gg.TYPE_DWORD})
  for _, off in ipairs({0x58, 0x5C, 0x60, 0x64, 0x68, 0x6C}) do
    table.insert(newVals, {address = target + off, value = 0, flags = gg.TYPE_DWORD})
  end

  gg.setValues(newVals)
  gg.toast(emoji .. " " .. label .. " airplane skin applied!")
end

-- 🛫 Airplane Skins
function wat1()  airplaneSkin(0x3B0, "Ultra Plane", "🛫") end
function wat2()  airplaneSkin(0x2F0, "Sky Dragon", "🐲") end
function wat3()  airplaneSkin(0x230, "Tropical Biplane", "🌴") end
function wat4()  airplaneSkin(0x170, "Ghost Plane", "👻") end
function wat5()  airplaneSkin(0xB0,  "Launch Vehicle", "🪐") end
function wat6()  airplaneSkin(-0x10,  "Rock Plane", "🎸") end
function wat7()  airplaneSkin(-0xD0,  "A-Lister Jet", "🎬") end
function wat8()  airplaneSkin(-0x190, "Holiday Plane", "🎅") end
function wat9()  airplaneSkin(-0x250, "Bird Plane", "🐣") end
function wat10() airplaneSkin(-0x310, "Éclair Plane", "🍭") end
function wat11() airplaneSkin(-0x3D0, "Aero Sleigh", "🎿") end
function wat12() airplaneSkin(-0x490, "Lucky Jet", "🌈") end
function wat13() airplaneSkin(-0x550, "Stealth Aircraft", "🕵️") end
function wat14() airplaneSkin(-0x610, "Seaplane", "🌟") end
function wat15() airplaneSkin(-0x6D0, "Symphony Plane", "🎼") end
function wat16() airplaneSkin(-0x910, "Fashion Plane", "👗") end
function wat17() airplaneSkin(-0x850, "Arabian Plane", "🕌") end

-------------------------------------------------

function colek3()
local indev = dev
  local menu = gg.choice({
    "🚅 • Station Skins",
    "🚅 • Train Skins",
      "❌ • Go Back"
  }, nil,indev)

  if menu == nil then
    return
  elseif menu == 1 then kret1()
  elseif menu == 2 then kret2()
  elseif menu == 3 then kums1()
  end
end

function kret1()
  while true do
    gg.setVisible(false)
    gg.clearResults()

  local skins = {
"🌺 • Flower Station",
"🎄 • Christmas Station (2)",
"🎃 • Halloween Station",
"🏛️ • Roman Station",
"🏰 • Castle Station",
"🎶 • Record Station",
"🏕️ • Training Camp",
"🪐 • Space Station",
"🐲 • Chinese Station",
"🎭 • Theater Set Station",
"🦴 • Ancient Settlement",
"🐣 • Easter Station",
"🎁 • Christmas Station (1)",
"🤠 • Cowboys Station",
"💃 • Disco Station",
"👻 • Ghost Station",
"🌀 • Express Portal",
"🏛️ • Mythic Station",
  "❌ • Go Back"
  }

  local choice = gg.multiChoice(skins, nil, "🚆 Select an Station Skin:")
  if not choice then return end
    -- 🔙 Back option
    if choice[19] then
      if type(colek3) == "function" then
        colek3()
      else
      end
      return
    end

    -- 🔁 Process selected avatars one by one
    for i = 1, 18 do
      if choice[i] then
        local func = _G["sta" .. i]
        if type(func) == "function" then
          func()
          gg.toast("✅ " .. skins[i] .. " applied.\n👉 Claim it in-freeze reward!")
          -- ⏸️ Wait for user to press GG icon before continuing
          repeat
            gg.sleep(500)
          until gg.isVisible(true)

          gg.setVisible(false)
        else
          gg.alert("❌ Function Station" .. i .. "() not found!")
        end
      end
    end

    gg.toast("🎉 All selected Station skin have been processed!")
    -- 🔄 Setelah selesai → otomatis balik ke menu lagi
  end
end

-- 📁 Cache & File Setup
local folder = "/sdcard/.ggcache_arh/"
local fileAddr = folder .. "addresscache.txt"
local function deleteFile(p) pcall(function() os.remove(p) end) end
gg.setVisible(false)

-- 📍 Get Station Skin Address
function getAddr()
  local f = io.open(fileAddr, "r")
  local addr = f and tonumber(f:read("*l")) or nil
  if f then f:close() end

  if addr then
    local chk = gg.getValues({{address = addr, flags = gg.TYPE_DWORD}})
    if chk and chk[1] and chk[1].value == 30 then return addr end
    deleteFile(fileAddr)
    gg.toast("👑 ARH-Cache cleared 👑")
  end

  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("29550;7;1768844127:157", gg.TYPE_DWORD)
  gg.refineNumber("1768844127", gg.TYPE_DWORD)
  local r = gg.getResults(1)
  if #r == 0 then gg.alert("❌ Address not found.\nOpen station skin first.") return nil end

  local newAddr = r[1].address
  local save = io.open(fileAddr, "w")
  if save then save:write(newAddr) save:close() end
  return newAddr
end

-- 🏆 Station Skin Source Base
local baseStationAddr = nil
function initStationSkinSearch()
  if baseStationAddr then return true end
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("29550;7;1768844127:157", gg.TYPE_DWORD)
  gg.refineNumber("1768844127", gg.TYPE_DWORD)
  local r = gg.getResults(1)
  if #r == 0 then gg.alert("❌ Station skin structure not found.") return false end
  baseStationAddr = r[1].address
  return true
end

-- 🏆 Apply Station Skin
function stationSkin(offset, label, emoji)
  if not initStationSkinSearch() then return end
  local src = baseStationAddr + offset
  local vals = {}
  for i = 0, 5 do
    table.insert(vals, {address = src + i * 4, flags = gg.TYPE_DWORD})
  end
  vals = gg.getValues(vals)

  local target = getAddr()
  if not target then return end
  target = target - 0x48

  local newVals = {}
  for i, v in ipairs(vals) do
    table.insert(newVals, {address = target + (i - 1) * 4, value = v.value, flags = gg.TYPE_DWORD})
  end

  table.insert(newVals, {address = target + 24, value = 0, flags = gg.TYPE_DWORD})
  table.insert(newVals, {address = target + 28, value = 1, flags = gg.TYPE_DWORD})
  for _, off in ipairs({0x58, 0x5C, 0x60, 0x64, 0x68, 0x6C}) do
    table.insert(newVals, {address = target + off, value = 0, flags = gg.TYPE_DWORD})
  end

  gg.setValues(newVals)
  gg.toast(emoji .. " " .. label .. " station skin applied!")
end
-- 🎨 Station Skin Functions
function sta1() stationSkin(-0x400, "🌺", "Flower Station") end
function sta2() stationSkin(-0x298, "🎄", "Christmas Station (2)") end
function sta3() stationSkin(-0x1D8, "🎃", "Halloween Station") end
function sta4() stationSkin(-0x118, "🏛️", "Roman Station") end
function sta5() stationSkin(-0x58, "🏰", "Castle Station") end
function sta6() stationSkin(0x68, "🎶", "Record Station") end
function sta7() stationSkin(0x128, "🏕️", "Training Camp") end
function sta8() stationSkin(0x1E8, "🪐", "Space Station") end
function sta9() stationSkin(0x2A8, "🐲", "Chinese Station") end
function sta10() stationSkin(0x368, "🎭", "Theater Set Station") end
function sta11() stationSkin(0x428, "🦴", "Ancient Settlement") end
function sta12() stationSkin(0x4E8, "🐣", "Easter Station") end
function sta13() stationSkin(0x5A8, "🎁", "Christmas Station (1)") end
function sta14() stationSkin(0x668, "🤠", "Cowboys Station") end
function sta15() stationSkin(0x728, "💃", "Disco Station") end
function sta16() stationSkin(0x7E8, "👻", "Ghost Station") end
function sta17() stationSkin(0x8A8, "🌀", "Express Portal") end
function sta18() stationSkin(-0x358, "🏛️", "Mythic Station") end

-------------------------------------------------

function kret2()
  while true do
    gg.setVisible(false)
    gg.clearResults()

  local skins = {
    "🌺 • Flower Train",
"🎄 • Christmas Train (2)",
"🎃 • Halloween Train",
"🏛️ • Express Tram",
"🏰 • Knight Train",
"🎶 • Music Express",
"🏕️ • Wooden Wagon",
"🪐 • Mars Rover",
"🐲 • Dragon Train",
"🎭 • Theater Express",
"🦴 • Primeval Express",
"🐣 • Easter Express",
"🎁 • Christmas Train (1)",
"🤠 • Cowboys Train",
"💃 • Disco Train",
"👻 • Ghost Train",
"🌀 • Future Express",
"🏛️ • Mythic Train",
  "❌ • Go Back"
  }

local choice = gg.multiChoice(skins, nil, "🚆 Select an Train Skin:")
  if not choice then return end
    -- 🔙 Back option
    if choice[19] then
      if type(colek3) == "function" then
        colek3()
      else
      end
      return
    end

    -- 🔁 Process selected avatars one by one
    for i = 1, 18 do
      if choice[i] then
        local func = _G["ret" .. i]
        if type(func) == "function" then
          func()
          gg.toast("✅ " .. skins[i] .. " applied.\n👉 Claim it in-freeze reward!")
          -- ⏸️ Wait for user to press GG icon before continuing
          repeat
            gg.sleep(500)
          until gg.isVisible(true)

          gg.setVisible(false)
        else
          gg.alert("❌ Function Train" .. i .. "() not found!")
        end
      end
    end

    gg.toast("🎉 All selected Exclusive Train have been processed!")
    -- 🔄 Setelah selesai → otomatis balik ke menu lagi
  end
end

-- 📁 Cache & File Setup
local folder = "/sdcard/ARH_Cache/"
local fileAddr = folder .. "addresscache.txt"
local function deleteFile(p) pcall(function() os.remove(p) end) end
gg.setVisible(false)

-- 📍 Get Train Skin Address
function getAddr()
  local f = io.open(fileAddr, "r")
  local addr = f and tonumber(f:read("*l")) or nil
  if f then f:close() end

  if addr then
    local chk = gg.getValues({{address = addr, flags = gg.TYPE_DWORD}})
    if chk and chk[1] and chk[1].value == 30 then return addr end
    deleteFile(fileAddr)
    gg.toast("👑 ARH-Cache cleared")
  end

  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("1953062766;2;1734962795:125", gg.TYPE_DWORD)
  gg.refineNumber("1734962795", gg.TYPE_DWORD)
  local r = gg.getResults(1)
  if #r == 0 then gg.alert("❌ Address not found.\nOpen train skin first.") return nil end

  local newAddr = r[1].address
  local save = io.open(fileAddr, "w")
  if save then save:write(newAddr) save:close() end
  return newAddr
end

-- 🏆 Train Skin Source Base
local baseTrainAddr = nil
function initTrainSkinSearch()
  if baseTrainAddr then return true end
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("1953062766;2;1734962795:125", gg.TYPE_DWORD)
  gg.refineNumber("1734962795", gg.TYPE_DWORD)
  local r = gg.getResults(1)
  if #r == 0 then gg.alert("❌ Train skin structure not found.") return false end
  baseTrainAddr = r[1].address
  return true
end

-- 🏆 Apply Train Skin
function trainSkin(offset, label, emoji)
  if not initTrainSkinSearch() then return end
  local src = baseTrainAddr + offset
  local vals = {}
  for i = 0, 5 do
    table.insert(vals, {address = src + i * 4, flags = gg.TYPE_DWORD})
  end
  vals = gg.getValues(vals)

  local target = getAddr()
  if not target then return end
  target = target - 0x48

  local newVals = {}
  for i, v in ipairs(vals) do
    table.insert(newVals, {address = target + (i - 1) * 4, value = v.value, flags = gg.TYPE_DWORD})
  end

  table.insert(newVals, {address = target + 24, value = 0, flags = gg.TYPE_DWORD})
  table.insert(newVals, {address = target + 28, value = 1, flags = gg.TYPE_DWORD})
  for _, off in ipairs({0x58, 0x5C, 0x60, 0x64, 0x68, 0x6C}) do
    table.insert(newVals, {address = target + off, value = 0, flags = gg.TYPE_DWORD})
  end

  gg.setValues(newVals)
  gg.toast(emoji .. " " .. label .. " train skin applied!")
end

-- 🚂 Train Skin Options
function ret1()  trainSkin(-0x3CC, "Flower Train", "🌺") end
function ret2()  trainSkin(-0x24C, "Christmas Train (2)", "🎄") end
function ret3()  trainSkin(-0x18C, "Halloween Train", "🎃") end
function ret4()  trainSkin(-0xCC, "Express Tram", "🏛️") end
function ret5()  trainSkin(-0xC, "Knight Train", "🏰") end
function ret6()  trainSkin( 0xB4, "Music Express", "🎶") end
function ret7()  trainSkin( 0x174, "Wooden Wagon", "🏕️") end
function ret8()  trainSkin( 0x234, "Mars Rover", "🪐") end
function ret9()  trainSkin( 0x2F4, "Dragon Train", "🐲") end
function ret10() trainSkin( 0x3B4, "Theater Express", "🎭") end
function ret11() trainSkin( 0x474, "Primeval Express", "🦴") end
function ret12() trainSkin( 0x534, "Easter Express", "🐣") end
function ret13() trainSkin( 0x5F4, "Christmas Train (1)", "🎁") end
function ret14() trainSkin( 0x6B4, "Cowboys Train", "🤠") end
function ret15() trainSkin( 0x774, "Disco Train", "💃") end
function ret16() trainSkin( 0x834, "Ghost Train", "👻") end
function ret17() trainSkin( 0x8F4, "Future Express", "🌀") end
function ret18() trainSkin( -0x30C, "Mythic Train", "🏛️") end

-------------------------------------------------

function colek4()
local indev = dev
  local menu = gg.choice({
    "⛵ • Port Skins",
    "⛵ • Ship Skins",
      "❌ • Go Back"
  }, nil,indev)

  if menu == nil then
    return
  elseif menu == 1 then laut1()
  elseif menu == 2 then laut2()
  elseif menu == 3 then kums1()
  end
end

function laut1()
  while true do
    gg.setVisible(false)
    gg.clearResults()

  local skins = {
"🏴‍☠️ • Pirate Harbor",
"🌴 • Equatorial Port",
"🍭 • Sweet Port",
"🦁 • Doge's Pier",
"💀 • Port Of Horrors",
"💘 • Romantic Harbor",
"🛡️ • Viking Harbor",
"🌳 • Jungle Port",
"🎄 • Christmas Port",
"🏮 • Lantern Harbor",
"🏺 • Ancient Port",
"🤠 • Saloon on the water",
"🍬 • Candy Port",
"🕌 • Egyptian-Themed Port",
"❄️ • Artic Port",
  "❌ • Go Back"
  }

local choice = gg.multiChoice(skins, nil, "🛳️ Select Port Skin:")
  if not choice then return end
    -- 🔙 Back option
    if choice[16] then
      if type(colek4) == "function" then
        colek4()
      else
      end
      return
    end

    -- 🔁 Process selected avatars one by one
    for i = 1, 15 do
      if choice[i] then
        local func = _G["buhan" .. i]
        if type(func) == "function" then
          func()
          gg.toast("✅ " .. skins[i] .. " applied.\n👉 Claim it in-freeze reward!")
          -- ⏸️ Wait for user to press GG icon before continuing
          repeat
            gg.sleep(500)
          until gg.isVisible(true)

          gg.setVisible(false)
        else
          gg.alert("❌ Function Port" .. i .. "() not found!")
        end
      end
    end

    gg.toast("🎉 All selected Exclusive Port have been processed!")
    -- 🔄 Setelah selesai → otomatis balik ke menu lagi
  end
end

-- 📁 Cache & File Setup
local folder = "/sdcard/ARH_Cache/"
local fileAddr = folder .. "addresscache.txt"
local function deleteFile(p) pcall(function() os.remove(p) end) end
gg.setVisible(false)

-- 📍 Get Port Skin Address
function getAddr()
  local f = io.open(fileAddr, "r")
  local addr = f and tonumber(f:read("*l")) or nil
  if f then f:close() end

  if addr then
    local chk = gg.getValues({{address = addr, flags = gg.TYPE_DWORD}})
    if chk and chk[1] and chk[1].value == 30 then return addr end
    deleteFile(fileAddr)
    gg.toast("👑 ARH-Cache cleared")
  end

  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("1717912671;1919902322;827609951::129", gg.TYPE_DWORD)
  gg.refineNumber("1717912671", gg.TYPE_DWORD)
  local r = gg.getResults(1)
  if #r == 0 then gg.alert("❌ Address not found.\nOpen port skin first.") return nil end

  local newAddr = r[1].address
  local save = io.open(fileAddr, "w")
  if save then save:write(newAddr) save:close() end
  return newAddr
end

-- 🏆 Port Skin Source Base
local basePortAddr = nil
function initPortSkinSearch()
  if basePortAddr then return true end
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("1717912671;1919902322;827609951::129", gg.TYPE_DWORD)
  gg.refineNumber("1717912671", gg.TYPE_DWORD)
  local r = gg.getResults(1)
  if #r == 0 then gg.alert("❌ Port skin structure not found.") return false end
  basePortAddr = r[1].address
  return true
end

-- 🏆 Apply Port Skin
function portSkin(offset, label, emoji)
  if not initPortSkinSearch() then return end
  local src = basePortAddr + offset
  local vals = {}
  for i = 0, 5 do
    table.insert(vals, {address = src + i * 4, flags = gg.TYPE_DWORD})
  end
  vals = gg.getValues(vals)

  local target = getAddr()
  if not target then return end
  target = target - 0x48

  local newVals = {}
  for i, v in ipairs(vals) do
    table.insert(newVals, {address = target + (i - 1) * 4, value = v.value, flags = gg.TYPE_DWORD})
  end

  table.insert(newVals, {address = target + 24, value = 0, flags = gg.TYPE_DWORD})
  table.insert(newVals, {address = target + 28, value = 1, flags = gg.TYPE_DWORD})
  for _, off in ipairs({0x58, 0x5C, 0x60, 0x64, 0x68, 0x6C}) do
    table.insert(newVals, {address = target + off, value = 0, flags = gg.TYPE_DWORD})
  end

  gg.setValues(newVals)
  gg.toast(emoji .. " " .. label .. " port skin applied!")
end

function buhan1()  portSkin(0x74,   "Pirate Harbor",         "🏴‍☠️") end
function buhan2()  portSkin(0x34,   "Equatorial Port",       "🌴")   end
function buhan3()  portSkin(0xB4,   "Sweet Port",            "🍭")   end
function buhan4()  portSkin(0xF4,   "Doge's Pier",           "🦁")   end
function buhan5()  portSkin(0x134,  "Port Of Horrors",       "💀")   end
function buhan6()  portSkin(0x174,  "Romantic Harbor",       "💘")   end
function buhan7()  portSkin(0x1b4,  "Viking Harbor",         "🛡️")   end
function buhan8()  portSkin(0x1f4,  "Jungle Port",           "🌳")   end
function buhan9()  portSkin(0x234,  "Christmas Port",        "🎄")   end
function buhan10() portSkin(0x274,  "Lantern Harbor",        "🏮")   end
function buhan11() portSkin(0x2b4,  "Ancient Port",          "🏺")   end
function buhan12() portSkin(0x2f4,  "Saloon on the Water",   "🤠")   end
function buhan13() portSkin(0x334,  "Candy Port",            "🍬")   end
function buhan14() portSkin(0x374,  "Egyptian-Themed Port",  "🕌")   end
function buhan15() portSkin(0x3b4,  "Arctic Port",           "❄️")   end

-------------------------------------------------

function laut2()
  while true do
    gg.setVisible(false)
    gg.clearResults()

  local skins = {
"🏴‍☠️ • Pirate Galleon",
"🌴 • Cruise Liner",
"🍭 • Croissant Ferry",
"🦁 • Gondola",
"💀 • Ghost Ship",
"💘 • Love Boat",
"🛡️ • Sturdy Drakkar",
"🌳 • Cruise Ship",
"🎄 • Gift Boat",
"🏮 • Dragon Boat",
"🏺 • Greek Bireme",
"🤠 • River Steamboat",
"🍬 • Sweet Boat",
"🕌 • Egyptian-Themed Ship",
"❄️ • Arctic Ship",
  "❌ • Go Back"
  }

local choice = gg.multiChoice(skins, nil, "🛳️ Select Ship Skin:")
  if not choice then return end
    -- 🔙 Back option
    if choice[16] then
      if type(colek4) == "function" then
        colek4()
      else
      end
      return
    end

    -- 🔁 Process selected avatars one by one
    for i = 1, 15 do
      if choice[i] then
        local func = _G["kap" .. i]
        if type(func) == "function" then
          func()
          gg.toast("✅ " .. skins[i] .. " applied.\n👉 Claim it in-freeze reward!")
          -- ⏸️ Wait for user to press GG icon before continuing
          repeat
            gg.sleep(500)
          until gg.isVisible(true)

          gg.setVisible(false)
        else
          gg.alert("❌ Function Ship" .. i .. "() not found!")
        end
      end
    end

    gg.toast("🎉 All selected Exclusive Ship have been processed!")
    -- 🔄 Setelah selesai → otomatis balik ke menu lagi
  end
end

-- 📁 Cache & File Setup
local folder = "/sdcard/ARH_Cache/"
local fileAddr = folder .. "addresscache.txt"
local function deleteFile(p) pcall(function() os.remove(p) end) end
gg.setVisible(false)

-- 📍 Get Boat Skin Address
function getAddr()
  local f = io.open(fileAddr, "r")
  local addr = f and tonumber(f:read("*l")) or nil
  if f then f:close() end

  if addr then
    local chk = gg.getValues({{address = addr, flags = gg.TYPE_DWORD}})
    if chk and chk[1] and chk[1].value == 30 then return addr end
    deleteFile(fileAddr)
    gg.toast("👑 ARH-Cache cleared")
  end

  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("12628;1768190575;1784639593:381", gg.TYPE_DWORD)
  gg.refineNumber("1784639593", gg.TYPE_DWORD)
  local r = gg.getResults(1)
  if #r == 0 then gg.alert("❌ Address not found.\nOpen boat skin first.") return nil end

  local newAddr = r[1].address
  local save = io.open(fileAddr, "w")
  if save then save:write(newAddr) save:close() end
  return newAddr
end

-- 🏆 Boat Skin Source Base
local baseBoatAddr = nil
function initBoatSkinSearch()
  if baseBoatAddr then return true end
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("12628;1768190575;1784639593:381", gg.TYPE_DWORD)
  gg.refineNumber("1784639593", gg.TYPE_DWORD)
  local r = gg.getResults(1)
  if #r == 0 then gg.alert("❌ Boat skin structure not found.") return false end
  baseBoatAddr = r[1].address
  return true
end

-- 🏆 Apply Boat Skin
function boatSkin(offset, label, emoji)
  if not initBoatSkinSearch() then return end
  local src = baseBoatAddr + offset
  local vals = {}
  for i = 0, 5 do
    table.insert(vals, {address = src + i * 4, flags = gg.TYPE_DWORD})
  end
  vals = gg.getValues(vals)

  local target = getAddr()
  if not target then return end
  target = target - 0x48

  local newVals = {}
  for i, v in ipairs(vals) do
    table.insert(newVals, {address = target + (i - 1) * 4, value = v.value, flags = gg.TYPE_DWORD})
  end

  table.insert(newVals, {address = target + 24, value = 0, flags = gg.TYPE_DWORD})
  table.insert(newVals, {address = target + 28, value = 1, flags = gg.TYPE_DWORD})
  for _, off in ipairs({0x58, 0x5C, 0x60, 0x64, 0x68, 0x6C}) do
    table.insert(newVals, {address = target + off, value = 0, flags = gg.TYPE_DWORD})
  end

  gg.setValues(newVals)
  gg.toast(emoji .. " " .. label .. " boat skin applied!")
end

function kap1()  boatSkin(0x1F8,  "Pirate Galleon",        "🏴‍☠️") end
function kap2()  boatSkin(-0x188, "Cruise Liner",          "🌴")   end
function kap3()  boatSkin(-0x148, "Croissant Ferry",       "🍭")   end
function kap4()  boatSkin(-0x108, "Gondola",               "🦁")   end
function kap5()  boatSkin(-0xC8,  "Ghost Ship",            "💀")   end
function kap6()  boatSkin(-0x88,  "Love Boat",             "💘")   end
function kap7()  boatSkin(-0x48,  "Sturdy Drakkar",        "🛡️")   end
function kap8()  boatSkin(-0x8,   "Cruise Ship",           "🌳")   end
function kap9()  boatSkin(0x38,   "Gift Boat",             "🎄")   end
function kap10() boatSkin(0x78,   "Dragon Boat",           "🏮")   end
function kap11() boatSkin(0xb8,   "Greek Bireme",          "🏺")   end
function kap12() boatSkin(0xf8,   "River Steamboat",       "🤠")   end
function kap13() boatSkin(0x138,  "Sweet Boat",            "🍬")   end
function kap14() boatSkin(0x178,  "Egyptian-Themed Ship",  "🕌")   end
function kap15() boatSkin(0x1b8,  "Arctic Ship",           "❄️")   end

-------------------------------------------------

function colek5()
  while true do
    gg.setVisible(false)
    gg.clearResults()

  local skins = {
"🏴‍☠️ • Pirate Shack",
"⚓️ • Pirate Hub",
"🏰 • Pirate Fort",
"🏝️ • Island House",
"🏯 • Island Manor",
"🏡 • Island Residance",
"🧙‍♀️ • Witct's House",
"🏚️ • Witct's Manor",
"🏰 • Witct's Castle",
"❄️ • Ice Castle",
"🗼 • Little Paris",
"🐣 • Easter Village",
"🦕 • Neanderthal Island",
"🪵 • Aztec Island",
  "❌ • Go Back"
  }

local choice = gg.multiChoice(skins, nil, "🏯 Select Fortress Skin:")
  if not choice then return end
    -- 🔙 Back option
    if choice[15] then
      if type(kums1) == "function" then
        kums1()
      else
      end
      return
    end

    -- 🔁 Process selected avatars one by one
    for i = 1, 14 do
      if choice[i] then
        local func = _G["pulo" .. i]
        if type(func) == "function" then
          func()
          gg.toast("✅ " .. skins[i] .. " applied.\n👉 Claim it in-freeze reward!")
          -- ⏸️ Wait for user to press GG icon before continuing
          repeat
            gg.sleep(500)
          until gg.isVisible(true)

          gg.setVisible(false)
        else
          gg.alert("❌ Function Fortress" .. i .. "() not found!")
        end
      end
    end

    gg.toast("🎉 All selected Exclusive Fortress have been processed!")
    -- 🔄 Setelah selesai → otomatis balik ke menu lagi
  end
end

-- 📁 Cache & File Setup
local folder = "/sdcard/ARH_Cache/"
local fileAddr = folder .. "addresscache.txt"
local function deleteFile(p) pcall(function() os.remove(p) end) end
gg.setVisible(false)

-- 📍 Get Fortress Skin Address
function getAddr()
  local f = io.open(fileAddr, "r")
  local addr = f and tonumber(f:read("*l")) or nil
  if f then f:close() end

  if addr then
    local chk = gg.getValues({{address = addr, flags = gg.TYPE_DWORD}})
    if chk and chk[1] and chk[1].value == 30 then return addr end
    deleteFile(fileAddr)
    gg.toast("👑 ARH-Cache cleared")
  end

  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("13157;1866882926;1651733601:61", gg.TYPE_DWORD)
  gg.refineNumber("1651733601", gg.TYPE_DWORD)
  local r = gg.getResults(1)
  if #r == 0 then gg.alert("❌ Address not found.\nOpen fortress skin first.") return nil end

  local newAddr = r[1].address
  local save = io.open(fileAddr, "w")
  if save then save:write(newAddr) save:close() end
  return newAddr
end

-- 🏰 Fortress Skin Source Base
local baseFortressAddr = nil
function initFortressSkinSearch()
  if baseFortressAddr then return true end
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("13157;1866882926;1651733601:61", gg.TYPE_DWORD)
  gg.refineNumber("1651733601", gg.TYPE_DWORD)
  local r = gg.getResults(1)
  if #r == 0 then gg.alert("❌ Fortress skin structure not found.") return false end
  baseFortressAddr = r[1].address
  return true
end

-- 🏆 Apply Fortress Skin
function fortressSkin(offset, label, emoji)
  if not initFortressSkinSearch() then return end
  local src = baseFortressAddr + offset
  local vals = {}
  for i = 0, 5 do
    table.insert(vals, {address = src + i * 4, flags = gg.TYPE_DWORD})
  end
  vals = gg.getValues(vals)

  local target = getAddr()
  if not target then return end
  target = target - 0x48

  local newVals = {}
  for i, v in ipairs(vals) do
    table.insert(newVals, {address = target + (i - 1) * 4, value = v.value, flags = gg.TYPE_DWORD})
  end

  table.insert(newVals, {address = target + 24, value = 0, flags = gg.TYPE_DWORD})
  table.insert(newVals, {address = target + 28, value = 1, flags = gg.TYPE_DWORD})
  for _, off in ipairs({0x58, 0x5C, 0x60, 0x64, 0x68, 0x6C}) do
    table.insert(newVals, {address = target + off, value = 0, flags = gg.TYPE_DWORD})
  end

  gg.setValues(newVals)
  gg.toast(emoji .. " " .. label .. " fortress skin applied!")
end

-- 🌴 Ship Skins Functions
function pulo1()  fortressSkin(-0xd0, "Pirate Shack",         "🏴‍☠️") end
function pulo2()  fortressSkin(-0x90, "Pirate Hub",           "⚓️") end
function pulo3()  fortressSkin(-0x50, "Pirate Fort",          "🏰") end
function pulo4()  fortressSkin(-0x10, "Island House",         "🏝️") end
function pulo5()  fortressSkin(0x30,  "Island Manor",         "🏯") end
function pulo6()  fortressSkin(0x70,  "Island Residence",     "🏡") end -- ✅ Fixed typo
function pulo7()  fortressSkin(0xb0,  "Witch's House",        "🧙‍♀️") end
function pulo8()  fortressSkin(0xf0,  "Witch's Manor",        "🏚️") end
function pulo9()  fortressSkin(0x130, "Witch's Castle",       "🏰") end
function pulo10() fortressSkin(0x170, "Ice Castle",           "❄️") end
function pulo11() fortressSkin(0x1b0, "Little Paris",         "🗼") end
function pulo12() fortressSkin(0x1f0, "Easter Village",       "🐣") end
function pulo13() fortressSkin(0x230, "Neanderthal Island",   "🦕") end
function pulo14() fortressSkin(0x270, "Aztec Island", "🪵") end

-------------------------------------------------

function kums2()
local indev = dev
  local menu = gg.choice({
"🪧 • Event Townsign",
"🪧 • Random Townsign",
 "❌ • Go Back"
  }, nil,indev)

  if menu == nil then
    return
  elseif menu == 1 then townsign1()
  elseif menu == 2 then townsign2()
  elseif menu == 3 then gp3()
  end
end

function townsign1()
while true do
  gg.setVisible(false)
  gg.clearResults()

  local skins = {
"🏴‍☠️ • Pirate Town Sign",
"❄️ • Winter Town Sign",
"🎉 • Festive Town Sign",
"🔮 • Mystical Town Sign",
"👻 • Supernatural Town Sign",
"🐙 • Cthutun Town Sign",
"🎁 • Holiday Town Sign",
"🛸 • Extraterrestrial Town Sign",
"💀 • Ghostly Town Sign",
"🍰 • Dessert Town Sign",
"🤠 • Cowboy Town Sign",
"🪶 • Power of Ancestors Town Sign",
"🏛️ • Atlantis Town Sign",
"🌿 • Smart Garden Town Sign",
"🍭 • Sweet Treat Town Sign",
"🐧 • Penguin Resort Town Sign",
  "❌ • Go Back"
  }

  local choice = gg.multiChoice(skins, nil, "🪧 City Townsign Collection")
  if not choice then return end
    -- 🔙 Back option
    if choice[17] then
      if type(kums2) == "function" then
        kums2()
      else
      end
      return
    end

    -- 🔁 Process selected avatars one by one
    for i = 1, 21 do
      if choice[i] then
        local func = _G["signEvent" .. i]
        if type(func) == "function" then
          func()
          gg.toast("✅ " .. skins[i] .. " applied.\n👉 Claim it in-freeze reward!")
          -- ⏸️ Wait for user to press GG icon before continuing
          repeat
            gg.sleep(500)
          until gg.isVisible(true)

          gg.setVisible(false)
        else
          gg.alert("❌ Function City Townsign Event" .. i .. "() not found!")
        end
      end
    end

    gg.toast("🎉 All selected City Townsign Event have been processed!")
    -- 🔄 Setelah selesai → otomatis balik ke menu lagi
  end
end

-- 📁 Cache & File Setup
local folder = "/sdcard/ARH_Cache/"
local fileAddr = folder .. "addresscache.txt"
local function deleteFile(p) pcall(function() os.remove(p) end) end
gg.setVisible(false)

-- 📍 Get SignEvent Address
function getSignEventAddr()
  local f = io.open(fileAddr, "r")
  local addr = f and tonumber(f:read("*l")) or nil
  if f then f:close() end

  if addr then
    local chk = gg.getValues({{address = addr, flags = gg.TYPE_DWORD}})
    if chk and chk[1] and chk[1].value == 30 then return addr end
    deleteFile(fileAddr)
    gg.toast("👑 ARH-Cache cleared")
  end

  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("32;49;37;1953055504:97", gg.TYPE_DWORD)
  gg.refineNumber("37", gg.TYPE_DWORD)
  local r = gg.getResults(1)
  if #r == 0 then gg.alert("❌ Address not found.\nOpen the town sign first.") return nil end

  local newAddr = r[1].address
  local save = io.open(fileAddr, "w")
  if save then save:write(newAddr) save:close() end
  return newAddr
end

-- 🎯 SignEvent Source Base
local baseSignAddr = nil
function initSignEventSearch()
  if baseSignAddr then return true end
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("32;49;37;1953055504:97", gg.TYPE_DWORD)
  gg.refineNumber("37", gg.TYPE_DWORD)
  local r = gg.getResults(1)
  if #r == 0 then gg.alert("❌ Town Sign structure not found.") return false end
  baseSignAddr = r[1].address
  return true
end

-- 🪧 Apply SignEvent Skin
function applySignEvent(offset, label, emoji)
  if not initSignEventSearch() then return end
  local src = baseSignAddr + offset
  local vals = {}
  for i = 0, 5 do
    table.insert(vals, {address = src + i * 4, flags = gg.TYPE_DWORD})
  end
  vals = gg.getValues(vals)

  local target = getSignEventAddr()
  if not target then return end
  target = target - 0x48

  local newVals = {}
  for i, v in ipairs(vals) do
    table.insert(newVals, {address = target + (i - 1) * 4, value = v.value, flags = gg.TYPE_DWORD})
  end

  table.insert(newVals, {address = target + 24, value = 0, flags = gg.TYPE_DWORD})
  table.insert(newVals, {address = target + 28, value = 1, flags = gg.TYPE_DWORD})
  for _, off in ipairs({0x58, 0x5C, 0x60, 0x64, 0x68, 0x6C}) do
    table.insert(newVals, {address = target + off, value = 0, flags = gg.TYPE_DWORD})
  end

  gg.setValues(newVals)
  gg.toast(emoji .. " " .. label .. " applied!")
end

-- 🪧 SignEvent Options
function signEvent1()  applySignEvent(-0xF8,  "Pirate Town Sign",              "🏴‍☠️") end
function signEvent2()  applySignEvent(-0xA8,  "Winter Town Sign",              "❄️") end
function signEvent3()  applySignEvent(-0x58,  "Festive Town Sign",             "🎉") end
function signEvent4()  applySignEvent(-0x08,  "Mystical Town Sign",            "🔮") end
function signEvent5()  applySignEvent(0x48,   "Supernatural Town Sign",        "👻") end
function signEvent6()  applySignEvent(0x98,   "Cthutun Town Sign",             "🐙") end
function signEvent7()  applySignEvent(0xE8,   "Holiday Town Sign",             "🎁") end
function signEvent8()  applySignEvent(0x138,  "Extraterrestrial Town Sign",    "🛸") end
function signEvent9()  applySignEvent(0x188,  "Ghostly Town Sign",             "💀") end
function signEvent10() applySignEvent(0x1D8,  "Dessert Town Sign",             "🍰") end
function signEvent11() applySignEvent(0x228,  "Cowboy Town Sign",              "🤠") end
function signEvent12() applySignEvent(0x278,  "Power of Ancestors Town Sign",  "🪶") end
function signEvent13() applySignEvent(0x2C8,  "Atlantis Town Sign",            "🏛️") end
function signEvent14() applySignEvent(0x318,  "Smart Garden Town Sign",        "🌿") end
function signEvent15() applySignEvent(0x368,  "Sweet Treat Town Sign",         "🍭") end
function signEvent16() applySignEvent(0x3B8,  "Penguin Resort Town Sign",      "🐧") end

function townsign2()
while true do
  gg.setVisible(false)
  gg.clearResults()

  local skins = {
"🐣 • Easter Town Sign",
"🏘️ • Town Day Town Sign",
"🎃 • Big Halloween Sign",
"🎄 • Christmas Town Sign",
"🤠 • Good Old Rancho Sign",
"🎬 • Big Screen Town Sign",
"🛩️ • Aviator Town Sign",
"🌺 • Aloha Town Sign",
"🧟 • Paranormal Town Sign",
"👾 • Inflatable Monster Sign",
"🏂 • Snowboarding Town Sign",
"🍬 • Bubble Gum For All Sign",
"🥤 • Smoothie Stand Sign",
"🏡 • Cozy Home Sign",
"🔮 • Christmas Ball Town Sign",
"🎤 • Coming To You Live Sign",
"🌃 • The Town Never Sleeps Sign",
"🍎 • Big Apple Town Sign",
"🧚 • Fairytale Town Sign",
"🎸 • Rock Town Sign",
"🎉 • Anniversary Town Sign",
  "❌ • Go Back"
  }

  local choice = gg.multiChoice(skins, nil, "🪧 City Townsign Collection")
  if not choice then return end
    -- 🔙 Back option
    if choice[22] then
      if type(kums2) == "function" then
        kums2()
      else
      end
      return
    end

    -- 🔁 Process selected avatars one by one
    for i = 1, 21 do
      if choice[i] then
        local func = _G["signRandom" .. i]
        if type(func) == "function" then
          func()
          gg.toast("✅ " .. skins[i] .. " applied.\n👉 Claim it in-freeze reward!")
          -- ⏸️ Wait for user to press GG icon before continuing
          repeat
            gg.sleep(500)
          until gg.isVisible(true)

          gg.setVisible(false)
        else
          gg.alert("❌ Function City Townsign Random" .. i .. "() not found!")
        end
      end
    end

    gg.toast("🎉 All selected City Townsign Random have been processed!")
    -- 🔄 Setelah selesai → otomatis balik ke menu lagi
  end
end

-- 📁 Cache & File Setup
local folder = "/sdcard/ARH_Cache/"
local fileAddr = folder .. "addresscache.txt"
local function deleteFile(p) pcall(function() os.remove(p) end) end
gg.setVisible(false)

-- 📍 Get SignRandom Address
function getSignRandomAddr()
  local f = io.open(fileAddr, "r")
  local addr = f and tonumber(f:read("*l")) or nil
  if f then f:close() end

  if addr then
    local chk = gg.getValues({{address = addr, flags = gg.TYPE_DWORD}})
    if chk and chk[1] and chk[1].value == 30 then return addr end
    deleteFile(fileAddr)
    gg.toast("👑 ARH-Cache cleared")
  end

  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("1634034188;33;26;1953055504:81", gg.TYPE_DWORD)
  gg.refineNumber("26", gg.TYPE_DWORD)
  local r = gg.getResults(1)
  if #r == 0 then gg.alert("❌ Address not found.\nOpen the town sign first.") return nil end

  local newAddr = r[1].address
  local save = io.open(fileAddr, "w")
  if save then save:write(newAddr) save:close() end
  return newAddr
end

-- 🎯 SignRandom Source Base
local baseSignAddr = nil
function initSignRandomSearch()
  if baseSignAddr then return true end
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("1634034188;33;26;1953055504:81", gg.TYPE_DWORD)
  gg.refineNumber("26", gg.TYPE_DWORD)
  local r = gg.getResults(1)
  if #r == 0 then gg.alert("❌ Town Sign structure not found.") return false end
  baseSignAddr = r[1].address
  return true
end

-- 🪧 Apply SignRandom Skin
function applySignRandom(offset, label, emoji)
  if not initSignRandomSearch() then return end
  local src = baseSignAddr + offset
  local vals = {}
  for i = 0, 5 do
    table.insert(vals, {address = src + i * 4, flags = gg.TYPE_DWORD})
  end
  vals = gg.getValues(vals)

  local target = getSignRandomAddr()
  if not target then return end
  target = target - 0x48

  local newVals = {}
  for i, v in ipairs(vals) do
    table.insert(newVals, {address = target + (i - 1) * 4, value = v.value, flags = gg.TYPE_DWORD})
  end

  table.insert(newVals, {address = target + 24, value = 0, flags = gg.TYPE_DWORD})
  table.insert(newVals, {address = target + 28, value = 1, flags = gg.TYPE_DWORD})
  for _, off in ipairs({0x58, 0x5C, 0x60, 0x64, 0x68, 0x6C}) do
    table.insert(newVals, {address = target + off, value = 0, flags = gg.TYPE_DWORD})
  end

  gg.setValues(newVals)
  gg.toast(emoji .. " " .. label .. " applied!")
end

-- 🪧 SignRandom Options
function signRandom1()  applySignRandom(-0x8,  "Easter Town Sign",               "🐣") end
function signRandom2()  applySignRandom(0x228, "Town Day Town Sign",             "🏘️") end
function signRandom3()  applySignRandom(0x278, "Big Halloween Sign",             "🎃") end
function signRandom4()  applySignRandom(0x2C8, "Christmas Town Sign",            "🎄") end
function signRandom5()  applySignRandom(0x638, "Good Old Rancho Sign",           "🤠") end
function signRandom6()  applySignRandom(0x688, "Big Screen Town Sign",           "🎬") end
function signRandom7()  applySignRandom(0x6D8, "Aviator Town Sign",              "🛩️") end
function signRandom8()  applySignRandom(0x778, "Aloha Town Sign",                "🌺") end
function signRandom9()  applySignRandom(0x7C8, "Paranormal Town Sign",           "🧟") end
function signRandom10() applySignRandom(0x818, "Inflatable Monster Sign",        "👾") end
function signRandom11() applySignRandom(0x868, "Snowboarding Town Sign",         "🏂") end
function signRandom12() applySignRandom(0x8B8, "Bubble Gum For All Sign",        "🍬") end
function signRandom13() applySignRandom(0x908, "Smoothie Stand Sign",            "🥤") end
function signRandom14() applySignRandom(0x958, "Cozy Home Sign",                 "🏡") end
function signRandom15() applySignRandom(0x9A8, "Christmas Ball Town Sign",       "🔮") end
function signRandom16() applySignRandom(0x9F8, "Coming To You Live Sign",        "🎤") end
function signRandom17() applySignRandom(0xA48, "The Town Never Sleeps Sign",     "🌃") end
function signRandom18() applySignRandom(0xA98, "Big Apple Town Sign",            "🍎") end
function signRandom19() applySignRandom(0xAE8, "Fairytale Town Sign",            "🧚") end
function signRandom20() applySignRandom(0xB38, "Rock Town Sign",                 "🎸") end
function signRandom21() applySignRandom(0xB88, "Anniversary Town Sign",          "🎉") end
    
function kums3()
while true do
  local options = {}
  for i = 1, 63 do
    table.insert(options, "🧩 • Sticker (" .. i .. ")")
  end
  table.insert(options, "❌ • Go Back")

  -- 📋 Multi select
  local choice = gg.multiChoice(options, nil, "🎨 Select sticker(s) to apply:")

  if not choice then 
    return 
  end

  -- 🔙 If Back selected
  if choice[64] then
    if type(gp3) == "function" then
      gp3()
    else
    end
    return
  end

  -- 🔁 Process selected stickers one by one
  for i = 1, 63 do
    if choice[i] then
      local func = _G["tikel" .. i]
      if type(func) == "function" then
        func()
        gg.toast("✅ " .. options[i] .. " applied.\n👉 Claim it in-freeze reward!")

        -- ⏸️ Wait until user taps GG icon to continue
        repeat
          gg.sleep(500)
        until gg.isVisible(true)

        gg.setVisible(false) -- hide again after continue
      else
        gg.alert("❌ Sticker " .. i .. " function not found!")
      end
    end
  end

  gg.toast("🎉 All selected stickers have been processed!")
end
end

-- 🧩 Apply Sticker by Address
function applySticker(hex1, hex2, hex3, label)
  local addr = getAddr()
  if not addr then return end

  local patch = {
    {address = addr - 0x48, flags = gg.TYPE_DWORD, value = hex1},
    {address = addr - 0x44, flags = gg.TYPE_DWORD, value = hex2},
    {address = addr - 0x40, flags = gg.TYPE_DWORD, value = hex3},
    {address = addr - 0x3C, flags = gg.TYPE_DWORD, value = 0},
    {address = addr - 0x38, flags = gg.TYPE_DWORD, value = 0},
    {address = addr - 0x34, flags = gg.TYPE_DWORD, value = 0},
    {address = addr - 0x30, flags = gg.TYPE_DWORD, value = 0},
    {address = addr - 0x2C, flags = gg.TYPE_DWORD, value = 1},
    {address = addr + 0x10, flags = gg.TYPE_DWORD, value = 0},
    {address = addr + 0x18, flags = gg.TYPE_DWORD, value = 0},
    {address = addr + 0x20, flags = gg.TYPE_DWORD, value = 0},
  }

  gg.setValues(patch)
  gg.toast("✅ Sticker " .. label .. " applied successfully!")
end

-- 📦 Sticker Data
local stickers = {
  {0x6F6D6514, 0x735F696A, 0x00333170}, {0x6F6D6512, 0x735F696A, 0x00003274},
  {0x6F6D6512, 0x735F696A, 0x00343470}, {0x6F6D6512, 0x735F696A, 0x00003874},
  {0x6F6D6512, 0x735F696A, 0x00343770}, {0x6F6D6514, 0x735F696A, 0x00373170},
  {0x6F6D6512, 0x735F696A, 0x00003970}, {0x6F6D6512, 0x735F696A, 0x00003674},
  {1869440276, 1935632746, 3683188},     {1869440276, 1935632746, 355160},
  {1869440276, 1935632746, 3551860},     {1869440276, 1935632746, 3682932},
  {1869440276, 1935632746, 3748468},     {1869440276, 1935632746, 3158900},
  {1869440276, 1935632746, 3224436},     {1869440276, 1935632746, 3289972},
  {0x6F6D6514, 0x735F696A, 0x00343170}, {0x6F6D6514, 0x735F696A, 0x00323270},
  {0x6F6D6512, 0x735F696A, 0x00003370}, {0x6F6D6510, 0x765F696A, 0x00000033},
  {0x6F6D6514, 0x735F696A, 0x00313270}, {0x6F6D6512, 0x735F696A, 0x00003670},
  {0x6F6D6510, 0x765F696A, 0x00000032}, {0x6F6D6514, 0x735F696A, 0x00393170},
  {0x6F6D6514, 0x735F696A, 0x00303170}, {0x6F6D6514, 0x735F696A, 0x00353270},
  {0x6F6D6514, 0x735F696A, 0x00313170}, {0x6F6D6512, 0x735F696A, 0x00003574},
  {0x6F6D6512, 0x735F696A, 0x00003774}, {0x6F6D6514, 0x735F696A, 0x00373270},
  {0x6F6D6512, 0x735F696A, 0x00003374}, {1869440276, 1935632746, 3617908},
  {1869440276, 1935632746, 3683444},     {0x6F6D6514, 0x735F696A, 0x00363170},
  {1869440276, 1935632746, 361816},      {1869440276, 1935632746, 3682676},
  {1869440276, 1935632746, 3420788},     {1869440276, 1935632746, 3486580},
  {0x6F6D6514, 0x735F696A, 0x00333574}, {1869440276, 1935632746, 3421044},
  {1869440276, 1935632746, 3421556},     {1869440276, 1935632746, 3158388},
  {1869440276, 1935632746, 3617140},     {1869440276, 1935632746, 3552628},
  {1869440276, 1935632746, 3355252},     {1869440276, 1935632746, 3290228},
  {1869440276, 1935632746, 3487092},     {1869440276, 1935632746, 3355764},
  {1869440276, 1935632746, 3289716},     {1869440276, 1935632746, 3289460},
  {1869440276, 1935632746, 3683700},     {1869440276, 1935632746, 3486324},
  {1869440276, 1935632746, 3552116},     {1869440276, 1935632746, 3223924},
  {1869440276, 1935632746, 3617652},     {1869440276, 1935632746, 3159668},
  {1869440276, 1935632746, 3225204},     {1869440276, 1935632746, 3420532},
  {1869440276, 1935632746, 3159412},     {1869440276, 1935632746, 3486068},
  {1869440276, 1935632746, 3224948},     {1869440276, 1935632746, 3748980},
  {1869440276, 1935632746, 3749236},
}

-- 🔁 Generate tikelX() Automatically
for i, s in ipairs(stickers) do
  _G["tikel" .. i] = function()
    applySticker(s[1], s[2], s[3], i)
  end
end

function kums4()
  gg.setVisible(false)
  gg.clearResults()

  local skins = {
"🌸 • Frame Festival",
"🌸 • Name Festival",
    "❌ • Go Back"
  }

  local choice = gg.choice(skins, nil, "🖼️  Frame Style")
  if not choice then return end

  if choice == 3 then
    gp3()
    return
  end

  local func = _G["nameStyle" .. choice]
  if type(func) == "function" then
    func()
  else
  end

  while true do
    if gg.isVisible(true) then
      gg.setVisible(false)
      kums4()
      break
    end
  end
end

function nameStyle1()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)

  -- Step 1: Search and copy source values
  gg.searchNumber("1767993366;49;24;1599099692:1153", gg.TYPE_DWORD)
  gg.refineNumber("24", gg.TYPE_DWORD)
  local src = gg.getResults(1)
  if #src == 0 then
    gg.alert("❌ Source Frame Festival style not found.\nPlease try again.")
    return
  end

  local base = src[1].address - 0x8
  local copied = {}
  for i = 0, 5 do
    table.insert(copied, {address = base + i * 4, flags = gg.TYPE_DWORD})
  end
  copied = gg.getValues(copied)
  gg.toast("📋 Frame Festival style copied.")

  -- Step 2: Search target and paste copied values
  gg.clearResults()
  gg.searchNumber("29;1599361808;5;30::641", gg.TYPE_DWORD)
  gg.refineNumber("30", gg.TYPE_DWORD)
  local tgt = gg.getResults(1)
  if #tgt == 0 then
    gg.toast("❌ Target Frame Festival style not found.")
    return
  end

  local addr = tgt[1].address - 0x48
  local patch = {}
  for i, v in ipairs(copied) do
    patch[#patch + 1] = {address = addr + (i - 1) * 4, value = v.value, flags = gg.TYPE_DWORD}
  end

  -- Step 3: Insert fixed perk values
  table.insert(patch, {address = addr + 6 * 4, value = 0, flags = gg.TYPE_DWORD})
  table.insert(patch, {address = addr + 7 * 4, value = 1, flags = gg.TYPE_DWORD})

  -- Step 4: Insert blank cleanup slots
  for i = 0, 2 do
    table.insert(patch, {address = addr + 0x58 + (i * 8), value = 0, flags = gg.TYPE_DWORD})
  end

  -- Step 5: Apply all
  gg.setValues(patch)
  gg.toast("✅ Frame Festival style applied!")
end

function nameStyle2()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)

  -- Step 1: Salin struktur Name Style
  gg.searchNumber("1651403105;49;24;1768641318;1953719654:777", gg.TYPE_DWORD)
  gg.refineNumber("24", gg.TYPE_DWORD)
  local src = gg.getResults(1)
  if #src == 0 then
    gg.alert("❌ Source Name Festival Style not found.\nPlease restart the game and try again.")
    return
  end
  local copyAddr = src[1].address - 0x8
  local copied = {}
  for i = 0, 5 do
    table.insert(copied, {address = copyAddr + i * 4, flags = gg.TYPE_DWORD})
  end
  copied = gg.getValues(copied)
  gg.toast("📋 Name Festival style copied.")

  -- Step 2: Cari target dan tempelkan Name Style
  gg.clearResults()
  gg.searchNumber("29;1599361808;5;30::641", gg.TYPE_DWORD)
  gg.refineNumber("30", gg.TYPE_DWORD)
  local tgt = gg.getResults(1)
  if #tgt == 0 then
    gg.toast("❌ Target Name Festival style not found.")
    return
  end
  local base = tgt[1].address - 0x48
  local patch = {}
  for i, v in ipairs(copied) do
    table.insert(patch, {address = base + (i - 1) * 4, value = v.value, flags = gg.TYPE_DWORD})
  end

  -- Perk tetap
  table.insert(patch, {address = base + 6 * 4, value = 0, flags = gg.TYPE_DWORD})
  table.insert(patch, {address = base + 7 * 4, value = 1, flags = gg.TYPE_DWORD})

  -- Slot kosong tambahan
  for i = 0, 2 do
    table.insert(patch, {address = base + 0x58 + i * 8, value = 0, flags = gg.TYPE_DWORD})
  end

  gg.setValues(patch)
  gg.toast("✅ Name Festival style applied!")
end

function kums5()
local indev = dev
  local menu = gg.choice({
"🎉 • Exclusive Avatars List",
"🎊 • Complete Avatar List",
    "❌ • Go Back"
  }, nil,indev)

  if menu == nil then
    return
  elseif menu == 1 then avatar1()
  elseif menu == 2 then avatar2()
  elseif menu == 3 then gp3()
  end
end

function avatar1()
  while true do
    gg.setVisible(false)
    gg.clearResults()

    local skins = {
      "🌟 • Year 1 Avatar",
      "🌟 • Year 2 Avatar",
      "🌟 • Year 3 Avatar",
      "🌟 • Year 4 Avatar",
      "🌟 • Year 5 Avatar",
      "🌟 • Year 6 Avatar",
      "🌟 • Year 7 Avatar",
      "🌟 • Year 8 Avatar",
      "🌟 • Year 9 Avatar",
      "🌟 • Year 10 Avatar",
      "🌟 • Year 11 Avatar (1)",
      "🌟 • Year 11 Avatar (2)",
      "❌ • Go Back"
    }

    local choice = gg.multiChoice(skins, nil, "🎉 Exclusive Avatars")
    if not choice then 
      gg.toast("❌ Menu closed.")
      return
    end

    -- 🔙 Back option
    if choice[#skins] then
      if type(kums5) == "function" then
        return kums5()
      else
        gg.toast("⚠️ Back function unavailable.")
        return
      end
    end

    -- 🔁 Process selected avatars
    for i, _ in ipairs(skins) do
      if choice[i] and i < #skins then
        local func = _G["avatarYear" .. i]
        if type(func) == "function" then
          func()
          gg.toast("✅ " .. skins[i] .. " applied.\n👉 Claim it in-freeze reward!")
        else
          gg.alert("❌ Function avatarYear" .. i .. "() not found!")
        end
      end
    end

    gg.toast("🎉 All selected avatars have been processed!")
  end
end

function applyAvatarAnniversary(hex, emoji, name)
  local addr = getAddr()
  if not addr then
    gg.alert("❌ No matching value found.\n" .. name .. " could not be applied.\nPlease try again or restart the game!")
    return
  end

  local patch = {
    {address = addr - 0x48, flags = gg.TYPE_DWORD, value = hex[1]},
    {address = addr - 0x44, flags = gg.TYPE_DWORD, value = hex[2]},
    {address = addr - 0x40, flags = gg.TYPE_DWORD, value = hex[3] or 0},
    {address = addr - 0x3C, flags = gg.TYPE_DWORD, value = 0},
    {address = addr - 0x38, flags = gg.TYPE_DWORD, value = 0},
    {address = addr - 0x34, flags = gg.TYPE_DWORD, value = 0},
    {address = addr - 0x30, flags = gg.TYPE_DWORD, value = 0},
    {address = addr - 0x2C, flags = gg.TYPE_DWORD, value = 1},
    {address = addr + 0x10, flags = gg.TYPE_DWORD, value = 0},
    {address = addr + 0x18, flags = gg.TYPE_DWORD, value = 0},
    {address = addr + 0x20, flags = gg.TYPE_DWORD, value = 0},
  }

  gg.setValues(patch)
  gg.toast("✅ " .. name .. " applied!")
end

-- 🎉 Avatar Anniversary Functions
function avatarYear1()  applyAvatarAnniversary({1635148044, 3748145},  "🌟", "Year 1 Avatar") end
function avatarYear2()  applyAvatarAnniversary({1635148044, 3158577},  "🌟", "Year 2 Avatar") end
function avatarYear3()  applyAvatarAnniversary({1635148044, 3224113},  "🌟", "Year 3 Avatar") end
function avatarYear4()  applyAvatarAnniversary({1635148044, 3289649},  "🌟", "Year 4 Avatar") end
function avatarYear5()  applyAvatarAnniversary({1635148044, 3355185},  "🌟", "Year 5 Avatar") end
function avatarYear6()  applyAvatarAnniversary({1635148044, 3421489},  "🌟", "Year 6 Avatar") end
function avatarYear7()  applyAvatarAnniversary({1635148044, 3225905},  "🌟", "Year 7 Avatar") end
function avatarYear8()  applyAvatarAnniversary({1635148044, 3748658},  "🌟", "Year 8 Avatar") end
function avatarYear9()  applyAvatarAnniversary({1635148044, 3225650},  "🌟", "Year 9 Avatar") end
function avatarYear10() applyAvatarAnniversary({1635148044, 3354931},  "🌟", "Year 10 Avatar") end
function avatarYear11() applyAvatarAnniversary({1635148044, 3290675},  "🌟", "Year 11 Avatar (1)") end
function avatarYear12() applyAvatarAnniversary({1635148044, 3225139},  "🌟", "Year 11 Avatar (2)") end 

function avatar2()
  while true do
    gg.setVisible(false)
    local options = {}

    -- ✨ Generate avatar list
    for i = 1, 323 do
      table.insert(options, "✨ • Complete Avatar (" .. i .. ")")
    end
    table.insert(options, "❌ • Go Back")

    -- 📋 Multi select menu
    local choice = gg.multiChoice(options, nil, "🎊 Complete Avatar List")

    if not choice then
      gg.toast("❌ Menu closed.")
      return
    end

    -- 🔙 If Back selected
    if choice[#options] then
      if type(kums5) == "function" then
        kums5()
      else
        gg.toast("⚠️ Back function unavailable.")
      end
      return -- keluar total dari avatar2()
    end

    -- 🔁 Process selected avatars
    for i = 1, 323 do
      if choice[i] then
        local func = _G["comAvatar" .. i]
        if type(func) == "function" then
          func()
          gg.toast("✅ " .. options[i] .. " applied.\n👉 Claim it in-freeze reward!")

          -- ⏸️ Wait until user taps GG icon
          repeat
            gg.sleep(500)
          until gg.isVisible(true)

          gg.setVisible(false) -- hide again
        else
          gg.alert("❌ " .. options[i] .. " function not found!")
        end
      end
    end

    gg.toast("🎉 All selected Complete Avatars have been processed!")
  end
end

function applyCompleteAvatar(hex, emoji, name)
  local addr = getAddr()
  if not addr then
    gg.alert("❌ No matching value found.\n" .. name .. " could not be applied.\nPlease try again or restart the game!")
    return
  end

  local patch = {
    {address = addr - 0x48, flags = gg.TYPE_DWORD, value = hex[1]},
    {address = addr - 0x44, flags = gg.TYPE_DWORD, value = hex[2]},
    {address = addr - 0x40, flags = gg.TYPE_DWORD, value = hex[3] or 0},
    {address = addr - 0x3C, flags = gg.TYPE_DWORD, value = 0},
    {address = addr - 0x38, flags = gg.TYPE_DWORD, value = 0},
    {address = addr - 0x34, flags = gg.TYPE_DWORD, value = 0},
    {address = addr - 0x30, flags = gg.TYPE_DWORD, value = 0},
    {address = addr - 0x2C, flags = gg.TYPE_DWORD, value = 1},
    {address = addr + 0x10, flags = gg.TYPE_DWORD, value = 0},
    {address = addr + 0x18, flags = gg.TYPE_DWORD, value = 0},
    {address = addr + 0x20, flags = gg.TYPE_DWORD, value = 0},
  }

  gg.setValues(patch)
  gg.toast("✅ " .. name .. " applied!")
end

function comAvatar1()  applyCompleteAvatar({0x6176610C, 0x00323031}, "🎊", "Complete Avatar 1") end
function comAvatar2()  applyCompleteAvatar({0x6176610C, 0x00333731}, "🎂", "Complete Avatar 2") end
function comAvatar3()  applyCompleteAvatar({0x6176610C, 0x00393631}, "🏆", "Complete Avatar 3") end
function comAvatar4()  applyCompleteAvatar({0x6176610C, 0x00343431}, "🌈", "Complete Avatar 4") end
function comAvatar5()  applyCompleteAvatar({0x6176610C, 0x00363232}, "🔥", "Complete Avatar 5") end
function comAvatar6()  applyCompleteAvatar({0x6176610C, 0x00343331}, "💎", "Complete Avatar 6") end
function comAvatar7()  applyCompleteAvatar({0x6176610C, 0x00303432}, "🌟", "Complete Avatar 7") end
function comAvatar8()  applyCompleteAvatar({0x6176610C, 0x00303031}, "🎯", "Complete Avatar 8") end
function comAvatar9()  applyCompleteAvatar({0x6176610C, 0x00353332}, "🛡️", "Complete Avatar 9") end
function comAvatar10() applyCompleteAvatar({0x6176610C, 0x00383032}, "👑", "Complete Avatar 10") end

function comAvatar11() applyCompleteAvatar({0x6176610C, 0x00333132}, "🐉", "Complete Avatar 11") end
function comAvatar12() applyCompleteAvatar({0x6176610C, 0x00383331}, "⚡", "Complete Avatar 12") end
function comAvatar13() applyCompleteAvatar({0x6176610C, 0x00303631}, "🧲", "Complete Avatar 13") end
function comAvatar14() applyCompleteAvatar({0x6176610C, 0x00353831}, "📦", "Complete Avatar 14") end
function comAvatar15() applyCompleteAvatar({0x6176610A, 0x00003732}, "🍭", "Complete Avatar 15") end
function comAvatar16() applyCompleteAvatar({0x6176610A, 0x00003934}, "🚀", "Complete Avatar 16") end
function comAvatar17() applyCompleteAvatar({0x6176610A, 0x00003634}, "🧁", "Complete Avatar 17") end
function comAvatar18() applyCompleteAvatar({0x6176610C, 0x00313132}, "🐾", "Complete Avatar 18") end
function comAvatar19() applyCompleteAvatar({0x6176610C, 0x00393032}, "🌍", "Complete Avatar 19") end
function comAvatar20() applyCompleteAvatar({0x6176610A, 0x00003134}, "🎮", "Complete Avatar 20") end

function comAvatar21() applyCompleteAvatar({0x6176610C, 0x00373131}, "🎨", "Complete Avatar 21") end
function comAvatar22() applyCompleteAvatar({0x6176610C, 0x00373931}, "📚", "Complete Avatar 22") end
function comAvatar23() applyCompleteAvatar({0x6176610C, 0x00333332}, "🎻", "Complete Avatar 23") end
function comAvatar24() applyCompleteAvatar({0x6176610C, 0x00363332}, "💡", "Complete Avatar 24") end
function comAvatar25() applyCompleteAvatar({0x6176610C, 0x00373831}, "🎬", "Complete Avatar 25") end
function comAvatar26() applyCompleteAvatar({0x6176610C, 0x00323731}, "🧠", "Complete Avatar 26") end
function comAvatar27() applyCompleteAvatar({0x6176610A, 0x00003239}, "🦄", "Complete Avatar 27") end
function comAvatar28() applyCompleteAvatar({0x6176610A, 0x00003938}, "🍀", "Complete Avatar 28") end
function comAvatar29() applyCompleteAvatar({0x6176610C, 0x00373631}, "🪐", "Complete Avatar 29") end
function comAvatar30() applyCompleteAvatar({0x6176610A, 0x00003033}, "🎭", "Complete Avatar 30") end

function comAvatar31() applyCompleteAvatar({0x6176610A, 0x00003632}, "🎆", "Complete Avatar 31") end
function comAvatar32() applyCompleteAvatar({0x6176610C, 0x00323531}, "🥁", "Complete Avatar 32") end
function comAvatar33() applyCompleteAvatar({0x6176610C, 0x00333131}, "🍓", "Complete Avatar 33") end
function comAvatar34() applyCompleteAvatar({0x6176610A, 0x00003039}, "🍕", "Complete Avatar 34") end
function comAvatar35() applyCompleteAvatar({0x6176610C, 0x00333831}, "🎈", "Complete Avatar 35") end
function comAvatar36() applyCompleteAvatar({0x6176610C, 0x00303731}, "🐠", "Complete Avatar 36") end
function comAvatar37() applyCompleteAvatar({0x6176610C, 0x00393931}, "🪄", "Complete Avatar 37") end
function comAvatar38() applyCompleteAvatar({0x6176610C, 0x00353431}, "🔔", "Complete Avatar 38") end
function comAvatar39() applyCompleteAvatar({0x6176610A, 0x00003338}, "🛠️", "Complete Avatar 39") end
function comAvatar40() applyCompleteAvatar({0x6176610C, 0x00353132}, "🐺", "Complete Avatar 40") end

function comAvatar41() applyCompleteAvatar({0x6176610C, 0x00393132}, "🌻", "Complete Avatar 41") end
function comAvatar42() applyCompleteAvatar({0x6176610C, 0x00383631}, "🏰", "Complete Avatar 42") end
function comAvatar43() applyCompleteAvatar({0x6176610C, 0x00353731}, "🎰", "Complete Avatar 43") end
function comAvatar44() applyCompleteAvatar({0x6176610A, 0x00003138}, "🎯", "Complete Avatar 44") end
function comAvatar45() applyCompleteAvatar({0x6176610A, 0x00003637}, "🦊", "Complete Avatar 45") end
function comAvatar46() applyCompleteAvatar({0x6176610A, 0x00003837}, "📸", "Complete Avatar 46") end
function comAvatar47() applyCompleteAvatar({0x6176610A, 0x00003737}, "🧬", "Complete Avatar 47") end
function comAvatar48() applyCompleteAvatar({0x6176610C, 0x00363631}, "📦", "Complete Avatar 48") end
function comAvatar49() applyCompleteAvatar({0x6176610C, 0x00313332}, "🎁", "Complete Avatar 49") end
function comAvatar50() applyCompleteAvatar({0x6176610C, 0x00363132}, "📀", "Complete Avatar 50") end

function comAvatar51()  applyCompleteAvatar({0x6176610A, 0x00003136}, "🥳", "Complete Avatar 51") end
function comAvatar52()  applyCompleteAvatar({0x6176610C, 0x00383431}, "🎇", "Complete Avatar 52") end
function comAvatar53()  applyCompleteAvatar({0x6176610C, 0x00363531}, "🏹", "Complete Avatar 53") end
function comAvatar54()  applyCompleteAvatar({0x6176610C, 0x00303831}, "🧃", "Complete Avatar 54") end
function comAvatar55()  applyCompleteAvatar({0x6176610C, 0x00383332}, "🚴", "Complete Avatar 55") end
function comAvatar56()  applyCompleteAvatar({0x6176610C, 0x00333032}, "🌌", "Complete Avatar 56") end
function comAvatar57()  applyCompleteAvatar({0x6176610A, 0x00003533}, "🍩", "Complete Avatar 57") end
function comAvatar58()  applyCompleteAvatar({0x6176610C, 0x00343831}, "🧸", "Complete Avatar 58") end
function comAvatar59()  applyCompleteAvatar({0x6176610C, 0x00373731}, "🚓", "Complete Avatar 59") end
function comAvatar60()  applyCompleteAvatar({0x6176610A, 0x00003839}, "🐼", "Complete Avatar 60") end

function comAvatar61()  applyCompleteAvatar({0x6176610C, 0x00383132}, "🍁", "Complete Avatar 61") end
function comAvatar62()  applyCompleteAvatar({0x6176610C, 0x00303232}, "🛸", "Complete Avatar 62") end
function comAvatar63()  applyCompleteAvatar({0x6176610C, 0x00383031}, "🌠", "Complete Avatar 63") end
function comAvatar64()  applyCompleteAvatar({0x6176610C, 0x00363031}, "🐝", "Complete Avatar 64") end
function comAvatar65()  applyCompleteAvatar({0x6176610C, 0x00363931}, "🌊", "Complete Avatar 65") end
function comAvatar66()  applyCompleteAvatar({0x6176610C, 0x00303331}, "🌋", "Complete Avatar 66") end
function comAvatar67()  applyCompleteAvatar({0x6176610C, 0x00383931}, "🦋", "Complete Avatar 67") end
function comAvatar68()  applyCompleteAvatar({0x6176610C, 0x00303132}, "🍔", "Complete Avatar 68") end
function comAvatar69()  applyCompleteAvatar({0x6176610C, 0x00353232}, "🛵", "Complete Avatar 69") end
function comAvatar70()  applyCompleteAvatar({0x6176610A, 0x00003939}, "🐬", "Complete Avatar 70") end

function comAvatar71()  applyCompleteAvatar({0x6176610C, 0x00343731}, "📣", "Complete Avatar 71") end
function comAvatar72()  applyCompleteAvatar({0x6176610C, 0x00363231}, "🪁", "Complete Avatar 72") end
function comAvatar73()  applyCompleteAvatar({0x6176610A, 0x00003135}, "📌", "Complete Avatar 73") end
function comAvatar74()  applyCompleteAvatar({0x6176610C, 0x00323032}, "🪴", "Complete Avatar 74") end
function comAvatar75()  applyCompleteAvatar({0x6176610C, 0x00383131}, "🖼️", "Complete Avatar 75") end
function comAvatar76()  applyCompleteAvatar({0x6176610C, 0x00393731}, "🧃", "Complete Avatar 76") end
function comAvatar77()  applyCompleteAvatar({0x6176610C, 0x00363831}, "📲", "Complete Avatar 77") end
function comAvatar78()  applyCompleteAvatar({0x6176610A, 0x00003538}, "🍇", "Complete Avatar 78") end
function comAvatar79()  applyCompleteAvatar({0x6176610A, 0x00003337}, "🔮", "Complete Avatar 79") end
function comAvatar80()  applyCompleteAvatar({0x6176610C, 0x00323131}, "🐳", "Complete Avatar 80") end

function comAvatar81()  applyCompleteAvatar({0x6176610C, 0x00303531}, "🍒", "Complete Avatar 81") end
function comAvatar82()  applyCompleteAvatar({0x6176610C, 0x00313731}, "🪵", "Complete Avatar 82") end
function comAvatar83()  applyCompleteAvatar({0x6176610C, 0x00343631}, "🍬", "Complete Avatar 83") end
function comAvatar84()  applyCompleteAvatar({0x6176610C, 0x00363431}, "🌽", "Complete Avatar 84") end
function comAvatar85()  applyCompleteAvatar({0x6176610C, 0x00373232}, "🍗", "Complete Avatar 85") end
function comAvatar86()  applyCompleteAvatar({0x6176610C, 0x00313831}, "🧀", "Complete Avatar 86") end
function comAvatar87()  applyCompleteAvatar({0x6176610C, 0x00343031}, "🥦", "Complete Avatar 87") end
function comAvatar88()  applyCompleteAvatar({0x6176610C, 0x00343032}, "🫐", "Complete Avatar 88") end
function comAvatar89()  applyCompleteAvatar({0x6176610C, 0x00353631}, "🍖", "Complete Avatar 89") end
function comAvatar90()  applyCompleteAvatar({0x6176610C, 0x00353531}, "🥓", "Complete Avatar 90") end

function comAvatar91()  applyCompleteAvatar({0x6176610C, 0x00383731}, "🧂", "Complete Avatar 91") end
function comAvatar92()  applyCompleteAvatar({0x6176610C, 0x00333931}, "🍳", "Complete Avatar 92") end
function comAvatar93()  applyCompleteAvatar({0x6176610C, 0x00333531}, "🥚", "Complete Avatar 93") end
function comAvatar94()  applyCompleteAvatar({0x6176610C, 0x00303332}, "🥨", "Complete Avatar 94") end
function comAvatar95()  applyCompleteAvatar({0x6176610A, 0x00003233}, "🫔", "Complete Avatar 95") end
function comAvatar96()  applyCompleteAvatar({0x6176610A, 0x00003133}, "🍞", "Complete Avatar 96") end
function comAvatar97()  applyCompleteAvatar({0x6176610A, 0x00003433}, "🧈", "Complete Avatar 97") end
function comAvatar98()  applyCompleteAvatar({0x6176610C, 0x00313631}, "🥗", "Complete Avatar 98") end
function comAvatar99()  applyCompleteAvatar({0x6176610C, 0x00313431}, "🍱", "Complete Avatar 99") end
function comAvatar100() applyCompleteAvatar({0x6176610C, 0x00313031}, "🍙", "Complete Avatar 100") end

function comAvatar101() applyCompleteAvatar({0x6176610C, 0x00313431}, "🎉", "Complete Avatar 101") end
function comAvatar102() applyCompleteAvatar({0x6176610C, 0x00313031}, "🎂", "Complete Avatar 102") end
function comAvatar103() applyCompleteAvatar({0x6176610A, 0x00003335}, "🏆", "Complete Avatar 103") end
function comAvatar104() applyCompleteAvatar({0x6176610A, 0x00003437}, "🌈", "Complete Avatar 104") end
function comAvatar105() applyCompleteAvatar({0x6176610C, 0x00373531}, "🔥", "Complete Avatar 105") end
function comAvatar106() applyCompleteAvatar({0x6176610A, 0x00003235}, "💎", "Complete Avatar 106") end
function comAvatar107() applyCompleteAvatar({0x6176610C, 0x00323831}, "🌟", "Complete Avatar 107") end
function comAvatar108() applyCompleteAvatar({0x6176610C, 0x00383531}, "🎯", "Complete Avatar 108") end
function comAvatar109() applyCompleteAvatar({0x6176610C, 0x00373031}, "🛡️", "Complete Avatar 109") end
function comAvatar110() applyCompleteAvatar({0x6176610A, 0x00003838}, "👑", "Complete Avatar 110") end

function comAvatar111() applyCompleteAvatar({0x6176610C, 0x00363131}, "🐉", "Complete Avatar 111") end
function comAvatar112() applyCompleteAvatar({0x6176610C, 0x00383432}, "⚡", "Complete Avatar 112") end
function comAvatar113() applyCompleteAvatar({0x6176610C, 0x00353231}, "🧲", "Complete Avatar 113") end
function comAvatar114() applyCompleteAvatar({0x6176610C, 0x00373132}, "📦", "Complete Avatar 114") end
function comAvatar115() applyCompleteAvatar({0x6176610C, 0x00333232}, "🍭", "Complete Avatar 115") end
function comAvatar116() applyCompleteAvatar({0x6176610C, 0x00353931}, "🚀", "Complete Avatar 116") end
function comAvatar117() applyCompleteAvatar({0x6176610C, 0x00313232}, "🧁", "Complete Avatar 117") end
function comAvatar118() applyCompleteAvatar({0x6176610C, 0x00383231}, "🐾", "Complete Avatar 118") end
function comAvatar119() applyCompleteAvatar({0x6176610C, 0x00353031}, "🌍", "Complete Avatar 119") end
function comAvatar120() applyCompleteAvatar({0x6176610C, 0x00393231}, "🎮", "Complete Avatar 120") end

function comAvatar121() applyCompleteAvatar({0x6176610C, 0x00343132}, "🎨", "Complete Avatar 121") end
function comAvatar122() applyCompleteAvatar({0x6176610C, 0x00333431}, "📚", "Complete Avatar 122") end
function comAvatar123() applyCompleteAvatar({0x6176610A, 0x00003738}, "🎻", "Complete Avatar 123") end
function comAvatar124() applyCompleteAvatar({0x6176610A, 0x00003237}, "💡", "Complete Avatar 124") end
function comAvatar125() applyCompleteAvatar({0x6176610C, 0x00353331}, "🎬", "Complete Avatar 125") end
function comAvatar126() applyCompleteAvatar({0x6176610C, 0x00373231}, "🧠", "Complete Avatar 126") end
function comAvatar127() applyCompleteAvatar({0x6176610C, 0x00373431}, "🦄", "Complete Avatar 127") end
function comAvatar128() applyCompleteAvatar({0x6176610C, 0x00363731}, "🍀", "Complete Avatar 128") end
function comAvatar129() applyCompleteAvatar({0x6176610C, 0x00303131}, "🪐", "Complete Avatar 129") end
function comAvatar130() applyCompleteAvatar({0x6176610C, 0x00373331}, "🎭", "Complete Avatar 130") end

function comAvatar131() applyCompleteAvatar({0x6176610C, 0x00393531}, "🎆", "Complete Avatar 131") end
function comAvatar132() applyCompleteAvatar({0x6176610C, 0x00373032}, "🥁", "Complete Avatar 132") end
function comAvatar133() applyCompleteAvatar({0x6176610C, 0x00343931}, "🍓", "Complete Avatar 133") end
function comAvatar134() applyCompleteAvatar({0x6176610C, 0x00303931}, "🍕", "Complete Avatar 134") end
function comAvatar135() applyCompleteAvatar({0x6176610C, 0x00393831}, "🎈", "Complete Avatar 135") end
function comAvatar136() applyCompleteAvatar({0x6176610A, 0x00003933}, "🐠", "Complete Avatar 136") end
function comAvatar137() applyCompleteAvatar({0x6176610C, 0x00313032}, "🪄", "Complete Avatar 137") end
function comAvatar138() applyCompleteAvatar({0x6176610C, 0x00323532}, "🔔", "Complete Avatar 138") end
function comAvatar139() applyCompleteAvatar({0x6176610A, 0x00003635}, "🛠️", "Complete Avatar 139") end
function comAvatar140() applyCompleteAvatar({0x6176610A, 0x00003139}, "🐺", "Complete Avatar 140") end

function comAvatar141() applyCompleteAvatar({0x6176610A, 0x00003234}, "🌻", "Complete Avatar 141") end
function comAvatar142() applyCompleteAvatar({0x6176610C, 0x00323631}, "🏰", "Complete Avatar 142") end
function comAvatar143() applyCompleteAvatar({0x6176610A, 0x00003532}, "🎰", "Complete Avatar 143") end
function comAvatar144() applyCompleteAvatar({0x6176610C, 0x00323332}, "🎯", "Complete Avatar 144") end
function comAvatar145() applyCompleteAvatar({0x6176610A, 0x00003936}, "🦊", "Complete Avatar 145") end
function comAvatar146() applyCompleteAvatar({0x6176610A, 0x00003735}, "📸", "Complete Avatar 146") end
function comAvatar147() applyCompleteAvatar({0x6176610A, 0x00003535}, "🧬", "Complete Avatar 147") end
function comAvatar148() applyCompleteAvatar({0x6176610A, 0x00003435}, "🍿", "Complete Avatar 148") end
function comAvatar149() applyCompleteAvatar({0x6176610A, 0x00003236}, "🎁", "Complete Avatar 149") end
function comAvatar150() applyCompleteAvatar({0x6176610A, 0x00003137}, "📀", "Complete Avatar 150") end

function comAvatar151() applyCompleteAvatar({1635148044, 3552562}, "🎉", "Complete Avatar 151") end
function comAvatar152() applyCompleteAvatar({1635148044, 3749170}, "🎂", "Complete Avatar 152") end
function comAvatar153() applyCompleteAvatar({1635148044, 3290674}, "🏆", "Complete Avatar 153") end
function comAvatar154() applyCompleteAvatar({1635148044, 3356210}, "🌈", "Complete Avatar 154") end
function comAvatar155() applyCompleteAvatar({1635148044, 3487282}, "🔥", "Complete Avatar 155") end
function comAvatar156() applyCompleteAvatar({1635148044, 3618354}, "💎", "Complete Avatar 156") end
function comAvatar157() applyCompleteAvatar({1635148044, 3158323}, "🌟", "Complete Avatar 157") end
function comAvatar158() applyCompleteAvatar({1635148044, 3289395}, "🎯", "Complete Avatar 158") end
function comAvatar159() applyCompleteAvatar({1635148044, 3420467}, "🛡️", "Complete Avatar 159") end
function comAvatar160() applyCompleteAvatar({1635148044, 3486003}, "👑", "Complete Avatar 160") end

function comAvatar161() applyCompleteAvatar({1635148044, 3683890}, "🐉", "Complete Avatar 161") end
function comAvatar162() applyCompleteAvatar({1635148044, 3159602}, "⚡", "Complete Avatar 162") end
function comAvatar163() applyCompleteAvatar({1635148044, 3749426}, "🧲", "Complete Avatar 163") end
function comAvatar164() applyCompleteAvatar({1635148044, 3159858}, "📦", "Complete Avatar 164") end
function comAvatar165() applyCompleteAvatar({1635148044, 3225394}, "🍭", "Complete Avatar 165") end
function comAvatar166() applyCompleteAvatar({1635148044, 3290930}, "🚀", "Complete Avatar 166") end
function comAvatar167() applyCompleteAvatar({1635148044, 3356466}, "🧁", "Complete Avatar 167") end
function comAvatar168() applyCompleteAvatar({1635148044, 3487538}, "🐾", "Complete Avatar 168") end
function comAvatar169() applyCompleteAvatar({1635148044, 3553074}, "🌍", "Complete Avatar 169") end
function comAvatar170() applyCompleteAvatar({1635148044, 3618610}, "🎮", "Complete Avatar 170") end

function comAvatar171() applyCompleteAvatar({1635148044, 3749682}, "🎨", "Complete Avatar 171") end
function comAvatar172() applyCompleteAvatar({1635148044, 3684146}, "📚", "Complete Avatar 172") end
function comAvatar173() applyCompleteAvatar({1635148044, 3160114}, "🎻", "Complete Avatar 173") end
function comAvatar174() applyCompleteAvatar({1635148044, 3291186}, "💡", "Complete Avatar 174") end
function comAvatar175() applyCompleteAvatar({1635148044, 3356722}, "🎬", "Complete Avatar 175") end
function comAvatar176() applyCompleteAvatar({1635148044, 3422258}, "🧠", "Complete Avatar 176") end
function comAvatar177() applyCompleteAvatar({1635148044, 3487794}, "🦄", "Complete Avatar 177") end
function comAvatar178() applyCompleteAvatar({1635148044, 3553330}, "🍀", "Complete Avatar 178") end
function comAvatar179() applyCompleteAvatar({1635148044, 3618866}, "🪐", "Complete Avatar 179") end
function comAvatar180() applyCompleteAvatar({1635148044, 3684402}, "🎭", "Complete Avatar 180") end

function comAvatar181() applyCompleteAvatar({1635148044, 3749938}, "🎆", "Complete Avatar 181") end
function comAvatar182() applyCompleteAvatar({1635148044, 3225906}, "🥁", "Complete Avatar 182") end
function comAvatar183() applyCompleteAvatar({1635148044, 3291442}, "🍓", "Complete Avatar 183") end
function comAvatar184() applyCompleteAvatar({1635148044, 3356978}, "🍕", "Complete Avatar 184") end
function comAvatar185() applyCompleteAvatar({1635148044, 3422514}, "🎈", "Complete Avatar 185") end
function comAvatar186() applyCompleteAvatar({1635148044, 3488050}, "🐠", "Complete Avatar 186") end
function comAvatar187() applyCompleteAvatar({1635148044, 3553586}, "🪄", "Complete Avatar 187") end
function comAvatar188() applyCompleteAvatar({1635148044, 3619122}, "🔔", "Complete Avatar 188") end
function comAvatar189() applyCompleteAvatar({1635148044, 3750194}, "🛠️", "Complete Avatar 189") end
function comAvatar190() applyCompleteAvatar({1635148044, 3158067}, "🎮", "Complete Avatar 190") end

function comAvatar191() applyCompleteAvatar({1635148044, 3684658}, "🎯", "Complete Avatar 191") end
function comAvatar192() applyCompleteAvatar({1635148044, 3289139}, "🎨", "Complete Avatar 192") end
function comAvatar193() applyCompleteAvatar({1635148044, 3354675}, "🎶", "Complete Avatar 193") end
function comAvatar194() applyCompleteAvatar({1635148044, 3420211}, "🍬", "Complete Avatar 194") end
function comAvatar195() applyCompleteAvatar({1635148044, 3485747}, "🍣", "Complete Avatar 195") end
function comAvatar196() applyCompleteAvatar({1635148044, 3551283}, "🧃", "Complete Avatar 196") end
function comAvatar197() applyCompleteAvatar({1635148044, 3616819}, "🐱", "Complete Avatar 197") end
function comAvatar198() applyCompleteAvatar({1635148044, 3682355}, "🐶", "Complete Avatar 198") end
function comAvatar199() applyCompleteAvatar({1635148044, 3747891}, "🦊", "Complete Avatar 199") end
function comAvatar200() applyCompleteAvatar({1635148044, 3552562}, "🐼", "Complete Avatar 200") end

function comAvatar201() applyCompleteAvatar({1635148044, 3619378}, "🐸", "Complete Avatar 201") end
function comAvatar202() applyCompleteAvatar({1635148044, 3684914}, "🦁", "Complete Avatar 202") end
function comAvatar203() applyCompleteAvatar({1635148044, 3750450}, "🐵", "Complete Avatar 203") end
function comAvatar204() applyCompleteAvatar({1635148044, 3158310}, "🐧", "Complete Avatar 204") end
function comAvatar205() applyCompleteAvatar({1635148044, 3225882}, "🦋", "Complete Avatar 205") end
function comAvatar206() applyCompleteAvatar({1635148044, 3291954}, "🌸", "Complete Avatar 206") end
function comAvatar207() applyCompleteAvatar({1635148044, 3357490}, "🌼", "Complete Avatar 207") end
function comAvatar208() applyCompleteAvatar({1635148044, 3423026}, "🌹", "Complete Avatar 208") end
function comAvatar209() applyCompleteAvatar({1635148044, 3488562}, "🌻", "Complete Avatar 209") end
function comAvatar210() applyCompleteAvatar({1635148044, 3554098}, "🍂", "Complete Avatar 210") end

function comAvatar211() applyCompleteAvatar({1635148044, 3619634}, "🍁", "Complete Avatar 211") end
function comAvatar212() applyCompleteAvatar({1635148044, 3685170}, "🌲", "Complete Avatar 212") end
function comAvatar213() applyCompleteAvatar({1635148044, 3750706}, "🌳", "Complete Avatar 213") end
function comAvatar214() applyCompleteAvatar({1635148044, 3158566}, "🌴", "Complete Avatar 214") end
function comAvatar215() applyCompleteAvatar({1635148044, 3226138}, "🌵", "Complete Avatar 215") end
function comAvatar216() applyCompleteAvatar({1635148044, 3292210}, "🍄", "Complete Avatar 216") end
function comAvatar217() applyCompleteAvatar({1635148044, 3357746}, "🌾", "Complete Avatar 217") end
function comAvatar218() applyCompleteAvatar({1635148044, 3423282}, "💐", "Complete Avatar 218") end
function comAvatar219() applyCompleteAvatar({1635148044, 3488818}, "🌺", "Complete Avatar 219") end
function comAvatar220() applyCompleteAvatar({1635148044, 3554354}, "🪷", "Complete Avatar 220") end

function comAvatar221() applyCompleteAvatar({1635148044, 3619890}, "🌙", "Complete Avatar 221") end
function comAvatar222() applyCompleteAvatar({1635148044, 3685426}, "☀️", "Complete Avatar 222") end
function comAvatar223() applyCompleteAvatar({1635148044, 3750962}, "🌞", "Complete Avatar 223") end
function comAvatar224() applyCompleteAvatar({1635148044, 3158822}, "🌚", "Complete Avatar 224") end
function comAvatar225() applyCompleteAvatar({1635148044, 3226394}, "⭐", "Complete Avatar 225") end
function comAvatar226() applyCompleteAvatar({1635148044, 3292466}, "✨", "Complete Avatar 226") end
function comAvatar227() applyCompleteAvatar({1635148044, 3358002}, "🌠", "Complete Avatar 227") end
function comAvatar228() applyCompleteAvatar({1635148044, 3423538}, "🌟", "Complete Avatar 228") end
function comAvatar229() applyCompleteAvatar({1635148044, 3489074}, "💫", "Complete Avatar 229") end
function comAvatar230() applyCompleteAvatar({1635148044, 3554610}, "🔥", "Complete Avatar 230") end

function comAvatar231() applyCompleteAvatar({1635148044, 3620146}, "💥", "Complete Avatar 231") end
function comAvatar232() applyCompleteAvatar({1635148044, 3685682}, "⚡", "Complete Avatar 232") end
function comAvatar233() applyCompleteAvatar({1635148044, 3751218}, "❄️", "Complete Avatar 233") end
function comAvatar234() applyCompleteAvatar({1635148044, 3159078}, "🌊", "Complete Avatar 234") end
function comAvatar235() applyCompleteAvatar({1635148044, 3226650}, "💧", "Complete Avatar 235") end
function comAvatar236() applyCompleteAvatar({1635148044, 3292722}, "🌬️", "Complete Avatar 236") end
function comAvatar237() applyCompleteAvatar({1635148044, 3358258}, "🍃", "Complete Avatar 237") end
function comAvatar238() applyCompleteAvatar({1635148044, 3423794}, "🌀", "Complete Avatar 238") end
function comAvatar239() applyCompleteAvatar({1635148044, 3489330}, "☁️", "Complete Avatar 239") end
function comAvatar240() applyCompleteAvatar({1635148044, 3554866}, "🌪️", "Complete Avatar 240") end

function comAvatar241() applyCompleteAvatar({1635148044, 3620402}, "🌫️", "Complete Avatar 241") end
function comAvatar242() applyCompleteAvatar({1635148044, 3685938}, "🌈", "Complete Avatar 242") end
function comAvatar243() applyCompleteAvatar({1635148044, 3751474}, "🌩️", "Complete Avatar 243") end
function comAvatar244() applyCompleteAvatar({1635148044, 3159334}, "🕸️", "Complete Avatar 244") end
function comAvatar245() applyCompleteAvatar({1635148044, 3226906}, "🌋", "Complete Avatar 245") end
function comAvatar246() applyCompleteAvatar({1635148044, 3292978}, "🌌", "Complete Avatar 246") end
function comAvatar247() applyCompleteAvatar({1635148044, 3358514}, "🎇", "Complete Avatar 247") end
function comAvatar248() applyCompleteAvatar({1635148044, 3424050}, "🎆", "Complete Avatar 248") end
function comAvatar249() applyCompleteAvatar({1635148044, 3489586}, "🪐", "Complete Avatar 249") end
function comAvatar250() applyCompleteAvatar({1635148044, 3555122}, "🚀", "Complete Avatar 250") end

function comAvatar251() applyCompleteAvatar({1635148044, 3620658}, "🛰️", "Complete Avatar 251") end
function comAvatar252() applyCompleteAvatar({1635148044, 3686194}, "🛸", "Complete Avatar 252") end
function comAvatar253() applyCompleteAvatar({1635148044, 3751730}, "👾", "Complete Avatar 253") end
function comAvatar254() applyCompleteAvatar({1635148044, 3159590}, "🎮", "Complete Avatar 254") end
function comAvatar255() applyCompleteAvatar({1635148044, 3227162}, "🕹️", "Complete Avatar 255") end
function comAvatar256() applyCompleteAvatar({1635148044, 3293234}, "🎲", "Complete Avatar 256") end
function comAvatar257() applyCompleteAvatar({1635148044, 3358770}, "♟️", "Complete Avatar 257") end
function comAvatar258() applyCompleteAvatar({1635148044, 3424306}, "📦", "Complete Avatar 258") end
function comAvatar259() applyCompleteAvatar({1635148044, 3489842}, "🧩", "Complete Avatar 259") end
function comAvatar260() applyCompleteAvatar({1635148044, 3555378}, "🎁", "Complete Avatar 260") end

function comAvatar261() applyCompleteAvatar({1635148044, 3620914}, "🎈", "Complete Avatar 261") end
function comAvatar262() applyCompleteAvatar({1635148044, 3686450}, "🎊", "Complete Avatar 262") end
function comAvatar263() applyCompleteAvatar({1635148044, 3751986}, "🧨", "Complete Avatar 263") end
function comAvatar264() applyCompleteAvatar({1635148044, 3159846}, "🍮", "Complete Avatar 264") end
function comAvatar265() applyCompleteAvatar({1635148044, 3227418}, "🧁", "Complete Avatar 265") end
function comAvatar266() applyCompleteAvatar({1635148044, 3293490}, "🍭", "Complete Avatar 266") end
function comAvatar267() applyCompleteAvatar({1635148044, 3359026}, "🍬", "Complete Avatar 267") end
function comAvatar268() applyCompleteAvatar({1635148044, 3424562}, "🍰", "Complete Avatar 268") end
function comAvatar269() applyCompleteAvatar({1635148044, 3490098}, "🍪", "Complete Avatar 269") end
function comAvatar270() applyCompleteAvatar({1635148044, 3555634}, "🍩", "Complete Avatar 270") end

function comAvatar271() applyCompleteAvatar({1635148044, 3621170}, "🍨", "Complete Avatar 271") end
function comAvatar272() applyCompleteAvatar({1635148044, 3686706}, "🍧", "Complete Avatar 272") end
function comAvatar273() applyCompleteAvatar({1635148044, 3752242}, "🍦", "Complete Avatar 273") end
function comAvatar274() applyCompleteAvatar({1635148044, 3160102}, "🍼", "Complete Avatar 274") end
function comAvatar275() applyCompleteAvatar({1635148044, 3227674}, "🥤", "Complete Avatar 275") end
function comAvatar276() applyCompleteAvatar({1635148044, 3293746}, "🍹", "Complete Avatar 276") end
function comAvatar277() applyCompleteAvatar({1635148044, 3359282}, "🍸", "Complete Avatar 277") end
function comAvatar278() applyCompleteAvatar({1635148044, 3424818}, "🍷", "Complete Avatar 278") end
function comAvatar279() applyCompleteAvatar({1635148044, 3490354}, "🍺", "Complete Avatar 279") end
function comAvatar280() applyCompleteAvatar({1635148044, 3555890}, "🍻", "Complete Avatar 280") end

function comAvatar281() applyCompleteAvatar({1635148044, 3621426}, "🥂", "Complete Avatar 281") end
function comAvatar282() applyCompleteAvatar({1635148044, 3686962}, "🍾", "Complete Avatar 282") end
function comAvatar283() applyCompleteAvatar({1635148044, 3752498}, "🥃", "Complete Avatar 283") end
function comAvatar284() applyCompleteAvatar({1635148044, 3160358}, "🍽️", "Complete Avatar 284") end
function comAvatar285() applyCompleteAvatar({1635148044, 3227930}, "🥢", "Complete Avatar 285") end
function comAvatar286() applyCompleteAvatar({1635148044, 3294002}, "🥄", "Complete Avatar 286") end
function comAvatar287() applyCompleteAvatar({1635148044, 3359538}, "🍴", "Complete Avatar 287") end
function comAvatar288() applyCompleteAvatar({1635148044, 3425074}, "🔪", "Complete Avatar 288") end
function comAvatar289() applyCompleteAvatar({1635148044, 3490610}, "🏺", "Complete Avatar 289") end
function comAvatar290() applyCompleteAvatar({1635148044, 3556146}, "🧿", "Complete Avatar 290") end

function comAvatar291() applyCompleteAvatar({1635148044, 3621682}, "📿", "Complete Avatar 291") end
function comAvatar292() applyCompleteAvatar({1635148044, 3687218}, "💍", "Complete Avatar 292") end
function comAvatar293() applyCompleteAvatar({1635148044, 3752754}, "💎", "Complete Avatar 293") end
function comAvatar294() applyCompleteAvatar({1635148044, 3160614}, "📸", "Complete Avatar 294") end
function comAvatar295() applyCompleteAvatar({1635148044, 3228186}, "🎥", "Complete Avatar 295") end
function comAvatar296() applyCompleteAvatar({1635148044, 3294258}, "📹", "Complete Avatar 296") end
function comAvatar297() applyCompleteAvatar({1635148044, 3359794}, "🎞️", "Complete Avatar 297") end
function comAvatar298() applyCompleteAvatar({1635148044, 3425330}, "📽️", "Complete Avatar 298") end
function comAvatar299() applyCompleteAvatar({1635148044, 3490866}, "📺", "Complete Avatar 299") end
function comAvatar300() applyCompleteAvatar({1635148044, 3556402}, "📻", "Complete Avatar 300") end

function comAvatar301() applyCompleteAvatar({1635148044, 3225395}, "🎉", "Complete Avatar 301") end
function comAvatar302() applyCompleteAvatar({1635148044, 3290931}, "🎂", "Complete Avatar 302") end
function comAvatar303() applyCompleteAvatar({1635148044, 3356467}, "🏆", "Complete Avatar 303") end
function comAvatar304() applyCompleteAvatar({1635148044, 3422003}, "🌈", "Complete Avatar 304") end
function comAvatar305() applyCompleteAvatar({1635148044, 3487539}, "🔥", "Complete Avatar 305") end
function comAvatar306() applyCompleteAvatar({1635148044, 3553075}, "💎", "Complete Avatar 306") end
function comAvatar307() applyCompleteAvatar({1635148044, 3618611}, "🌟", "Complete Avatar 307") end
function comAvatar308() applyCompleteAvatar({1635148044, 3684147}, "🎯", "Complete Avatar 308") end
function comAvatar309() applyCompleteAvatar({1635148044, 3225651}, "🛡️", "Complete Avatar 309") end
function comAvatar310() applyCompleteAvatar({1635148044, 3356723}, "👑", "Complete Avatar 310") end
function comAvatar311() applyCompleteAvatar({1635148044, 3422259}, "🐉", "Complete Avatar 311") end
function comAvatar312() applyCompleteAvatar({1635148044, 3487795}, "⚡", "Complete Avatar 312") end
function comAvatar313() applyCompleteAvatar({1635148044, 3553331}, "🧲", "Complete Avatar 313") end
function comAvatar314() applyCompleteAvatar({1635148044, 3618867}, "📦", "Complete Avatar 314") end
function comAvatar315() applyCompleteAvatar({1635148044, 3684403}, "🍭", "Complete Avatar 315") end
function comAvatar316() applyCompleteAvatar({1635148044, 3749939}, "🚀", "Complete Avatar 316") end
function comAvatar317() applyCompleteAvatar({1635148044, 3160371}, "🧁", "Complete Avatar 317") end
function comAvatar318() applyCompleteAvatar({1635148044, 3225907}, "🐾", "Complete Avatar 318") end
function comAvatar319() applyCompleteAvatar({1635148044, 3422515}, "🌍", "Complete Avatar 319") end
function comAvatar320() applyCompleteAvatar({1635148044, 3488051}, "🎮", "Complete Avatar 320") end
function comAvatar321() applyCompleteAvatar({1635148044, 3553587}, "🎨", "Complete Avatar 321") end
function comAvatar322() applyCompleteAvatar({1635148044, 3619123}, "📚", "Complete Avatar 322") end
function comAvatar323() applyCompleteAvatar({1635148044, 3684659}, "🎻", "Complete Avatar 323") end

function kums6()
local indev = dev
  local menu = gg.choice({
 "🃏 • Card Pack Badge",
"🎖️ • Collection Badge",
    "❌ • Go Back"
  }, nil,indev)

  if menu == nil then
    return
  elseif menu == 1 then cardbadge()
  elseif menu == 2 then packbadge()
  elseif menu == 3 then gp3()
  end
end

function cardbadgecol(label, emoji, values)
  local base = getAddr()
  if not base then return end

  local addrList = {}
  for _, item in ipairs(values) do
    table.insert(addrList, {
      address = base + item.offset,
      flags = gg.TYPE_DWORD,
      value = item.value
    })
  end

  gg.setValues(addrList)
  gg.toast(emoji .. " " .. label .. " applied")
end

function cardbadge()
  cardbadgecol("Card Collection Pack Badge", "🃏", {
    {offset = -0x48, value = 1918976790},
    {offset = -0x44, value = 1348420452},
    {offset = -0x40, value = 879453025},
    {offset = -0x3C, value = 0},
    {offset = -0x38, value = 0},
    {offset = -0x34, value = 0},
    {offset = -0x30, value = 0},
    {offset = -0x2C, value = 150},
    {offset = 0x10, value = 0},
    {offset = 0x18, value = 0},
    {offset = 0x20, value = 0}
  })
end

function packbadge()
  while true do
    gg.setVisible(false)
    gg.clearResults()

    local skins = {
      "🏙️ Town Badge",
      "🏆 • Legendary Town Badge",
      "🃏 • Badge Title",
      "🎖️ • Grand Badge Title",
      "⛄ • Winter Badge",
      "❄️ • Legendary Winter Badge",
      "❌ • Go Back"
    }

    local choice = gg.multiChoice(skins, nil, "🎉 Exclusive Badge")
    if not choice then
      gg.toast("❌ Menu closed.")
      return
    end

    -- 🔙 Back option (selalu terakhir)
    if choice[#skins] then
      if type(kums6) == "function" then
        kums6()
      else
        gg.toast("⚠️ Back function unavailable.")
      end
      return
    end

    local processed = false
    -- 🔁 Jalankan fungsi badge berdasarkan pilihan
    for i = 1, #skins - 1 do
      if choice[i] then
        local func = _G["badgecollect" .. i]
        if type(func) == "function" then
          func()
          gg.toast("✅ " .. skins[i] .. " applied.\n👉 Claim it in-freeze reward!")

          -- ⏸️ Tunggu user tekan ikon GG sebelum lanjut
          repeat
            gg.sleep(500)
          until gg.isVisible(true)
          gg.setVisible(false)

          processed = true
        else
          gg.alert("❌ Function badgecollect" .. i .. "() not found!")
        end
      end
    end

    if processed then
      gg.toast("🎉 Selected Exclusive Badge processed successfully!")
    end
    -- 🔄 Setelah selesai → balik ke menu lagi
  end
end

-- Fungsi utama untuk menerapkan badge
function applybBadge(hex, emoji, name)
  local addr = getAddr()
  if not addr then
    gg.alert("❌ No matching value found.\n" .. name .. " could not be applied.\nPlease try again or restart the game!")
    return
  end

  local patch = {
    {address = addr - 0x48, flags = gg.TYPE_DWORD, value = hex[1]},
    {address = addr - 0x44, flags = gg.TYPE_DWORD, value = hex[2]},
    {address = addr - 0x40, flags = gg.TYPE_DWORD, value = hex[3]},
    {address = addr - 0x3C, flags = gg.TYPE_DWORD, value = hex[4]},
    {address = addr - 0x38, flags = gg.TYPE_DWORD, value = hex[5]},
    {address = addr - 0x34, flags = gg.TYPE_DWORD, value = hex[6]},
    {address = addr - 0x30, flags = gg.TYPE_DWORD, value = 0},
    {address = addr - 0x2C, flags = gg.TYPE_DWORD, value = 1},
    {address = addr + 0x10, flags = gg.TYPE_DWORD, value = 0},
    {address = addr + 0x18, flags = gg.TYPE_DWORD, value = 0},
    {address = addr + 0x20, flags = gg.TYPE_DWORD, value = 0},
  }

  gg.setValues(patch)
  gg.toast("✅ " .. emoji .. " " .. name .. " applied!")
end

-- Kumpulan badge
function badgecollect1() -- 🏙️ Town Badge
  applybBadge({
    0x6461621A, 0x305F6567, 0x61625F31,
    0x00006573, 0x1965E248, 0x00000070
  }, "🏙️", "Town Badge")
end

function badgecollect2() -- 🏆 Legendary Town Badge
  applybBadge({
    0x6461621C, 0x305F6567, 0x72675F31,
    0x00646E61, 0x1965E248, 0x00000070
  }, "🏆", "Legendary Town Badge")
end

function badgecollect3() -- 🃏 Badge Title
  applybBadge({
    0x64616220, 0x305F6567, 0x32765F31,
    0x7361625F, 0x19650065, 0x00000070
  }, "🃏", "Badge Title")
end

function badgecollect4() -- ❄️ Legendary Winter Badge
  applybBadge({
    0x64616222, 0x305F6567, 0x32765F31,
    0x6172675F, 0x1900646E, 0x00000070
  }, "🎖️", "Grand Bage Title")
end

function badgecollect5() -- ⛄ Winter Badge
  applybBadge({
    0x6461621A, 0x305F6567, 0x61625F32,
    0x00006573, 0x1965E248, 0x00000070
  }, "⛄", "Winter Badge")
end

function badgecollect6() -- 🎖️ Grand Badge Title
  applybBadge({
    0x6461621C, 0x305F6567, 0x72675F32,
    0x00646E61, 0x1965E248, 0x00000070
  }, "❄️", "Legendary Winter Badge")
end

-------------------------------------------------
  
function menuSpecial()
local title = banner
  local menu = gg.choice({
	"💎 • VIP Regata Task",        -- 🔹 Opsi baru di paling atas
    _( "option1_spesial" ),
    _( "option2_spesial" ),
    _( "back_spesial" )
  }, nil, title)

  if menu == nil then
    return

  elseif menu == 1 then
    vipRegata() -- 🔹 Fungsi untuk menu baru
  elseif menu == 2 then
    ms1()
  elseif menu == 3 then
    ms2()
  elseif menu == 4 then
    Main()
    return
  else
    return
  end

  -- Tunggu klik GG lalu ulangi menu
  while true do
    if gg.isVisible(true) then
      gg.setVisible(false)
      menuSpecial()
      break
    end
  end
end

function vipRegata()
gg.setVisible(false)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)

  -- 📥 Pilih jumlah poin
  local poinChoice = gg.choice({
    "⭐ 150 Point",
    "⭐ 200 Point",
    "⭐ 300 Point"
  }, nil, _( "title_pilih_poin" ))

  if not poinChoice then
    return gg.alert(_( "alert_pilih_dulu" ))
  end

  local points = ({150, 200, 300})[poinChoice]

  gg.searchNumber("65538", gg.TYPE_QWORD)
  local allResults = gg.getResults(99999)
  if #allResults == 0 then
    return gg.alert(_( "alert_tidak_ditemukan" ))
  end

  local checkList = {}
  for i, r in ipairs(allResults) do
    checkList[i] = { address = r.address + 0x100, flags = gg.TYPE_DWORD }
  end
  local checkVals = gg.getValues(checkList)

  local edits, count = {}, 0
  for i, c in ipairs(checkVals) do
    if c.value == -1 then
      local addr = allResults[i].address
      local baseVal = gg.getValues({ { address = addr + 0x148, flags = gg.TYPE_QWORD } })[1].value
      if baseVal and baseVal > 0x100000 then
        count = count + 1
        edits[#edits + 1] = { address = addr + 0xC0, flags = gg.TYPE_DWORD, value = 0 }
        edits[#edits + 1] = { address = addr + 0xC4, flags = gg.TYPE_DWORD, value = 0 }
        edits[#edits + 1] = { address = baseVal, flags = gg.TYPE_DWORD, value = 0 }
        edits[#edits + 1] = { address = baseVal + 0x4, flags = gg.TYPE_DWORD, value = points }
      end
    end
  end

  if #edits > 0 then
    gg.setValues(edits)
    gg.alert(_( "alert_berhasil_prefix" ) .. " " .. count .. "\n" ..
             _( "alert_berhasil_suffix" ) .. " " .. points)
    gg.toast(_( "toast_berhasil" ))
  else
    gg.alert(_( "alert_tidak_valid" ))
  end
end

function ms1()
gg.setVisible(false)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)

  -- 💬 Prompt input
  local input = gg.prompt({
    _( "promptPoints_regata" ),
    _( "promptEnable_regata" )
  }, nil, { "number", "checkbox" })

  if not input then
    return gg.alert(_( "cancel_regata" ))
	end

  local poin, aktif = tonumber(input[1]), input[2]

  -- 🔎 Validasi poin
  if aktif and (not poin or poin < 150 or poin > 300) then
    return gg.alert("⚠️ Jumlah poin tidak valid!\n\nMasukkan nilai antara 150 hingga 300.")
  end

  -- 🔍 Cari QWORD utama
  gg.searchNumber("65540", gg.TYPE_QWORD)
  local hasil = gg.getResults(1000)

  if #hasil == 0 then
    return
  end

  -- 🧩 Filter alamat dengan offset +0x130 == -1 dan +0x1E8 == 1
  local kandidat = {}
  for i, v in ipairs(hasil) do
    local cek = gg.getValues({
      { address = v.address + 0x130, flags = gg.TYPE_DWORD },
      { address = v.address + 0x1E8, flags = gg.TYPE_DWORD }
    })

    local val130 = cek[1].value
    local val1E8 = cek[2].value

    if val130 == -1 and val1E8 == 1 then
      table.insert(kandidat, v)
    end
  end

  if #kandidat == 0 then
    return gg.alert(_( "noData_regata" ))
  end

  local targetAddress = kandidat[1].address

  -- 🧠 Persiapan data edit
  local edit = {
    { address = targetAddress + 0xC8, flags = gg.TYPE_DWORD, value = 0 },     -- status
    { address = targetAddress + 0xCC, flags = gg.TYPE_DWORD, value = 15000 }  -- nilai tugas
  }

  -- 🧮 Jika aktif, ubah poin via offset +208 (referensi QWORD)
  if aktif then
    local baseData = gg.getValues({ { address = targetAddress + 0x208, flags = gg.TYPE_QWORD } })[1]
    local base = baseData and baseData.value or 0

    if base > 0x100000 then  
      table.insert(edit, { address = base + 0x0, flags = gg.TYPE_DWORD, value = 0 })     -- reset poin  
      table.insert(edit, { address = base + 0x4, flags = gg.TYPE_DWORD, value = poin })  -- set poin  
    end
  end

  -- ✏️ Terapkan perubahan
  gg.setValues(edit)
  gg.clearResults()

  -- ✅ Tampilkan alert hanya jika mode aktif
  if aktif then
    gg.alert(_( "successTitle_regata" ) .. "\n" .. _( "successBody_regata" ) .. poin)
  end

  gg.toast(_( "toast_regata" ))
end

-- ✅ Fungsi utama ms2
function ms2()
  -- 1. Input awal
  local input = gg.prompt({_("promptLevel_boomlike"), _("promptLikeStart_boomlike")}, nil, {"number", "number"})
  if not input then gg.alert(_("cancel_boomlike")) return end
  local level = tonumber(input[1])
  local likeStart = tonumber(input[2])
  if not level or not likeStart then gg.alert(_("invalidInput_boomlike")) return end

  -- 2. Search awal
  gg.setVisible(false)
  gg.clearResults()
  local searchPattern = string.format("%d;%d", level, likeStart)
  gg.searchNumber(searchPattern, gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)

  local count = gg.getResultsCount()
  if count == 0 then gg.alert(_("initialNotFound_boomlike")) return end

  -- 3. Instruksi like
  gg.alert(_("pleaseLike_boomlike"))

  -- 4. Tunggu user klik GG icon
  gg.setVisible(false)
  while not gg.isVisible() do
    gg.sleep(100)
  end
  gg.setVisible(false)

  -- 5. Input like baru
  local input2 = gg.prompt({_("promptLikeNew_boomlike")}, nil, {"number"})
  if not input2 then gg.alert(_("cancel_boomlike")) return end
  local likeNew = tonumber(input2[1])
  if not likeNew or likeNew <= likeStart then gg.alert(_("likesNotIncrease_boomlike")) return end

  -- 6. Refine dengan like baru
  gg.refineNumber(likeNew, gg.TYPE_DWORD)
  local count2 = gg.getResultsCount()
  if count2 == 0 then gg.alert(_("refineFailed_boomlike")) return end
  local finalResult = gg.getResults(count2)

  -- 7. Ambil offset values
  local addrBase = finalResult[1].address
  local extra = gg.getValues({
    {address = addrBase - 0x174, flags = gg.TYPE_DWORD},
    {address = addrBase - 0x178, flags = gg.TYPE_DWORD},
    {address = addrBase - 0x17C, flags = gg.TYPE_DWORD}
  })
  local v174, v178, v17C = extra[1].value, extra[2].value, extra[3].value

  -- 8. Search baru dengan extra codes
  gg.clearResults()
  local searchExtra = string.format("1768972591;%d;%d;%d", v174, v178, v17C)
  gg.searchNumber(searchExtra, gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  local count3 = gg.getResultsCount()
  if count3 == 0 then gg.alert(_("extraSearchFailed_boomlike")) return end

  -- 9. Refine 1768972591
  gg.refineNumber(1768972591, gg.TYPE_DWORD)
  local count4 = gg.getResultsCount()
  if count4 == 0 then gg.alert(_("refine176Failed_boomlike")) return end
  local targets = gg.getResults(count4)

  -- 10. Loop semua hasil refine
  local edits, freezeEdits = {}, {}
  for i, t in ipairs(targets) do
    local baseAddr = t.address
    -- Edit offsets +4, +8, +C → 0
    table.insert(edits, {address = baseAddr + 0x4, flags = gg.TYPE_DWORD, value = 0})
    table.insert(edits, {address = baseAddr + 0x8, flags = gg.TYPE_DWORD, value = 0})
    table.insert(edits, {address = baseAddr + 0xC, flags = gg.TYPE_DWORD, value = 0})
    -- Edit offsets -10, -14, -18, -1C → 0 & freeze
    table.insert(freezeEdits, {address = baseAddr - 0x10, flags = gg.TYPE_DWORD, value = 0, freeze = true})
    table.insert(freezeEdits, {address = baseAddr - 0x14, flags = gg.TYPE_DWORD, value = 0, freeze = true})
    table.insert(freezeEdits, {address = baseAddr - 0x18, flags = gg.TYPE_DWORD, value = 0, freeze = true})
    table.insert(freezeEdits, {address = baseAddr - 0x1C, flags = gg.TYPE_DWORD, value = 0, freeze = true})
  end

  -- Apply semua edit sekaligus
  if #edits > 0 then gg.setValues(edits) end
  if #freezeEdits > 0 then gg.addListItems(freezeEdits) end

  gg.toast(string.format("%s (%d)", _("likesFrozen_boomlike"), count4))
end
            
function menu2()
  local title = banner
  local menu = gg.choice({
    _("menu2_add_points_menuipen"),        -- "🏆  Add Ernie Cup Points" / "🏆 Tambah Poin Ernie Cup"
    _("menu2_refill_energy_menuipen"),     -- "⚡  Refill Adventure Energy" / "⚡ Isi Ulang Energi Petualangan"
    _("menu2_free_ore_menuipen"),          -- "👑  Rule of the Mine (Free Ore)" / "👑 Aturan Tambang (Bijih Gratis)"
    _("menu2_freeze_treasure_menuipen"),   -- "🏴  Freeze Pirate Treasure" / "🏴 Bekukan Harta Bajak Laut"
    _("menu_back_menuipen")                -- "❌  [ << Go Back >> ]" / "❌  [ << Kembali >> ]"
  }, nil, title)

  if menu == nil then
    return

  elseif menu == 1 then ipen1()
  elseif menu == 2 then ipen2()
  elseif menu == 3 then ipen3()
  elseif menu == 4 then ipen4()
  elseif menu == 5 then
    Main()
    return -- stop loop kalau balik ke menu utama
  else
    return
  end

  -- Setelah user memilih fungsi, tunggu klik GG baru ulangi menu
  while true do
    if gg.isVisible(true) then
      gg.setVisible(false)
      menu2()
      break
    end
  end
end

-- ✅ Fungsi utama ipen1 multi-bahasa
function ipen1()
  gg.setVisible(false)

  gg.alert(_("alertMinPoint_ernot"))

  -- Prompt nilai
  local input = gg.prompt({_("promptPoints_ernot")}, {""}, {"number"})
  local val = tonumber(input and input[1])
  if not val then
    gg.toast(_("invalidInput_ernot"))
    return
  end

  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)

  -- Cari pola memory untuk Ernie Cup
  gg.searchNumber("65766512h;655F746Eh;0000646Eh;00000031h;00000024h:737", gg.TYPE_DWORD)
  gg.refineNumber("65766512h", gg.TYPE_DWORD)

  local r = gg.getResults(gg.getResultsCount())
  if #r == 0 then
    gg.alert(_("dataNotFound_ernot"))
    return
  end

  -- Edit alamat offset +0x318
  local offset = {}
  for i = 1, #r do
    table.insert(offset, {
      address = r[i].address + 0x318,
      flags = gg.TYPE_DWORD,
      value = val
    })
  end
  gg.setValues(offset)

  gg.alert(_("pointsUpdated_ernot"))
  a2()
  gg.toast(_("toastSuccess_ernot"))
end

function oder7()
  ipen2("free")
end

function ipen2(caller)
  gg.setVisible(false)

  local jenis = gg.choice({
    "⚡ " .. _("adventure_energy_petir"),
    "💥 " .. _("adventure_explosive_petir")
  }, nil, "🎯 " .. _("select_adventure_type_petir"))
  if not jenis then
    gg.alert("❌ " .. _("operation_canceled_petir"))
    return
  end

  local config = {
    [1] = {
      min = 450,
      max = 9999,
      prompt = "⚡ " .. _("enter_energy_value_petir"),
      pattern = "40;80;155;100;220;450",
      refine = "450",
      notfound = "❌ " .. _("energy_not_found_petir")
    },
    [2] = {
      min = 5,
      max = 99,
      prompt = "💥 " .. _("enter_explosive_value_petir"),
      pattern = "40;1;72;2;160;5::37",
      refine = "5",
      notfound = "❌ " .. _("explosive_not_found_petir")
    }
  }

  local cfg = config[jenis]

  local input = gg.prompt({cfg.prompt}, nil, {"number"})
  local val = tonumber(input and input[1])
  if not val or val < cfg.min or val > cfg.max then
    gg.toast("🚫 " .. _("invalid_input_petir") .. " (" .. cfg.min .. "–" .. cfg.max .. ")")
    return
  end

  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber(cfg.pattern, gg.TYPE_DWORD)
  gg.refineNumber(cfg.refine, gg.TYPE_DWORD)

  local r = gg.getResults(gg.getResultsCount())
  if #r == 0 then
    gg.alert(cfg.notfound)
    return
  end

  for i = 1, #r do r[i].value = val end
  gg.setValues(r)

  local patch = {}
  for i = 1, #r do
    table.insert(patch, {
      address = r[i].address - 0x4,
      flags = gg.TYPE_DWORD,
      value = 1
    })
  end
  gg.setValues(patch)

  a2()
  gg.toast("✅ " .. _("value_updated_petir"))
  gg.alert(((jenis == 1 and "⚡ " .. _("adventure_energy_petir")) or ("💥 " .. _("adventure_explosive_petir"))) ..
           " " .. _("updated_to_petir") .. " " .. val .. ".\n\n" .. _("check_event_petir"))
end

-- ✅ Fungsi utama ipen3 multi-bahasa
function ipen3()
  gg.setVisible(false)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)

  gg.searchNumber("00010001h;00326D04h;00000075h;0031656Eh:269", gg.TYPE_DWORD)
  gg.refineNumber("00326D04h", gg.TYPE_DWORD)

  local r = gg.getResults(10)
  if #r == 0 then
    gg.alert(_("dataNotFound_ore"))
    return
  end

  gg.setValues({
    {address = r[1].address - 0x18, flags = gg.TYPE_DWORD, value = 0},
    {address = r[1].address - 0x14, flags = gg.TYPE_DWORD, value = 2000}
  })

  a2()
  gg.toast(_("toastUpdated_ore"))
  gg.alert(_("alertApplied_ore"))
end

-- ✅ Fungsi utama ipen4 multi-bahasa
function ipen4()
  gg.setVisible(false)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)

  gg.searchNumber("1734429984;85::281", gg.TYPE_DWORD)
  gg.refineNumber("85", gg.TYPE_DWORD)

  local r = gg.getResults(gg.getResultCount())
  if #r == 0 then
    gg.alert(_("dataNotFound_bajak"))
    return
  end

  local freeze = {}
  for i = 1, #r do
    local addr = r[i].address
    table.insert(freeze, {address = addr - 0x70, flags = gg.TYPE_DWORD, value = 0, freeze = true})
    table.insert(freeze, {address = addr - 0x6C, flags = gg.TYPE_DWORD, value = 1, freeze = true})
  end

  gg.addListItems(freeze)
  a2()
  gg.toast(string.format(_("toastFreeze_bajak") .. " (%d)", #r))
end

function menu7()
    local title = banner
    local menu = gg.choice({
        _("faster_arrivals_skiptime"),   
        _("no_feed_timer_skiptime"),     
        _("no_farm_timer_skiptime"),     
        _("no_dealer_rest_skiptime"),    
        _("instant_foundry_skiptime"),   
        _("no_request_delay_skiptime"),  
        _("go_back_skiptime")
    }, nil, title)

    if menu == nil then
        return
    elseif menu == 1 then stime1()
    elseif menu == 2 then stime2()
    elseif menu == 3 then stime3()
    elseif menu == 4 then stime4()
    elseif menu == 5 then stime5()
    elseif menu == 6 then stime6()
    elseif menu == 7 then Main()
    else
        return
    end

    -- Kembali ke menu setelah action, kecuali saat balik ke Main()
    if menu ~= 7 then
        while true do
            if gg.isVisible(true) then
                gg.setVisible(false)
                menu7()
                break
            end
        end
    end
end

-- 🛠 Fungsi menu stime1
function stime1()
  local indev = dev
  local menu = gg.choice({
    _("shipBoost_aripal"),
    _("cargoAuto1_aripal"),
    _("heliAuto_aripal"),
    _("trainBoost11_aripal"),
    _("goBack_aripal")
  }, nil, indev)

  if menu == nil then
    return
  elseif menu == 1 then auto1()
  elseif menu == 2 then auto2()
  elseif menu == 3 then auto3()
  elseif menu == 4 then auto4()
  elseif menu == 5 then menu7()
    return
  else
    return
  end

  -- Tampilkan ulang menu jika user kembali ke GG
  while true do
    if gg.isVisible(true) then
      gg.setVisible(false)
      stime1()
      break
    end
  end
end

function auto1()
  gg.setVisible(false)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)

  gg.searchNumber("120;70;100;140;160;2019904798;1701606217::1709", gg.TYPE_DWORD)
  gg.refineNumber("2019904798", gg.TYPE_DWORD)

  local r = gg.getResults(1)
  if #r == 0 then
    gg.alert(_("no_ship_kpl"))
    return
  end

  local offsets = {0x68, 0x2E8, 0x428, 0x568, 0x6A8}
  local edits = {}

  for _, o in ipairs(offsets) do
    table.insert(edits, {
      address = r[1].address - o,
      flags = gg.TYPE_DWORD,
      value = 1
    })
  end

  gg.setValues(edits)
  a2()
  gg.toast(_("fast_ship_on_kpl"))
end

function auto2()
  gg.setVisible(false)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)

  gg.searchNumber("54000;18000", gg.TYPE_DWORD)
  gg.refineNumber("54000", gg.TYPE_DWORD)

  local r = gg.getResults(gg.getResultCount())
  if #r == 0 then
    gg.alert(_("no_airplane_data_psw"))
    return
  end

  for i = 1, #r do
    r[i].address = r[i].address - 0x8
    r[i].value = 0
    r[i].freeze = true
    r[i].flags = gg.TYPE_DWORD
  end

  gg.addListItems(r)
  a2()
  gg.toast(_("auto_cargo_success_psw"))
end

function auto3()
  gg.setVisible(false)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)

  gg.searchNumber("1;1;16842752;100::25", gg.TYPE_DWORD)
  local r = gg.getResults(1000)
  if #r == 0 then
    gg.alert(_("helicopter_no_data_helkop"))
    return
  end

  gg.editAll("0", gg.TYPE_DWORD)
  a2()
  gg.toast(_("helicopter_auto_ready_helkop"))
  gg.alert(_("helicopter_removed_success_helkop"))
end

-- Fungsi auto4() multi-bahasa
function auto4()
    gg.setVisible(false)
    gg.setRanges(gg.REGION_C_ALLOC)

    local d = gg.prompt(_"train_prompt_kreta", nil, {"number", "number", "checkbox"})
    if not d then return gg.alert(_"cancelled_kreta") end

    local h = tonumber(d[1]) or 0
    local m = tonumber(d[2]) or 0
    local freezeCargo = d[3]

    if h < 1 or h > 5 or m < 0 or m > 55 then
        gg.alert(_"invalid_input_kreta")
        return
    end

    local total = (h * 3600) + (m * 60)
    gg.clearResults()
    gg.searchNumber(total, gg.TYPE_FLOAT)

    local found = gg.getResults(gg.getResultCount())
    if #found == 0 then
        gg.alert(_"no_timer_kreta")
        return
    end

    local patch = {}
    for _, v in ipairs(found) do
        table.insert(patch, {address = v.address, flags = gg.TYPE_FLOAT, freeze = true, value = 1})

        if freezeCargo then
            for _, offset in ipairs({0x198, 0x2B8, 0x3D8, 0x4F8, 0x618}) do
                table.insert(patch, {
                    address = v.address - offset,
                    flags = gg.TYPE_DWORD,
                    freeze = true,
                    value = 1
                })
            end
        end
    end

    gg.addListItems(patch)
    a2()

    local msg = _( "train_timer_frozen_kreta") .. h .. "h " .. m .. "m"
    if freezeCargo then msg = msg .. _( "carriage_frozen_kreta") end

    gg.alert(_"success_msg_kreta" .. msg)
    gg.toast(_"train_updated_kreta")
end

-- ===== Fungsi Feed Factory Multi Bahasa =====
function stime2()
  gg.setVisible(false)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)

  -- Cari base address
  gg.searchNumber("6361660Eh;776F630Eh:41", gg.TYPE_DWORD)
  gg.refineNumber("6361660Eh", gg.TYPE_DWORD)
  local result = gg.getResults(1)
  if #result == 0 then
    gg.alert(_("feed_not_found_pbrikkan"))
    return
  end

  -- Pilih slot
  local slots = {
    "🐄  Slot 1", "🐓  Slot 2", "🐑  Slot 3",
    "🐝  Slot 4", "🐖  Slot 5", "🍄  Slot 6"
  }
  local selected = gg.multiChoice(slots, nil, _("select_slots_pbrikkan"))
  if not selected then
    gg.alert(_("no_slot_selected_pbrikkan"))
    return
  end

  -- Masukkan jumlah
  local input = gg.prompt({_("enter_amount")}, nil, {"number"})
  local val = tonumber(input and input[1])
  if not val or val < 3 or val > 500 then
    gg.alert(_("invalid_amount_pbrikkan"))
    return
  end

  local base = result[1].address
  local offsets = {
    {0x40, 0x44, 0x48},   -- Slot 1
    {0xe0, 0xe8, 0xe4},   -- Slot 2
    {0x180, 0x188, 0x184},-- Slot 3
    {0x220, 0x228, 0x224},-- Slot 4
    {0x2c0, 0x2c8, 0x2c4},-- Slot 5
    {0x310, 0x318, 0x314} -- Slot 6
  }

  local edits = {}
  for i = 1, 6 do
    if selected[i] then
      local o = offsets[i]
      table.insert(edits, {address = base + o[1], flags = gg.TYPE_DWORD, value = -1})
      table.insert(edits, {address = base + o[2], flags = gg.TYPE_DWORD, value = val})
      table.insert(edits, {address = base + o[3], flags = gg.TYPE_DWORD, value = 0})
    end
  end

  gg.setValues(edits)
  a2()
  
  local count = 0
  for i = 1, 6 do if selected[i] then count = count + 1 end end
  gg.toast(string.format("%s: %d (%d slot(s))", _("feed_updated_pbrikkan"), val, count))
end

function oder6()
  stime3("free")
end

function stime3(caller)
  gg.setVisible(false)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)

  gg.searchNumber(
    "2003788564;1667327502;1150681088;1163984896;1180762112;1187307520;1185464320;1183621120:889",
    gg.TYPE_DWORD
  )
  gg.refineNumber(
    "1150681088;1163984896;1180762112;1187307520;1185464320;1183621120:889",
    gg.TYPE_DWORD
  )

  local r = gg.getResults(6)
  if #r ~= 6 then
    gg.alert(_"alert_feed_not_found_mkncpt")
    return
  end

  for i = 1, 6 do r[i].value = 1 end
  gg.setValues(r)
  a2()
  gg.toast(_"toast_fast_feed_applied_mkncpt")
end

function stime4()
  gg.setVisible(false)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)

  -- Cari pola cooldown Dealer (3600 detik = 1 jam, 86400 = 24 jam)
  gg.searchNumber("3600;86400", gg.TYPE_DWORD)
  gg.refineNumber("3600", gg.TYPE_DWORD)

  local count = gg.getResultCount()
  if count == 0 then
    gg.alert(_("dealer_cooldown_not_found_dealer"))
    return
  end

  local results = gg.getResults(count)
  for i, v in ipairs(results) do
    v.value = 0           -- Set value jadi 0 detik (instan)
    v.freeze = true       -- Bekukan agar tidak berubah kembali
    v.flags = gg.TYPE_DWORD
  end
  gg.addListItems(results)

  a2()
  gg.toast(_("dealer_cooldown_frozen_dealer"))
end

function oder5()
  stime4("free")
end

function stime5(caller)
  gg.setVisible(false)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)

  gg.searchNumber("1701671696;1701868320;1163984896;1172373504;1177075712;1180762112::329", gg.TYPE_DWORD)
  gg.refineNumber("1701868320", gg.TYPE_DWORD)

  local r = gg.getResults(1)
  if #r == 0 then
    gg.alert(_"no_smelter_data_foundry")
    return
  end

  local base = r[1].address
  local o = {
    0x40, 0x50, 0x58, 0x60,
    0x90, 0xA0, 0xA8, 0xB0,
    0xE0, 0xF0, 0xF8, 0x100,
    0x130, 0x140, 0x148, 0x150
  }

  local edits = {}
  for i = 1, #o, 4 do
    table.insert(edits, { address = base + o[i],     flags = gg.TYPE_DWORD, value = 1 })
    table.insert(edits, { address = base + o[i + 1], flags = gg.TYPE_DWORD, value = 0 })
    table.insert(edits, { address = base + o[i + 2], flags = gg.TYPE_DWORD, value = 0 })
    table.insert(edits, { address = base + o[i + 3], flags = gg.TYPE_DWORD, value = 0 })
  end

  gg.setValues(edits)
  a2()
  gg.toast(_"smelter_success_foundry")
end

function stime6()
  gg.setVisible(false)
  gg.clearResults()
  gg.setRanges(gg.REGION_CODE_APP)

  gg.searchNumber("86400;10800", gg.TYPE_DWORD)
  gg.refineNumber("10800", gg.TYPE_DWORD)

  local results = gg.getResults(10)
  if #results == 0 then
    gg.alert(_("stime6_no_values_minta"))
    return
  end

  gg.editAll(1, gg.TYPE_DWORD)
a2()
  gg.toast(_("stime6_success_minta"))
end      

-- ✅ Fungsi menu3 dengan multi bahasa
function menu3()
  local title = banner
  local menu = gg.choice({
    _("wheat_exp_menupenambah"),
    _("animal_count_menupenambah"),
    _("extra_ship_menupenambah"),
    _("more_requests_menupenambah"),
    _("market_unlim_menupenambah"),
    _("back_menupenambah")
  }, nil, title)

  if menu == nil then
    return
  elseif menu == 1 then
    parming1()
  elseif menu == 2 then
    parming2()
  elseif menu == 3 then
    parming3()
  elseif menu == 4 then
    parming4()
  elseif menu == 5 then
    parming5()
  elseif menu == 6 then
    Main() -- Kembali ke menu utama
    return
  else
    return
  end

  -- 🔁 Buka ulang menu jika user tekan ikon GG
  while true do
    if gg.isVisible(true) then
      gg.setVisible(false)
      menu3()
      break
    end
  end
end

function oder2()
  parming1("free")
end

function parming1(caller)
  local input = gg.prompt({_('oder2_prompt_boostexp')}, nil, {"number"})
  local exp = tonumber(input and input[1])
  if not exp then
    gg.alert(_("oder2_cancel_boostexp"))
    return
  end

  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("65687716h;726F6316h:217", gg.TYPE_DWORD)
  gg.refineNumber("65687716h", gg.TYPE_DWORD)

  local r = gg.getResults(1)
  if #r == 0 then
    gg.alert(_("oder2_notfound_boostexp"))
    return
  end

  local base = r[1].address
  gg.setValues({
    {address = base + 0x50, flags = gg.TYPE_DWORD, value = 1},
    {address = base + 0x60, flags = gg.TYPE_DWORD, value = 0},
    {address = base + 0x64, flags = gg.TYPE_DWORD, value = exp}
  })

  a2()
  gg.toast(_("oder2_success_boostexp") .. exp) -- ✅ diperbaiki di sini
end

-- 🐾 Function utama
function parming2()
  gg.setVisible(false)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)

  local input = gg.prompt({
    _( "animal_prompt_curr_hew"),
    _( "animal_prompt_new_hew")
  }, nil, {"number", "number"})

  local curr = tonumber(input and input[1])
  local new = tonumber(input and input[2])
  if not curr or not new or curr < 3 or curr > 9 or new < 3 or new > 9 then
    gg.alert(_( "invalid_input_hew"))
    return
  end

  local names = {
    _( "cow_hew"), _( "chicken_hew"), _( "sheep_hew"),
    _( "bee_hew"), _( "pig_hew"), _( "mushroom_hew")
  }

  local patterns = {
    '1667327502;2037542772;2003788564;1952670054',
    '1667327502;2037542772;1768448796;1852140387',
    '1667327502;2037542772;1701344024;1634103397',
    '1667327502;2037542772;1701143060;1952670054',
    '1667327502;2037542772;1734963220;1952670054',
    '1667327502;2037542772;1937075486;1869574760'
  }

  local sel = gg.multiChoice(names, nil, _( "select_animals_hew"))
  if not sel then
    gg.alert(_( "cancel_operation_hew"))
    return
  end

  for i = 1, #names do
    if sel[i] then
      gg.clearResults()
      gg.searchNumber(patterns[i]..";"..curr, gg.TYPE_DWORD)
      gg.refineNumber(curr, gg.TYPE_DWORD)

      local r = gg.getResults(20)
      if #r == 0 then
        gg.alert(_( "not_found_prefix_hew").." "..names[i].." ".._( "not_found_suffix_hew"))
      else
        for j = 1, #r do r[j].value = new end
        gg.setValues(r)
        gg.toast(_( "updated_prefix_hew").." "..names[i].." ".._( "updated_suffix_hew").." "..new.."!")
      end
    end
  end
end

-- 🛳️ Fungsi Ship Product Edit
function parming3()
  gg.setVisible(false)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)

  gg.alert(_"ship_warning_palkapal")

  local input = gg.prompt({
    _"ship_input1_palkapal",
    _"ship_input2_palkapal"
  }, nil, {"number", "number"})

  local old = tonumber(input and input[1])
  local new = tonumber(input and input[2])

  if not old or not new then
    gg.alert(_"cancelled_palkapal")
    return
  end
  if new < 3 or new > 500 then
    gg.alert(_"invalid_range_palkapal")
    return
  end

  gg.searchNumber(string.format("69687318h;786F4270h;6E6F7246h;%d", old), gg.TYPE_DWORD)
  gg.refineNumber(old, gg.TYPE_DWORD)

  local r = gg.getResults(50)
  if #r == 0 then
    gg.alert(_"not_found_palkapal")
    return
  end

  gg.editAll(new, gg.TYPE_DWORD)
  gg.clearResults()
  a2()

  -- ⚠️ %s dipisah dari tabel bahasa, digabung di sini
  gg.toast(_"ship_done_toast_palkapal" .. new .. "!")
  gg.alert(_"ship_done_alert_palkapal" .. new .. _"ship_done_alert_palkapal")
  end
  
function parming4()
    gg.setVisible(false)
    gg.clearResults()
    gg.setRanges(gg.REGION_C_ALLOC)

    local cropNames = {
        "🌾  Wheat", "🌽  Corn", "🥕  Carrot", "🍬  Sugarcane", "☁️  Cotton",
        "🍓  Strawberry", "🍅  Tomato", "🌲  Pine Tree", "🥔  Potato", "🍫  Cocoa",
        "🌳  Rubber Tree", "🧵  Silk Tree", "🌶️  Chili", "🌾  Rice", "🌹  Rose",
        "🌼  Jasmine", "🌰  Coffee Plant", "🥜  Peanut Plant", "🌿  Tea Plant", "🍎  Apple",
        "🍃  Mint", "🫘  Soybean", "🍂  Cork Oak", "🪻  Lavender"
    }

    local searchPatterns = {
        '65687718h;6F437461h;6568770Ah:25', '726F6316h;756F436Eh;726F6308h:25',
        '7261631Ah;43746F72h;7261630Ch:25', '67757320h;61637261h;67757312h:25',
        '746F631Ah;436E6F74h;746F630Ch:25', '72747322h;65627761h;72747314h:25',
        '6D6F7418h;6F437461h;6D6F740Ah:25', '6E697016h;756F4365h;6E697008h:25',
        '746F701Ah;436F7461h;746F700Ch:25', '63616318h;6F436F61h;6361630Ah:25',
        '62757222h;54726562h;62757214h:25', '6C697316h;756F436Bh;6C697308h:25',
        '7065700Ch;00726570h;65657318h:25', '63697216h;756F4365h;63697208h:25',
        '736F721Eh;65655365h;736F7210h:25', '73616A1Ch;656E696Dh;73616A0Eh:25',
        '666F631Ah;43656566h;666F630Ch:25', '6165701Ah;4374756Eh;6165700Ch:25',
        '6165741Ch;68737562h;6165740Eh:25', '70706118h;6F43656Ch;7070610Ah:25',
        '6E696D16h;756F4374h;6E696D08h:25', '796F731Ch;6E616562h;796F730Eh:25',
        '726F6316h;756F436Bh;726F6308h:25', '76616C1Eh;65646E65h;76616C10h:25'
    }

    local refinePatterns = {
        '6568770Ah','726F6308h','7261630Ch','67757312h','746F630Ch','72747314h','6D6F740Ah','6E697008h',
        '746F700Ch','6361630Ah','62757214h','6C697308h','65657318h','63697208h','736F7210h','73616A0Eh',
        '666F630Ch','6165700Ch','6165740Eh','7070610Ah','6E696D08h','796F730Eh','726F6308h','76616C10h'
    }

    local selected = gg.multiChoice(cropNames, nil, _("🌿 Select crops to modify"))
    if not selected then return end

    local input = gg.prompt({_("📦 Enter crop amount [1;500]:")}, nil, {"number"})
    local value = tonumber(input and input[1])
    if not value or value < 1 or value > 500 then
        gg.alert(_("🚫 Invalid input. Must be between 1 and 500."))
        return
    end

    for i = 1, #cropNames do
        if selected[i] then
            gg.clearResults()
            gg.searchNumber(searchPatterns[i], gg.TYPE_DWORD)
            gg.refineNumber(refinePatterns[i], gg.TYPE_DWORD)

            local results = gg.getResults(10)
            if #results == 0 then
                gg.toast(_("❌ Not found: ") .. cropNames[i])
            else
                local edits = {}
                for _, r in ipairs(results) do
                    table.insert(edits, {address = r.address + 0xF8, flags = gg.TYPE_DWORD, value = 0})
                    table.insert(edits, {address = r.address + 0xFC, flags = gg.TYPE_DWORD, value = value})
                end
                gg.setValues(edits)
                gg.toast(_("✅ ") .. cropNames[i] .. _(" set to ") .. value)
            end
        end
    end
end

-- 🌟 Fungsi parming5
function parming5()
  gg.setVisible(false)

  -- 📥 Prompt input awal
  local i = gg.prompt({_("prompt_market_boxes")}, nil, {"number"})
  local count = tonumber(i and i[1])
  if not count or count < 10 or count > 2000 then
    gg.alert(_("invalid_input_market"))
    return
  end

  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("7020372369389216534", gg.TYPE_QWORD)

  local hasil = gg.getResults(100)
  if #hasil == 0 then
    gg.alert(_("data_not_found_market"))
    return
  end

  -- 🔍 Filter hasil dengan offset +48 = 1185464320
  local valid = {}
  for _, v in ipairs(hasil) do
    local check = gg.getValues({{address = v.address + 0x48, flags = gg.TYPE_DWORD}})
    if check[1].value == 1185464320 then
      table.insert(valid, v)
    end
  end

  if #valid == 0 then
    gg.alert(_("no_valid_offset_market"))
    return
  end

  -- ✏️ Edit nilai pada offset +0x1B8 dari hasil valid
  local edits = {}
  for _, v in ipairs(valid) do
    table.insert(edits, {address = v.address - 0x38, value = count, flags = gg.TYPE_DWORD})
  end

  gg.setValues(edits)
  a2()

  -- 🎯 Notifikasi
  gg.toast(_("toast_success_market") .. count)
  gg.alert(_("alert_success_market_1") .. count .. _("alert_success_market_2"))
end

-- 📌 Menu 4
function menu4()
  local title = banner 
  local menu = gg.choice({
    _( "industry_boost_gamragam"),
    _( "heli_tcash_gamragam"),
    _( "free_boxes_gamragam"),
    _( "build_no_tools_gamragam"),
    _( "freeze_expansion_gamragam"),
    _( "barn_expand_gamragam"),
    _( "dealer_rent_gamragam"),
    _( "back_gamragam")
  }, nil, title)

  if menu == nil then
    return

  elseif menu == 1 then other1()
  elseif menu == 2 then other2()
  elseif menu == 3 then other3()
  elseif menu == 4 then other4()
  elseif menu == 5 then other5()
  elseif menu == 6 then other6()
  elseif menu == 7 then other7()
  elseif menu == 8 then Main()
  else
    return
  end

  -- 🔄 Balik ke menu kecuali saat ke Main()
  if menu ~= 8 then
    while true do
      if gg.isVisible(true) then
        gg.setVisible(false)
        menu4()
        break
      end
    end
  end
end

-- 🔧 Main function
function other1()
  gg.setVisible(false)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)

  -- 📋 Fixed pattern list (2–53)
  local patterns = {
    '32162031X4','32162030X4','32162025X4','32162024X4','32162027X4',
    '32162026X4','32162021X4','32162020X4','32162023X4','32162022X4',
    '32162017X4','32162016X4','32162019X4','32162018X4','32162045X4',
    '32162044X4','32162047X4','32162046X4','32162041X4','32162040X4',
    '32162043X4','32162042X4','32162037X4','32162036X4','32162039X4',
    '32162038X4','32162033X4','32162032X4','32162035X4','32162034X4',
    '32161997X4','32161996X4','32161999X4','32161998X4','32161993X4',
    '32161992X4','32161995X4','32161994X4','32161989X4','32161988X4',
    '32161991X4','32161990X4','32161987X4','32161986X4','32161983X4',
    '32161982X4','32161985X4','32161984X4','32161981X4','32161980X4',
    '32161979X4','32161978X4'
  }

  -- 🛎️ Initial alert
  gg.alert(_("alert_star_brik"))

  -- 🔢 Combined prompt
  local p = gg.prompt(
    {_("prompt_star_brik"), _("prompt_value_brik")},
    {nil, nil},
    {"number", "number"}
  )
  if not p then return end

  local idx = tonumber(p[1])
  local val = tonumber(p[2])

  if not idx or idx < 2 or idx > 53 then
    gg.alert(_("err_star_brik"))
    return
  end
  if not val or val < 99 or val > 100 then
    gg.alert(_("err_value_brik"))
    return
  end

  local pattern = patterns[idx - 1]

  -- 🔍 Search & patch
  gg.clearResults()
  gg.searchNumber(pattern, gg.TYPE_DWORD)
  local res = gg.getResults(100)
  if #res == 0 then
    gg.toast(_("not_found_brik") .. ": " .. pattern)
    return
  end

  local patch = {}
  for _, r in ipairs(res) do
    table.insert(patch, {address = r.address + 0x14, flags = gg.TYPE_DWORD, value = 0})
    table.insert(patch, {address = r.address + 0x18, flags = gg.TYPE_DWORD, value = val})
  end
  gg.setValues(patch)
  gg.toast(_("patched_brik") .. ": " .. pattern .. " → " .. val)
end

function oder1()
  other2("free")
end

function other2(caller)
  gg.setVisible(false)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)

  local input = gg.prompt(_"input_oder1_suntikheli", nil, {"number", "number", "number"})

  if not input then
    return gg.alert(_"no_input_suntikheli")
  end

  local coin = tonumber(input[1]) or 0
  local cash = tonumber(input[2]) or 0
  local exp  = tonumber(input[3]) or 0

  if coin <= 0 and cash <= 0 and exp <= 0 then
    return gg.alert(_"zero_values_suntikheli")
  end

  gg.searchNumber("1885433110;1852403807::253", gg.TYPE_DWORD)
  gg.refineNumber("1885433110", gg.TYPE_DWORD)

  local r = gg.getResults(1)
  if #r == 0 then
    return gg.alert(_"no_match_suntikheli")
  end

  local edits = {
    {address = r[1].address - 0xE0, flags = gg.TYPE_DWORD, value = 0},
    {address = r[1].address - 0xD8, flags = gg.TYPE_DWORD, value = 0},
    {address = r[1].address - 0xC0, flags = gg.TYPE_DWORD, value = 0},
    {address = r[1].address - 0xDC, flags = gg.TYPE_DWORD, value = coin},
    {address = r[1].address - 0xD4, flags = gg.TYPE_DWORD, value = cash},
    {address = r[1].address - 0xBC, flags = gg.TYPE_DWORD, value = exp}
  }

  gg.setValues(edits)
  a2()
  gg.toast(_"toast_oder1_suntikheli")
end

function oder3()
  other3("free")
end

function other3(caller)
  gg.setVisible(false)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)

  local input = gg.prompt({_("prompt_cash_input_freebox")}, nil, {"number"})
  local cash = tonumber(input and input[1])

  if not cash then
    gg.alert(_"invalid_or_cancel_freebox")
    return
  end

  local pattern = "3407873;" .. cash .. ";6:301"
  gg.searchNumber(pattern, gg.TYPE_DWORD)
  gg.refineNumber(cash, gg.TYPE_DWORD)

  local results = gg.getResults(5)
  if #results == 0 then
    gg.alert(_"not_found_new_freebox")
    return
  end

  local list = {}
  for _, v in ipairs(results) do
    table.insert(list, {
      address = v.address,
      flags = gg.TYPE_DWORD,
      value = 0,
      freeze = true
    })
  end

  gg.setValues(list)
  gg.addListItems(list)
  gg.toast(_"activated_new_freebox")
end

-- 🔧 Fungsi utama
function other4()
  gg.setVisible(false)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)

  -- 🔍 Step 1: Search for pattern
  gg.searchNumber("1768846701;31092;2", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
  gg.refineNumber("2", gg.TYPE_DWORD)

  -- 📊 Step 2: Get results
  local results = gg.getResults(700)
  if #results == 0 then
    gg.alert(_("other4_not_found_nitas"))
    return
  end

  -- 📝 Step 3: Apply changes
  gg.editAll("5", gg.TYPE_DWORD)

  -- ✅ Completion
  gg.alert(_("other4_success_nitas"))
  a2()
  gg.toast(_("other4_toast_nitas"))
end

function oder4()
  other5("free")
end

function other5(caller)
  gg.setVisible(false)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)

  local d = {
    pattern = "1886351380;29;28::105", -- pola untuk expansion city
    refine = "1886351380",
    offset = -0x8,
    label = _("expansion_city_freeluas")
  }

  gg.searchNumber(d.pattern, gg.TYPE_DWORD)
  gg.refineNumber(d.refine, gg.TYPE_DWORD)

  local results = gg.getResults(10)
  if #results == 0 then
    gg.alert("❌ \"" .. d.label .. "\" " .. _("not_found_restart_freeluas"))
    return
  end

  for i = 1, #results do
    results[i].address = results[i].address + d.offset
    results[i].flags = gg.TYPE_DWORD
    results[i].value = 0
    results[i].freeze = true
  end

  gg.addListItems(results)
  gg.toast("✅ \"" .. d.label .. "\" " .. _("frozen_freeluas"))
  a2()
  gg.toast("🚧 " .. _("land_freeze_success_freeluas"))
end

-- ✨ Fungsi utama
function other6()
  gg.setVisible(false)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)

  -- 🧹 Stage 1: Clear barn values
  gg.searchNumber('99;99;99;5010', gg.TYPE_DWORD)
  gg.refineNumber('99;99;99', gg.TYPE_DWORD)
  local baseResults = gg.getResults(3)

  if #baseResults == 0 then
    gg.alert(_("barn_not_found_gudangdang"))
    return
  end

  local offsets = {
    0xC40,0xC20,0xC00,0xBE0,0xBC0,0xBA0,0xB80,0xB60,0xB40,
    0xB20,0xB00,0xAE0,0xAC0,0xAA0,0xA80,0xA60,0xA40,0xA20,
    0xA00,0x9E0,0x9C0,0x9A0,0x980,0x960,0x940,0x920,0x900,
    0x8E0,0x8C0,0x8A0,0x880,0x860,0x840,0x820,0x800,
    0x7E0,0x7C0,0x7A0,0x780,0x760,0x740,0x720,0x700,
    0x6E0,0x6C0,0x6A0,0x680,0x660,0x640,0x620,0x600,
    0x5E0,0x5C0,0x5A0,0x580,0x560,0x540,0x520,0x500,
    0x4E0,0x4C0,0x4A0,0x480,0x460,0x440,0x420,0x400,
    0x3E0,0x3C0,0x3A0,0x380,0x360,0x340,0x320,0x300,
    0x2E0,0x2C0,0x2A0,0x280,0x260,0x240,0x220,0x200,
    0x1E0,0x1C0,0x1A0,0x180,0x160,0x140,0x120,0x100,
    0xE0, 0xC0, 0xA0, 0x80, 0x60, 0x40, 0x20
  }

  local toClear = {}
  for _, result in ipairs(baseResults) do
    for _, offset in ipairs(offsets) do
      if result.address > offset then
        table.insert(toClear, {
          address = result.address - offset,
          flags = gg.TYPE_DWORD,
          value = 0
        })
      end
    end
  end

  if #toClear > 0 then
    gg.setValues(toClear)
  end

  -- ❄️ Stage 2: Freeze barn capacity
  gg.clearResults()
  gg.searchNumber("5010;4935", gg.TYPE_DWORD)
  gg.refineNumber("4935", gg.TYPE_DWORD)

  local matchCount = gg.getResultCount()
  if matchCount == 0 then
    gg.alert(_("barn_freeze_not_found_gudangdang"))
    return
  end

  local results = gg.getResults(matchCount)
  local freezeItems = {}

  for _, v in ipairs(results) do
    table.insert(freezeItems, {address = v.address + 0x10, flags = gg.TYPE_DWORD, freeze = true, value = -200})
    table.insert(freezeItems, {address = v.address + 0x14, flags = gg.TYPE_DWORD, freeze = true, value = -200})
    table.insert(freezeItems, {address = v.address + 0x18, flags = gg.TYPE_DWORD, freeze = true, value = -200})
  end

  gg.addListItems(freezeItems)
  a2()
  gg.toast(_("barn_frozen_gudangdang") .. matchCount .. _("entries_gudangdang"))
end

function other7()
  gg.setVisible(false)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)

  -- 🔍 Cari pola memori untuk Dealer rental
  gg.searchNumber('1634496558;2020176505;97;88::109', gg.TYPE_DWORD)
  gg.refineNumber('1634496558', gg.TYPE_DWORD)

  local results = gg.getResults(1)
  if #results == 0 then
    gg.alert(_("dealer_not_found_deler"))
    return
  end

  local addresses = {}
  for _, v in ipairs(results) do
    table.insert(addresses, {address = v.address - 0x4C, flags = gg.TYPE_DWORD, value = 0})
    table.insert(addresses, {address = v.address - 0x48, flags = gg.TYPE_DWORD, value = 2})
    table.insert(addresses, {address = v.address - 0x44, flags = gg.TYPE_DWORD, value = 0})
    table.insert(addresses, {address = v.address - 0x40, flags = gg.TYPE_DWORD, value = 2592000}) -- 30 days
  end

  gg.setValues(addresses)

  gg.alert(_("dealer_success_deler"))
  a2()
  gg.toast(_("dealer_toast_deler"))
end

-- 📘 Tentang Script & Menu Reset
function menu6()
  local title = banner
  local menu = gg.choice({
	"⚙️ • Admin Login",
    _( "about_script" ),
    _( "contact_dev" ),
    _( "reset_default" ),
    _( "change_lang" ),
    _( "go_back" )
  }, nil, title)

  if not menu then return end

	if menu == 1 then
    adminLogin()
  elseif menu == 2 then
    about1()
  elseif menu == 3 then
    about2()
  elseif menu == 4 then
    resetMode()
    menuRunning = false
  elseif menu == 5 then
  local langList = {
    "🇺🇸 English" .. (lang == "en" and "  ✓" or ""),
    "🇮🇩 Indonesia" .. (lang == "id" and "  ✓" or "")
  }
  local pilih = gg.choice(langList, nil, _( "select_lang" ))
  if pilih == 1 then
    lang = "en"
    gg.toast(teks["lang_set"]["en"])
  elseif pilih == 2 then
    lang = "id"
    gg.toast(teks["lang_set"]["id"])
  end
  saveLang()
  menu6()
  elseif menu == 6 then
    if menuMode == "free" then freekey() else Main() end
  end
end

-- 🔑 Admin Credentials
adminUser = "ARHScript"        -- ganti sesuai username yang diinginkan
adminPin  = "Azka567109"       -- ganti sesuai password yang diinginkan

-- 🔑 Admin Login
function adminLogin()
  local input = gg.prompt(
    {"👤 Username", "🔑 Password"},
    {"", ""},
    {"text", "text"}
  )

  if not input then
    gg.alert(_("cancelled"))
    return
  end

  local user = input[1]
  local pin  = input[2]

  if user == adminUser and pin == adminPin then
    gg.toast(_("welcome")..user)
    adminMenu()
  else
    gg.alert(_("invalid"))
  end
end

-- ⚙️ Admin Menu
function adminMenu()
  local menu = gg.choice({
    _("resetLogs"),
    _("exitMenu")
  }, nil, _("adminMenuTitle"))

  if menu == 1 then
    os.remove("/sdcard/.ulog_craft")
    os.remove("/sdcard/.brush_viu")
    os.remove("/sdcard/.plon_getin")
    os.remove("/sdcard/.jarnogipa")
	os.remove("/sdcard/.vutlenot")
	os.remove("/sdcard/.silturime")
	os.remove("/sdcard/ARH_Script/.userlog")
	os.remove("/sdcard/ARH_Script/.lastlog")
    gg.alert(_("logsReset"))
	resetMode()
    os.exit()
  elseif menu == 2 then
	menu6()
    gg.toast(_("exiting"))
  end
end

function about1()
  local msg = _("about_msg")
  local result = gg.alert(msg, _( "exit" ), _( "copy_link" ))

  if result == 2 then
    gg.copyText("https://t.me/@azka_arh")
    gg.toast(_"copied")
  end

  menu6() -- kembali ke menu sebelumnya
end

-- Fungsi utama
function showContactMenu()
  gg.setVisible(false)

  local menu = gg.choice({
    "✈️ • " .. _("contact_telegram"),
    "📘 • " .. _("contact_facebook"),
    "❌ • " .. _("exit_script1")
  }, nil, "👤 " .. _("contact_menu_title") .. "\n📩 " .. _("contact_menu_desc"))

  if not menu then
    return
  end

  local contacts = {
    [1] = { link = "https://t.me/@azka_arh", label = "✈️ Telegram" },
    [2] = { link = "https://m.me/azka.arhh", label = "📘 Facebook" }
  }

  if contacts[menu] then
    local selected = contacts[menu]
    local action = gg.alert(
      "🔗 " .. selected.label .. "\n\n" ..
      selected.link,
      "❌ " .. _("exit1"), "📋 " .. _("copy_link1")
    )

    if action == 2 then
      gg.copyText(selected.link)
      gg.toast("✅ " .. _("link_copied"))
    else
      gg.toast("❌ " .. _("contact_cancelled"))
    end
    exit()

  elseif menu == 3 then
    gg.toast("👋 " .. _("exit_contact_menu"))
    exit()
  end
end

-- Alias agar bisa dipanggil lewat dua nama
buykey = showContactMenu
about2 = showContactMenu

function a2()
function progressBarLoading()
  local bar = {"[░░░░░░░░░░]", "[█░░░░░░░░░]", "[██░░░░░░░░]", "[███░░░░░░░]", "[████░░░░░░]", "[█████░░░░░]", "[██████░░░░]", "[███████░░░]", "[████████░░]", "[█████████░]", "[██████████]"}
  
  for i = 1, #bar do
    gg.toast("⌛ Loading " .. bar[i])
    gg.sleep(100)
    gg.clearResults()
  end
end

--Run it
progressBarLoading()
end

function exit()
  gg.clearResults()
  gg.clearList()
  gg.alert("🫶 " .. _("thank_you_exit"))
  os.exit()
end

-- ⏳ Load Mode dari File
loadMode()

-- 🔁 Jalankan sesuai mode
if menuMode == "free" then
  freekey()
elseif menuMode == "premium" then
  Main()
else
  mainMenu()
end

-- 🔁 Loop deteksi ikon Game Guardian
while true do
  if gg.isVisible(true) then
    gg.setVisible(false)
    if not menuRunning then
      if menuMode == "free" then
        freekey()
      elseif menuMode == "premium" then
        Main()
      else
        mainMenu()
      end
    end
  end
  gg.sleep(100)
end

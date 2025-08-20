
-- Initialize trigger flag
MZMZ = 0

-- Main menu
function Main()
  local menu = gg.choice({
    "➣ 🌟 cek kode",
    "➣ ❌ Exit The Script"
  }, nil, "📜 Choose an option:")

  if menu == nil then
    gg.toast("Menu closed.")
    return
  end

  if menu == 1 then
    jem()
  elseif menu == 2 then
    if type(exit) == "function" then
      exit()
    else
      gg.alert("Script exited.")
      os.exit()
    end
  end
end

function jem()
  -- 1. Input awal
  local input = gg.prompt({
    "📊 Masukkan level kota:",
    "👍 Masukkan jumlah like saat ini:"
  }, nil, {"number", "number"})

  if not input then gg.alert("❌ Dibatalkan.") return end
  local level = tonumber(input[1])
  local likeAwal = tonumber(input[2])
  if not level or not likeAwal then
    gg.alert("❌ Input tidak valid.") return
  end

  -- 2. Pencarian awal
  gg.setVisible(false)
  gg.clearResults()
  local patternCari = string.format("%d;%d", level, likeAwal)
  gg.searchNumber(patternCari, gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)

  if gg.getResultsCount() == 0 then
    gg.alert("❌ Data awal tidak ditemukan.") return
  end

  -- 3. Instruksi
  gg.alert("📌 Silahkan sukai kota.\nJika sudah, buka ikon GameGuardian untuk melanjutkan.")

  -- 🔹 4. Tunggu sampai user klik ikon GG
  gg.setVisible(false)
  while not gg.isVisible() do
    gg.sleep(100)
  end
  gg.setVisible(false)

  -- 5. Input like baru
  local input2 = gg.prompt({"👍 Masukkan jumlah like terbaru:"}, nil, {"number"})
  if not input2 then gg.alert("❌ Dibatalkan.") return end
  local likeBaru = tonumber(input2[1])
  if not likeBaru or likeBaru <= likeAwal then
    gg.alert("❌ Like tidak bertambah atau input salah.") return
  end

  -- 6. Refine dengan like baru
  gg.refineNumber(likeBaru, gg.TYPE_DWORD)
  local hasilFinal = gg.getResults(1)
  if #hasilFinal == 0 then
    gg.alert("❌ Refine gagal, data tidak ditemukan.") return
  end

  -- 7. Ambil offset 0x174, 0x178, 0x17C
  local addrBase = hasilFinal[1].address
  local extra = gg.getValues({
    {address = addrBase - 0x174, flags = gg.TYPE_DWORD},
    {address = addrBase - 0x178, flags = gg.TYPE_DWORD},
    {address = addrBase - 0x17C, flags = gg.TYPE_DWORD}
  })

  local v174, v178, v17C = extra[1].value, extra[2].value, extra[3].value

  -- 8. Pencarian baru dengan kode tambahan
  gg.clearResults()
  local patternExtra = string.format("1768972591;%d;%d;%d", v174, v178, v17C)
  gg.searchNumber(patternExtra, gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)

  if gg.getResultsCount() == 0 then
    gg.alert("❌ Pencarian tambahan gagal, data tidak ditemukan.") 
    return
  end

  -- 9. Refine hanya 1768972591
  gg.refineNumber(1768972591, gg.TYPE_DWORD)
  local target = gg.getResults(1)
  if #target == 0 then
    gg.alert("❌ Refine 1768972591 gagal.") return
  end

  local baseAddr = target[1].address

  -- 10. Edit offset +4, +8, +C → 0
  local edits = {
    {address = baseAddr + 0x4, flags = gg.TYPE_DWORD, value = 0},
    {address = baseAddr + 0x8, flags = gg.TYPE_DWORD, value = 0},
    {address = baseAddr + 0xC, flags = gg.TYPE_DWORD, value = 0}
  }
  gg.setValues(edits)

  -- 11. Edit offset -10, -14, -18 → 0 dan freeze
  local freezeEdits = {
    {address = baseAddr - 0x10, flags = gg.TYPE_DWORD, value = 0, freeze = true},
    {address = baseAddr - 0x14, flags = gg.TYPE_DWORD, value = 0, freeze = true},
    {address = baseAddr - 0x18, flags = gg.TYPE_DWORD, value = 0, freeze = true}
  }
  gg.addListItems(freezeEdits)

  gg.toast("✅ like berhasil dibekukan.")
end

function a2()
function loadingAnim()
  local frames = {"[■□□□□□]", "[■■□□□□□]", "[■■■□□□]",
                  "[■■■■□□]", "[■■■■■□]", "[■■■■■■]"}
  for i = 1, #frames do
    gg.clearResults()
    gg.toast("Loading... " .. frames[i])
    gg.sleep(180)
  end
end

loadingAnim()
end

-- Exit function
function exit()
  gg.toast("Successfully exited ❌")
  os.exit()
end

-- Persistent loop
while true do
  if gg.isVisible(true) then
    MZMZ = 1
    gg.setVisible(false)
  end

  if MZMZ == 1 then
    Main()
    MZMZ = 0
  end

  gg.sleep(100) -- Avoid high CPU usage
end

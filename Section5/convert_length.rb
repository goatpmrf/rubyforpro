UNITS = { m: 1.0, ft: 3.28, in: 39.37 }

# ハッシュを受け取る。デフォルト値はメートル
def convert_length(length, from: :m, to: :m)
  # ここのfromやtoが:fromや:toでない理由が不明
  (length / UNITS[from] * UNITS[to]).round(2)
end

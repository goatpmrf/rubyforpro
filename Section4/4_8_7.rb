a = [1, 2, 3]

# ブロックを渡さないときは指定した値が見つからないとnilがかえる
p a.delete(100)

# ブロックを渡すとブロックの戻り値が、指定した値が見つからないときの戻り値になる
p a.delete(100) { 'NG' }
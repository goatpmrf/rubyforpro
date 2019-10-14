# 正規表現のオプション

# iオプション -> 大文字小文字を区別しない
p 'HELLO' =~ /hello/i
p 'HELLO' =~ %r{hello}i
regexp = Regexp.new('hello', Regexp::IGNORECASE)
p 'HELLO' =~ regexp

# mオプション -> .が改行文字も含む
p "Hello\nBye"  =~ /Hello.Bye/
p "Hello\nBye"  =~ /Hello.Bye/m
regexp = Regexp.new('Hello.Bye', Regexp::MULTILINE)
p "Hello\nBye" =~ regexp

# xオプション -> 空白文字を無視、＃でコメント
regexp = /
\d{3} # 郵便番号の先頭３桁
-     # 区切り文字のハイフン
\d{4} # 郵便番号の末尾４桁
/x
p '123-4567' =~ regexp

pattern = <<'TEXT'
\d{3} # 郵便番号の先頭３桁
-     # 区切り文字のハイフン
\d{4} # 郵便番号の末尾４桁
TEXT
regexp = Regexp.new(pattern, Regexp::EXTENDED)
p '123-4567' =~ regexp

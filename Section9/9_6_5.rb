# begin/endを省略するrescue演算子
require 'date'

def to_date(string)
  Date.parse(string) rescue nil
end

p to_date('2017-01-11')
p to_date('abcde')

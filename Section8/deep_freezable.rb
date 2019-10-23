module DeepFreezable
  def deep_freeze(array_or_hash)

    #配列の要素をfreeze
    array_or_hash.each do |element|
      element.freeze
    end
    
    # 配列自身をfreeze(かつ、これがメソッドの戻り値になる)
    array_or_hash.freeze
  end
end

class MyHash
  attr_accessor(:custom_hash)

  def initialize ()
    @custom_hash = {}
  end

  def my_store(key, value)
    @custom_hash[key] = value
  end

  def my_fetch(key)
    fetch_hash = @custom_hash[key]
  end

  def has_my_value?(value)
    if value != nil
      true
    else
      false
    end
  end

  def has_my_key?(key)
    if key != nil
      true
    else
      false
    end
  end

end

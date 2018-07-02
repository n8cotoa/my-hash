class MyHash
  attr_accessor(:custom_keys, :custom_values)

  def initialize
    @custom_keys = []
    @custom_values = []
    @custom_hash = []
    # @custom_hash = @custom_keys.zip(@custom_values)
  end

  def my_store(key, value)
    @custom_keys.push(key)
    @custom_values.push(value)
    value_index = 0
    # binding.pry
    @custom_keys.each do |key|
      if @custom_hash.flatten.include?(key)
        value_index += 1
      else
        @custom_hash.push([key, @custom_values[value_index]])
        value_index += 1
      end
    end
  end

  def my_fetch(input)
    input_index = @custom_hash.flatten.index(input)
    if input_index % 2 == 0
      @custom_hash.flatten.fetch(input_index + 1)
    else
      @custom_hash.flatten.fetch(input_index - 1)
    end
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

  def my_length
    length = @custom_hash.length
  end

  def my_merge(hash)
    merged = @custom_hash | hash
    merged
  end

end

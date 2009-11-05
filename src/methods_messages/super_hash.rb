class SuperHash < Hash
  def method_missing(sym, *args, &block)
    if has_key?(sym)
      self[sym]
    else
      super
    end
  end
  def respond_to?(sym)
    has_key?(sym) || super
  end
end

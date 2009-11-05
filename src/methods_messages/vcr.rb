class VCR
  def initialize
    @messages = []
  end

  def method_missing(sym, *args, &block)
    @messages << [sym, args, block]
  end

  def playback(obj)
    @messages.each do |sym, args, block|
      obj.send(sym, *args, &block)
    end
  end
end

vcr = VCR.new
vcr.upcase!
vcr.sub!(/World/i, 'Universe')

s = "Hello, World"
vcr.playback(s)

puts s

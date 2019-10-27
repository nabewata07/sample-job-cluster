require 'optparse'

class SampleBatch
  def initialize
    @opts = {}
    opt = OptionParser.new
    opt.on('--limit limit') do |l|
      @opts['limit'] = l.to_i
    end
    opt.on('--offset offset') do |o|
      @opts['offset'] = o.to_i
    end
    opt.parse(ARGV)
  end

  def main
    limit = @opts['limit']
    offset = @opts['offset']
    num = offset
    loop do
      puts num
      num += 1
      break if num == (offset + limit)
      sleep 1
    end
  end
end


obj = SampleBatch.new
obj.main

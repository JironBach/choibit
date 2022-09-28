#!/usr/local/bin/ruby
#!/usr/bin/env ruby

def power(x, y)
  if y > 1
    return x * power(x, y-1)
  else
    return x
  end
end

@var = ARGV
if @var.length < 2
  puts '基数と乗数を数値で指定してください'
  exit
end
arg0 = @var[0].to_i
arg1 = @var[1].to_i

puts power(arg0, arg1)

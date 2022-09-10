#!/usr/bin/env ruby
#!/usr/local/bin/ruby

def condition (var)
  if (0 == var)
    puts '引数0は無効です'
    exit
  end
  @divflag = false
  if (var % 3) == 0
    puts '3で割り切れる'
    @divflag = true
  end
  if (var % 7) == 0
    puts '7で割り切れる'
    @divflag = true
  end
  puts '3でも7でも割り切れない' unless @divflag
end

@var = ARGV[0]
puts '引数を数値で指定してください' if @var.nil?
condition(@var.to_i)


#!/usr/bin/env ruby
#!/usr/local/bin/ruby

puts ("整数の演算");
puts (2 - 7);
puts (2 * 7);
puts (2 / 7);
puts ("-------");

puts ("少数の演算");
puts (2.0 + 7);
puts (2.0 - 7);
puts (2.0 * 7);
puts (2.0 / 7);
puts ("-------");

puts ("余りの演算");
puts (2 % 7);
puts (2.0 % 7);
puts ("-------");

puts ("複素数の演算")
ci2 = Complex(2, 2)
ci7 = Complex(-7, -7)
puts (ci2 + ci7)
puts (ci2 - ci7)
puts (ci2 * ci7)
puts (ci2 / ci7)
puts ("-------");
cf2 = Complex(2.0, 2.0)
cf7 = Complex(-7.0, -7.0)
puts (cf2 + cf7)
puts (cf2 - cf7)
puts (cf2 * cf7)
puts (cf2 / cf7)
puts ("-------");


#!/usr/bin/ruby
require 'digest/md5'
?a.upto('zzzzzz') { |string| 
  md5=Digest::MD5.hexdigest(string)
  puts "Trying: #{string}"
  if md5 == "d8578edf8458ce06fbc5bb76a58c5ca4"
    puts "\nThe string is #{string}\n"
    exit
  end
}

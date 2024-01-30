#!/usr/bin/env ruby

require 'oniguruma'

def match_school(arg)
 regex = Oniguruma::ORegexp.new('School')
 unless arg =~ regex
    puts "Argument does not match 'School'"
    exit
 end
end

match_school(ARGV[0])

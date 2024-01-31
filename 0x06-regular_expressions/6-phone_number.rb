#!/usr/bin/env ruby

def match_pattern(arg)
 regex = /\d{10}/
 matches = arg.scan(regex)
 puts matches.join
end

match_pattern(ARGV[0])

#!/usr/bin/env ruby

def match_pattern(arg)
 regex = /hb{2,}t{2,}n/
 matches = arg.scan(regex)
 puts matches.join
end

match_pattern(ARGV[0])

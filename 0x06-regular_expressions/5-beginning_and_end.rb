#!/usr/bin/env ruby

def match_pattern(arg)
 regex = /h.n/
 matches = arg.scan(regex)
 puts matches.join
end

match_pattern(ARGV[0])

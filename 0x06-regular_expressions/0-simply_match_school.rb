#!/usr/bin/env ruby

def match_school(arg)
 regex = /School/
 matches = arg.scan(regex)
 puts matches.join
end

match_school(ARGV[0])

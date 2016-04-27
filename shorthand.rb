#!/usr/bin/env ruby

require "micromidi"

# Demonstrates MicroMIDI shorthand

i = UniMIDI::Output.use(:first)

M(i, o) do

  rc :n do |m|
    m.note += 12
    out(m)
  end

  tu :n

  l { w }

end
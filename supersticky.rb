#!/usr/bin/env ruby

require "micromidi"

# Demonstrates super-sticky mode

output = UniMIDI::Output.use(:first)

MIDI.using(@o) do

  super_sticky

  channel 1

  note "C4"
  off

  octave 5
  velocity 60

  note "E", :channel => 2
  off

  note "C3"
  off

end
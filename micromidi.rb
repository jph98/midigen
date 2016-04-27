#!/usr/bin/env ruby

# Micromidi
require "micromidi"

class MidiGenerator 

	DEBUG = false

	def initialize()
	end

	def generate_drums(channel_range, interval_range, num_notes)

		@output = UniMIDI::Output.use(:first)

		MIDI.using(@output) do

			num_notes.times do

				channel_num = Random.new().rand(channel_range)
				interval = Random.new().rand(interval_range)
				channel channel_num
				m = play "C", interval
				if DEBUG
					puts "#{m.note}"
				end
			end
			
		end
	end

end

mg = MidiGenerator.new()
mg.generate_drums(1..10, 0.01..0.3, 400)
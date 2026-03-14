require 'irb/completion'
ARGV.concat [ "--readline", "--prompt-mode", "simple" ]

begin
  require "pry"
  Pry.start
  exit
rescue LoadError => e
  warn "=> Unable to load pry"
end

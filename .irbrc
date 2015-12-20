# -*- Mode: Ruby; tab-width: 2; indent-tabs-mode: nil; c-basic-offset: 2 -*-

begin
  require "pry"
  Pry.start
  exit
rescue LoadError
  warn "=> Unable to load pry"
end

require 'rubygems'
require 'irb/completion'
require 'irb/ext/save-history'

# Encoding
IRB.conf[:ENCODING] = "UTF-8:UTF-8"

# Save History between irb sessions
IRB.conf[:SAVE_HISTORY] = 5000
IRB.conf[:HISTORY_FILE] = "#{ENV['HOME']}/.irb_history"

# Load the readline module.
IRB.conf[:USE_READLINE] = true

# Remove the annoying irb(main):001:0 and replace with ruby version
IRB.conf[:PROMPT][:MY_PROMPT] = { # name of prompt mode
    :PROMPT_I => "#{`ruby -v`.split(" ")[1]}> ",             # normal prompt
    :PROMPT_S => "#{`ruby -v`.split(" ")[1]}> ",             # prompt for continuing strings
    :PROMPT_C => "#{`ruby -v`.split(" ")[1]}> ",             # prompt for continuing statement
    :PROMPT_N => "#{`ruby -v`.split(" ")[1]}# ",
    :RETURN => "=> %s\n"        # format to return value
}
IRB.conf[:PROMPT_MODE] = :MY_PROMPT
IRB.conf[:AUTO_INDENT] = true

def clear
  system('clear'); nil
end

load File.expand_path("~/.reblrc")

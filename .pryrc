Pry.config.history_file = ".rebl_history"
Pry.config.prompt = Pry::Prompt.new(
  "custom",
  "my custom prompt",
  [
    proc { |obj, nest_level, _| "#{RUBY_VERSION} (#{obj}):#{nest_level}> " },
    proc { |obj, nest_level, _| "#{RUBY_VERSION} (#{obj}):#{nest_level}*> " }
  ]
)


load File.expand_path("~/.reblrc")

class Rivendell::Tools
  # Runs all the command-line stuff, gets passed global options, the subcommand and the subcommand's options
  def self.run(opts, cmd, cmd_opts)
    puts opts
    puts cmd
    puts cmd_opts
    if cmd == 'log'
      self.log(cmd_opts, opts)
    end
  end
  # Handles the log subcommand
  def self.log(opts, global_opts)
    log_name = opts[:name]
    if opts[:action] == 'create'
      log = Rivendell::Log.new(:NAME=>opts[:name], :ORIGIN_USER=>global_opts[:user], :ORIGIN_DATETIME=>Time.now, :SERVICE=>opts[:service], :LINK_DATETIME=>Time.now, :MODIFIED_DATETIME=>Time.now)
      if log.save
        puts "Log created: "+log.inspect
      else
        puts "Log not saved: "+log.errors.map{|e|e.to_s}.join(", ")
      end
    end
  end
end

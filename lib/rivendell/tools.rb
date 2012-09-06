class Rivendell::Tools
  # Runs all the command-line stuff, gets passed global options, the subcommand and the subcommand's options
  def self.run(opts, cmd, cmd_opts)
    send cmd, cmd_opts, opts
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

  def self.console(opts, global_opts)
    # include Rivendell
    require 'irb'

    ARGV.clear
    IRB.start
  end

  def self.script(opts, global_opts)
    require 'logger'
    logger = Logger.new($stdout)
    arguments = opts[:arguments]
    eval File.read(opts[:script]), nil, opts[:script], 0
  end

end

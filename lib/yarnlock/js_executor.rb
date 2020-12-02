# frozen_string_literal: true

module Yarnlock
  module JsExecutor
    def self.execute(script, stdin)
      command = Mixlib::ShellOut.new("node #{script_path(script)}", cwd: Yarnlock.config.application_root)
      command.run_command
      command.stdout
    end

    def self.script_path(script)
      "#{Yarnlock.config.node_path} #{Yarnlock.config.script_dir}/#{script}"
    end
  end
end

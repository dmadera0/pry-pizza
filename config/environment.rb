require 'bundler/setup'
Bundler.require

require_all 'lib'
require "tty-prompt"


ActiveRecord::Base.logger = nil
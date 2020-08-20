require 'bundler/setup'
Bundler.require

require 'pry'

require_all 'lib'
require "tty-prompt"


ActiveRecord::Base.logger = nil
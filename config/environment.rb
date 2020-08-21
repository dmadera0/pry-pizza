require 'bundler/setup'
Bundler.require

require 'pry'

require_all 'lib'
require 'tty-prompt'
require 'tty-font'
require 'tty-spinner'
require 'tty-box'



ActiveRecord::Base.logger = nil
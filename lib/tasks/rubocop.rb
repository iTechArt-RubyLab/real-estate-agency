require 'rubocop'
require 'rubocop-rails'
require 'rubocop-rspec'
require 'rubocop-performance'
require 'rubocop-rake'

RuboCop::RakeTask.new do |task|
    task.requires << 'rubocop-rails' << 'rubocop-rspec' << 'rubocop-performance'
end
  
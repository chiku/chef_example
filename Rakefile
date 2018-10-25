require 'rubocop/rake_task'
require 'foodcritic'
require 'kitchen/rake_tasks'

RuboCop::RakeTask.new
FoodCritic::Rake::LintTask.new
Kitchen::RakeTasks.new

task default: %i[rubocop foodcritic kitchen:all]

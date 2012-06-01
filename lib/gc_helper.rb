require "gc_helper/version"
require "action_view"

module GcHelper
  
end

Dir[File.expand_path(File.join(File.dirname(__FILE__),'gc_helper','**','*.rb'))].each {|f| require f}
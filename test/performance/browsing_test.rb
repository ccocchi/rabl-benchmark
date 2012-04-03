require 'test_helper'
require 'rails/performance_test_help'

class BrowsingTest < ActionDispatch::PerformanceTest
  self.use_transactional_fixtures = true
  # Refer to the documentation for all available options
  self.profile_options = { :runs => 5, :metrics => [:process_time, :memory, :objects], :formats => [:flat] }
  #                          :output => 'tmp/performance', :formats => [:flat] }
  
  def test_object_without_extends
    get '/users/1', :format => :json
  end
  
  def test_object_with_extends
    get '/users/1/with_extend', :format => :json
  end

  # 30 objects
  def test_collection_with_extends
    get '/posts', :format => :json
  end
  
  # 30 objects
  def test_collection_without_extends
    get '/posts/without_extend', :format => :json
  end
  
  def test_deep_nesting
    get '/users/1/deep_nesting', :format => :json
  end
  
  def test_partial
    get '/users/1/with_partial', :format => :json
  end
end

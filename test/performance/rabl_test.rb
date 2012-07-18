require 'test_helper'
require 'rails/performance_test_help'

class RablTest < ActionDispatch::PerformanceTest
  self.use_transactional_fixtures = true
  self.profile_options = { runs: 5, metrics: [:process_time, :memory, :objects], formats: [:flat], output: 'tmp/rabl' }
  
  def test_object_without_extends
    get '/users/1', format: :json, old: true
  end
  
  def test_object_with_extends
    get '/users/1/with_extend', format: :json, old: true
  end

  # 30 objects
  def test_collection_with_extends
    get '/posts', format: :json, old: true
  end
  
  # 30 objects
  def test_collection_without_extends
    get '/posts/without_extend', format: :json, old: true
  end
  
  def test_deep_nesting
    get '/users/1/deep_nesting', format: :json, old: true
  end
  
  def test_partial
    get '/users/1/with_partial', format: :json, old: true
  end
end

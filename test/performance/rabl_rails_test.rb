require 'test_helper'
require 'rails/performance_test_help'

class RablRailsTest < ActionDispatch::PerformanceTest
  self.use_transactional_tests = true
  self.profile_options = { runs: 100, metrics: [:process_time, :memory, :objects], formats: [:flat], output: 'tmp/rabl_rails' }

  def test_object_without_extends
    get '/users/1', params: { format: :json }
  end

  def test_object_with_extends
    get '/users/1/with_extend', params: { format: :json }
  end

  # 30 objects
  def test_collection_with_extends
    get '/posts', params: { format: :json }
  end

  # 30 objects
  def test_collection_without_extends
    get '/posts/without_extend', params: { format: :json }
  end

  def test_deep_nesting
    get '/users/1/deep_nesting', params: { format: :json }
  end

  def test_partial
    get '/users/1/with_partial', params: { format: :json }
  end
end

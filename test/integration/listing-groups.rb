require 'test_helper'
 
class ListingGroupsTest < ActionDispatch::IntegrationTest
  setup {host! 'api.forsker.io'}

  test 'returns list of all groups' do
	get '/groups'
	assert_equal 200, response.status
	refute_empty response.body	
  end
end
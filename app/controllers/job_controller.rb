class JobController < ApplicationController
	require 'google/api_client'
	require 'google/api_client/client_secrets'
	require 'json'
	require 'googleauth'

	def search_position

		scope = 'https://www.googleapis.com/auth/jobs'

		path = File.join Rails.root, 'config', 'JobMap.json'
		#file = File.open(path, "r")
		authorizer = Google::Auth::ServiceAccountCredentials.make_creds(
		  json_key_io: File.open(path),
		  scope: scope)
		  
		token = authorizer.fetch_access_token!

		# job = Google::Apis::JobsV2::JobService.new
		# job.authorization = 

		# client = Google::APIClient.new
		# drive = client.discovered_api('drive', 'v2')

	end
end

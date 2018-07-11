class JobController < ApplicationController
	require 'lib/google/apis/jobs_v2'

	def search_position
		job = Google::Apis::JobsV2::JobService.new
	end
end

class TeamController < ApplicationController

	get '/' do
		erb :'splash/teaser'
	end

	post "/team-login/:slug" do
		member = Member.find_by(slug: params[:slug])
		Team.all.each do |team|
		  if params[:team] == team.name
		  	member.team_id = team.id 
		  end
		end
		if params[:team] == "new"
			redirect "/team/new"
		end
		if params[:team] == nil
			redirect "/member/#{member.slug}"
		end
		redirect "/team/#{member.team_id}"
	end

	get "/team/:slug" do
		"successful team signup"
	end

	get "/team/new" do
		"you've reached the new team page"
	end




end




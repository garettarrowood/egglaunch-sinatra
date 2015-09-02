class TeamController < ApplicationController

	get '/' do
		erb :'splash/teaser'
	end

	post "/team-login/:slug" do
		member = Member.find_by(slug: params[:slug])
		Team.all.each do |team|
		  if params[:team] == team.name
		  	member.team_id = team.id
		  	session[:user] = member.id
		  	member.save
		  end
		end
		if params[:team] == "new"
			redirect "/team/new/#{member.slug}"
		end
		if params[:team] == nil
			redirect "/member/#{member.slug}"
		end
		redirect "/team/#{member.team_id}"
	end

	get "/team/new/:slug" do
		@member = Member.find_by(slug: params[:slug])
		erb :'team/new'
	end

	get "/team/:id" do
		@team = Team.find_by(id: params[:id])
		@member = Member.find_by(id: session[:user])
		erb :'team/team_page'
	end

#sign out link with route that makes singular session key = nil


end




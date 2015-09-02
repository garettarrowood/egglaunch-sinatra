class RuleController < ApplicationController
	
	get "/rules/new" do
		erb :'rules/new'
	end

	post "/rules/new" do
		member = Member.find_by(id: session[:user])
		new_rule = Rule.create(content: params[:rule])
		redirect "/team/#{member.team_id}"
	end

	get "/rules/vote/:id" do
		@rule = Rule.find_by(id: params[:id])
		erb :'rules/vote'
	end

	post "/vote/yes/:id" do
		@member = Member.find_by(id: session[:user])
		@team = Team.find_by(id: @member.team_id)
		@rule = Rule.find_by(id: params[:id])
		@rule_vote = Rule_vote.find_or_create_by(rule_id: params[:id], team_id: @team.id)
		@rule_vote.update(yes?: true)
		erb :'rules/confirm'
	end

	post "/vote/no/:id" do
		@member = Member.find_by(id: session[:user])
		@team = Team.find_by(id: @member.team_id)
		@rule = Rule.find_by(id: params[:id])
		@rule_vote = Rule_vote.find_or_create_by(rule_id: params[:id], team_id: @team.id)
		@rule_vote.update(yes?: false)
		erb :'rules/confirm'
	end

end
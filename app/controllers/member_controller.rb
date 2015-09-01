class MemberController < ApplicationController

	get '/member' do
		erb :'member/login'
	end

	get '/member/new' do
		erb :'member/new'
	end

	post '/member/new' do
		member = Member.create(name: params[:username], email: params[:email])
		session[:members] = {}
		session[:members][params[:username]] = params[:password]
		redirect "/member/#{member.to_slug}"
	end

	post '/member' do
		user = Member.find_by(name: params[:username])
		if user == nil
			redirect '/something that says no such user'
		end 
	end

	get '/member/:slug' do
		@member = Member.find_by(slug: params[:slug])
		erb :'member/team_choice'
	end

end
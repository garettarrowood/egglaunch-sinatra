class MemberController < ApplicationController

	get '/member' do
		erb :'member/login'
	end

	get '/member/new' do
		if session[:user] == nil
		  erb :'member/new'
		else
			erb :'member/logout-first'
		end
	end

	get '/member/reset' do
		reset_session
	end

	post '/member/new' do
		member = Member.create(name: params[:username], email: params[:email], password: params[:password])
		redirect "/member/#{member.to_slug}"
	end

	post '/member' do
		user = Member.find_by(name: params[:username])
		if user == nil
			redirect '/member/tryagain'
		else
			if params[:password] == user.password
				if user.team_id != nil
					session[:user] = user.id
				  redirect "/team/#{user.team_id}"
				else
					redirect "/member/#{user.slug}"
				end
			else
				redirect '/member/tryagain'
			end
		end
	end

	get '/member/tryagain' do
		erb :'member/tryagain'
	end

	get '/member/:slug' do
		@member = Member.find_by(slug: params[:slug])
		erb :'member/team_choice'
	end

end
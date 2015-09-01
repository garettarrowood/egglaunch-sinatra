class TeamController < ApplicationController

	get '/' do
		erb :'splash/teaser'
	end

end
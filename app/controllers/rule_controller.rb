class RuleController < ApplicationController
	
	get "/rules/vote/:id" do
		@rule = Rule.find_by(id: params[:id])
		erb :'rules/vote'
	end

end
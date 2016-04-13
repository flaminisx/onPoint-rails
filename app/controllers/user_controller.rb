class UserController < ApplicationController
  def show
  	respond_to do |format|
  		format.json { 
  			render json: {
  					id:1, 
  					name: "you", 
  					surname: 'surname',
					experience: '20',
					role: 'user',
					quests:[
								{
									id:1,
									name: 'string',
									description: 'text',
									price: 'string',
									status: 0,
								},
								{
									id:2,
									name: 'string',
									description: 'text',
									price: 'string',
									status: 0,
								}
							]
  				}
  		}
  		format.html{ render :show}
  	end
  end
end

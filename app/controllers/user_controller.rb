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
  def all
  	respond_to do |format|
  		format.json { 
  			render json: {
						id:1,
						name: 'string',
						surname: 'string',
						experience: 20,
						role: 'string',
						quests:[
								{
									id:1,
									name: 'string',
									description: 'text',
									price: '20 гривень',
									logo: 'images/1.jpg',
									checkpoint:{
										id: 1,
										desc:'string',
										tasks:[
												{
													id:1,
													type: 'text',
													desc: 'string',
													show: true,
													text: 'how much',
													answers:[
														{
															id:1,
															answer:'nothing',
															next_cp:2
														}
													]
												}
										]
									}
								}
							]
					}
  		}
  		format.html{ redirect_to '/404.html' }
  	end
  end
end

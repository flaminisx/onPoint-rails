class UserController < ApplicationController
	before_action :getUser, only:[:show]
  def getUser
  	@user = (params[:id])? User.find(params[:id]): User.find(session[:user_id]) 
  end
  def show
  	@quests = @user.quests
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
  def register

  end
  def create
  	user = User.new(
	  					name: params['name'],
	  					surname: params['surname'],
	  					email: params['email'],
	  					password: params['password'], 
	  					password_confirmation: params['repeat']
  					)
  	respond_to do |format|
  		if user.save
  			flash[:notice] = 'Successfully registered'
  			session[:user_id] = user.id
  			format.html{ redirect_to user}
  		else
  			flash[:notice] = 'Error while registration'
  			format.html{ redirect_to action: "register"}
  		end
  	end
  end
  def login
  end
  def auth
  	user = User.find_by_email(params[:email]).try(:authenticate, params[:password])
  	respond_to do |format|
  		if user
  			session[:user_id] = user.id
  			format.html{ redirect_to user}
  		else
  			flash[:notice] = 'Invalid email/password'
  			format.html{ redirect_to action: "login"}
  		end
  	end
  end
end

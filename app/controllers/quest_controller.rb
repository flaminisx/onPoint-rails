class QuestController < ApplicationController
  def index
    @quests = Quest.all
    respond_to do |format|
      format.json { 
        render json: [    
                      {
                        id:1,
                        name: 'string',
                        description: 'text',
                        price: 'string',
                        downloads: 123,
                        logo: 'images/1.jpg'
                      }
                    ]
      }
      format.html{ render :index}
    end
  end

  def show
    @quest = Quest.find(params[:id])
    if(@current_user.hasQuest?(@quest.id)) then
      @checkpoint = @current_user.user_quests.where(quest_id: @quest.id).first.checkpoint
    end
    respond_to do |format|
      format.json { 
        render json: {
                    id:params[:id],
                    name: 'string',
                    description: 'text',
                    price: 'string',
                    status: 0,
                    downloads: 20000,
                    logo: 'img'
                  }
      }
      format.html{ render :show, layout:"account"}
    end
  end

  def edit
    @quest = Quest.find(params[:id])
    @checkpoints = @quest.checkpoints.map do |e|
      e.attributes.merge(tasks:e.pointTasks.order(:order))
    end
    render :edit, layout:"account"
  end

  def create
  end

  def update
  end

  def destroy
  end

  def search
    respond_to do |format|
      format.json { 
        render json: [    
                      {
                        id:1,
                        name: 'string',
                        description: 'text',
                        price: 'string',
                        downloads: 123,
                        logo: 'images/1.jpg'
                      }
                    ]
      }
      format.html{ render :index}
    end
  end

  def agree
    respond_to do |format|
      format.json { 
        render json: {
                    id:params[:id],
                    name: 'string',
                    description: 'text',
                    price: 'string',
                    status: 0,
                    downloads: 20000,
                    logo: 'img',
                    checkpoint:{
                      id:1,
                      desc:'string',
                      tasks:[
                          {
                            id: 1,
                            type: 'marker',
                            order: 1,
                            desc: 'string',
                            show: true,
                            lon:  50.464213,
                            lat: 30.5058624
                          }
                      ]
                    }
                  }
      }
      format.html{ render :show}
    end
  end
end

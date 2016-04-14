class QuestController < ApplicationController
  def index
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
      format.html{ render :show}
    end
  end

  def edit
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

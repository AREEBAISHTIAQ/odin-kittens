class KittenController < ApplicationController
before_action :find_kitten, except: [:new, :index, :create]

  def index
    @kittens = Kitten.all
    respond_to do |format|
      format.html
      format.json { render :json => @kittens }
    end
  end

  def new
    @kitten= Kitten.new
  end

  def show
    respond_to do |format|
      format.html
      format.json { render :json => @kitten }
    end
  end

  def edit
  end

  def create
    @kitten = Kitten.new(kitten_params)
    if @kitten.save
      flash[:notice] = "Successfully created"
      redirect_to @kitten
    else
      render 'new'
    end
  end

  def update
    if @kitten.update_attributes(lizard_params)
      flash[:notice] = "Kitten updated"
      redirect_to @kitten
    else
      render 'edit'
    end
  end

  def destroy
  if flash[:notice] = 'Kitten deleted'
  redirect_to '/'
  end
  end

  private

  def kitten_params
    params.require(:kitten).permit(:name, :age, :cuteness,
                                   :softness)
  end

  def find_kitten
  @kitten = Kitten.find(params[:id])
  end
end

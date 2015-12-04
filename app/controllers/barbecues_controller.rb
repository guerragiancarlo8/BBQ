class BarbecuesController < ApplicationController
  def index
    @barbecues = Barbecue.order(:date)
  end



  def show
    # Don't add any code to this show action.
    # Implement your barbecue API in another action.
  end

  def join_bbq
    render json: current_user
  end

  def send_json
    bbq = Barbecue.find_by(id: params[:id])
    render json: {title: bbq[:title], date: bbq[:date], venue: bbq[:venue]}
  end

  def new
    @bbq = Barbecue.new
  end

  def create
    bbq_params = params.require(:barbecue).permit(:title, :venue, :date)
    @bbq = Barbecue.new(bbq_params)

    unless @bbq.save
      render(:new)
    else
      redirect_to(barbecues_path)
    end
  end
end

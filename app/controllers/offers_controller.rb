
class OffersController < ApplicationController
  def index
    @offers = Offer.where(:user_id => current_user)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @offers }
    end
  end

  def search
    @offers = Offer.search(params[:search])
    respond_to do |format|
      format.html # search.html.erb
      format.json { render json: @offers }
    end
  end

  def show
    @offer = Offer.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @offer }
    end
  end

  def new
    @offer = Offer.new
    @offer.offer_images.build
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @offer }
    end
  end

  def edit
    @offer = Offer.find(params[:id])
  end

  def create
    @offer = Offer.new(params[:offer])
    @offer.offer_images.build
    @offer.user_id = current_user.id
    respond_to do |format|
      if @offer.save
        format.html { redirect_to @offer, notice: 'Offer was successfully created.' }
        format.json { render json: @offer, status: :created, location: @offer }
      else
        format.html { render action: "new" }
        format.json { render json: @offer.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @offer = Offer.find(params[:id])

    respond_to do |format|
      if @offer.update_attributes(params[:offer])
        format.html { redirect_to @offer, notice: 'Offer was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @offer.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @offer = Offer.find(params[:id])
    @offer.destroy

    respond_to do |format|
      format.html { redirect_to offers_url }
      format.json { head :no_content }
    end
  end

  def pagamento
    
  end

  def gerar_boleto
  end

  def pagamento_cartao
  end

  def pagamento_paypal
  end
end

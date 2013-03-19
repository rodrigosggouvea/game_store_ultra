# encoding:UTF-8
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
    tipo_pagamento = case params[:forma]
    when "Boleto" then PagamentoBoleto.new
    when "Cartão" then PagamentoCartao.new
    when "PayPal" then PagamentoPaypal.new
    else nil
    end
    pagamento = Pagamento.new(tipo_pagamento)
    action = pagamento.pagar
    redirect_to :action => action, :params => params
  end

  def gerar_boleto
    render :layout => false
  end

  def pagamento_cartao
    @bandeiras = ["selecionar bandeira:", "VISA", "MASTERCARD","AMERICAN EXPRESS"]
  end

  def pagamento_paypal
    render "finalizar"
  end

  def finalizar
  end
end

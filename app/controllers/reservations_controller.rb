class ReservationsController < ApplicationController
  def index
    @reservations = Reservation.all
  end

  def show
    @reservation = Reservation.find(params[:id])
  end

  def new
    @reservation = Reservation.new
  end

  def create
    @reservation = Reservation.new
    @reservation.reserve_start = params[:reserve_start]
    @reservation.reserve_end = params[:reserve_end]
    @reservation.username = params[:username]
    @reservation.item_id = params[:item_id]
    @reservation.item_name = params[:item_name]

    if @reservation.save
      redirect_to "/reservations", :notice => "Reservation created successfully."
    else
      render 'new'
    end
  end

  def edit
    @reservation = Reservation.find(params[:id])
  end

  def availability
    @reservation = Reservation.new
    @reservation.reserve_start = params[:reserve_start]
    @reservation.reserve_end = params[:reserve_end]
    @reservation.item_id = params[:item_id]
  end

  def update
    @reservation = Reservation.find(params[:id])

    @reservation.reserve_start = params[:reserve_start]
    @reservation.reserve_end = params[:reserve_end]
    @reservation.username = params[:username]
    @reservation.item_id = params[:item_id]
    @reservation.item_name = params[:item_name]

    if @reservation.save
      redirect_to "/reservations", :notice => "Reservation updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @reservation = Reservation.find(params[:id])

    @reservation.destroy

    redirect_to "/reservations", :notice => "Reservation deleted."
  end
end

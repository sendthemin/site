class PermanentGuestsController < ApplicationController
  # GET /permanent_guests
  # GET /permanent_guests.json
  def index
    @permanent_guests = PermanentGuest.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @permanent_guests }
    end
  end

  # GET /permanent_guests/1
  # GET /permanent_guests/1.json
  def show
    @permanent_guest = PermanentGuest.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @permanent_guest }
    end
  end

  # GET /permanent_guests/new
  # GET /permanent_guests/new.json
  def new
    @permanent_guest = PermanentGuest.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @permanent_guest }
    end
  end

  # GET /permanent_guests/1/edit
  def edit
    @permanent_guest = PermanentGuest.find(params[:id])
  end

  # POST /permanent_guests
  # POST /permanent_guests.json
  def create
    @permanent_guest = PermanentGuest.new(params[:permanent_guest])

    respond_to do |format|
      if @permanent_guest.save
        format.html { redirect_to @permanent_guest, notice: 'Permanent guest was successfully created.' }
        format.json { render json: @permanent_guest, status: :created, location: @permanent_guest }
      else
        format.html { render action: "new" }
        format.json { render json: @permanent_guest.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /permanent_guests/1
  # PUT /permanent_guests/1.json
  def update
    @permanent_guest = PermanentGuest.find(params[:id])

    respond_to do |format|
      if @permanent_guest.update_attributes(params[:permanent_guest])
        format.html { redirect_to @permanent_guest, notice: 'Permanent guest was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @permanent_guest.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /permanent_guests/1
  # DELETE /permanent_guests/1.json
  def destroy
    @permanent_guest = PermanentGuest.find(params[:id])
    @permanent_guest.destroy

    respond_to do |format|
      format.html { redirect_to permanent_guests_url }
      format.json { head :no_content }
    end
  end
end

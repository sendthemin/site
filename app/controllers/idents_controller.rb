class IdentsController < ApplicationController
  # GET /idents
  # GET /idents.json
  def index
    @idents = Ident.all
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @idents }
    end
  end

  def select
    session[:selected] = Ident.find(params[:id])

    @fucker = Ident.find(params[:id])
    @idents = Ident.all
    @communities = Community.all
    @customers = Customer.all
    @myidents = current_user.idents.all
    render 'pages/home'
  end

  # GET /idents/1
  # GET /idents/1.json
  def show
    @ident = Ident.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @ident }
    end
  end

  # GET /idents/new
  # GET /idents/new.json
  def new
    @ident = Ident.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @ident }
    end
  end

  # GET /idents/1/edit
  def edit
    @ident = Ident.find(params[:id])
  end

  # POST /idents
  # POST /idents.json
  def create
    @ident = Ident.new(params[:ident])

    respond_to do |format|
      if @ident.save
        format.html { redirect_to @ident, notice: 'Ident was successfully created.' }
        format.json { render json: @ident, status: :created, location: @ident }
      else
        format.html { render action: "new" }
        format.json { render json: @ident.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /idents/1
  # PUT /idents/1.json
  def update
    @ident = Ident.find(params[:id])

    respond_to do |format|
      if @ident.update_attributes(params[:ident])
        format.html { redirect_to @ident, notice: 'Ident was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @ident.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /idents/1
  # DELETE /idents/1.json
  def destroy
    @ident = Ident.find(params[:id])
    @ident.destroy

    respond_to do |format|
      format.html { redirect_to idents_url }
      format.json { head :no_content }
    end
  end
end

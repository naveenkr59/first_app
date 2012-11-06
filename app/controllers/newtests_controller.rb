class NewtestsController < ApplicationController
  # GET /newtests
  # GET /newtests.json
  def index
    @newtests = Newtest.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @newtests }
    end
  end

  # GET /newtests/1
  # GET /newtests/1.json
  def show
    @newtest = Newtest.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @newtest }
    end
  end

  # GET /newtests/new
  # GET /newtests/new.json
  def new
    @newtest = Newtest.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @newtest }
    end
  end

  # GET /newtests/1/edit
  def edit
    @newtest = Newtest.find(params[:id])
  end

  # POST /newtests
  # POST /newtests.json
  def create
    @newtest = Newtest.new(params[:newtest])

    respond_to do |format|
      if @newtest.save
        format.html { redirect_to @newtest, :notice => 'Newtest was successfully created.' }
        format.json { render :json => @newtest, :status => :created, :location => @newtest }
      else
        format.html { render :action => "new" }
        format.json { render :json => @newtest.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /newtests/1
  # PUT /newtests/1.json
  def update
    @newtest = Newtest.find(params[:id])

    respond_to do |format|
      if @newtest.update_attributes(params[:newtest])
        format.html { redirect_to @newtest, :notice => 'Newtest was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @newtest.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /newtests/1
  # DELETE /newtests/1.json
  def destroy
    @newtest = Newtest.find(params[:id])
    @newtest.destroy

    respond_to do |format|
      format.html { redirect_to newtests_url }
      format.json { head :no_content }
    end
  end
end

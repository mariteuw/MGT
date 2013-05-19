class MProfessionelsController < ApplicationController
  # GET /m_professionels
  # GET /m_professionels.xml
  def index
    @m_professionels = MProfessionel.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @m_professionels }
    end
  end

  # GET /m_professionels/1
  # GET /m_professionels/1.xml
  def show
    @m_professionel = MProfessionel.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @m_professionel }
    end
  end

  # GET /m_professionels/new
  # GET /m_professionels/new.xml
  def new
    @m_professionel = MProfessionel.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @m_professionel }
    end
  end

  # GET /m_professionels/1/edit
  def edit
    @m_professionel = MProfessionel.find(params[:id])
  end

  # POST /m_professionels
  # POST /m_professionels.xml
  def create
    @m_professionel = MProfessionel.new(params[:m_professionel])

    respond_to do |format|
      if @m_professionel.save
        format.html { redirect_to(@m_professionel, :notice => 'M professionel was successfully created.') }
        format.xml  { render :xml => @m_professionel, :status => :created, :location => @m_professionel }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @m_professionel.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /m_professionels/1
  # PUT /m_professionels/1.xml
  def update
    @m_professionel = MProfessionel.find(params[:id])

    respond_to do |format|
      if @m_professionel.update_attributes(params[:m_professionel])
        format.html { redirect_to(@m_professionel, :notice => 'M professionel was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @m_professionel.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /m_professionels/1
  # DELETE /m_professionels/1.xml
  def destroy
    @m_professionel = MProfessionel.find(params[:id])
    @m_professionel.destroy

    respond_to do |format|
      format.html { redirect_to(m_professionels_url) }
      format.xml  { head :ok }
    end
  end
end

class MGeneralsController < ApplicationController
  # GET /m_generals
  # GET /m_generals.xml
  def index
    @m_generals = MGeneral.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @m_generals }
    end
  end

  # GET /m_generals/1
  # GET /m_generals/1.xml
  def show
    @m_general = MGeneral.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @m_general }
    end
  end

  # GET /m_generals/new
  # GET /m_generals/new.xml
  def new
    @m_general = MGeneral.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @m_general }
    end
  end

  # GET /m_generals/1/edit
  def edit
    @m_general = MGeneral.find(params[:id])
  end

  # POST /m_generals
  # POST /m_generals.xml
  def create
    @m_general = MGeneral.new(params[:m_general])

    respond_to do |format|
      if @m_general.save
        format.html { redirect_to(@m_general, :notice => 'M general was successfully created.') }
        format.xml  { render :xml => @m_general, :status => :created, :location => @m_general }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @m_general.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /m_generals/1
  # PUT /m_generals/1.xml
  def update
    @m_general = MGeneral.find(params[:id])

    respond_to do |format|
      if @m_general.update_attributes(params[:m_general])
        format.html { redirect_to(@m_general, :notice => 'M general was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @m_general.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /m_generals/1
  # DELETE /m_generals/1.xml
  def destroy
    @m_general = MGeneral.find(params[:id])
    @m_general.destroy

    respond_to do |format|
      format.html { redirect_to(m_generals_url) }
      format.xml  { head :ok }
    end
  end
end

class MCitiesController < ApplicationController
  # GET /m_cities
  # GET /m_cities.xml
  def index
    @m_cities = MCity.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @m_cities }
    end
  end

  # GET /m_cities/1
  # GET /m_cities/1.xml
  def show
    @m_city = MCity.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @m_city }
    end
  end

  # GET /m_cities/new
  # GET /m_cities/new.xml
  def new
    @m_city = MCity.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @m_city }
    end
  end

  # GET /m_cities/1/edit
  def edit
    @m_city = MCity.find(params[:id])
  end

  # POST /m_cities
  # POST /m_cities.xml
  def create
    @m_city = MCity.new(params[:m_city])

    respond_to do |format|
      if @m_city.save
        format.html { redirect_to(@m_city, :notice => 'M city was successfully created.') }
        format.xml  { render :xml => @m_city, :status => :created, :location => @m_city }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @m_city.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /m_cities/1
  # PUT /m_cities/1.xml
  def update
    @m_city = MCity.find(params[:id])

    respond_to do |format|
      if @m_city.update_attributes(params[:m_city])
        format.html { redirect_to(@m_city, :notice => 'M city was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @m_city.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /m_cities/1
  # DELETE /m_cities/1.xml
  def destroy
    @m_city = MCity.find(params[:id])
    @m_city.destroy

    respond_to do |format|
      format.html { redirect_to(m_cities_url) }
      format.xml  { head :ok }
    end
  end
end

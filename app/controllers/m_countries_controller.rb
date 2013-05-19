class MCountriesController < ApplicationController
  # GET /m_countries
  # GET /m_countries.xml
  def index
    @m_countries = MCountry.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @m_countries }
    end
  end

  # GET /m_countries/1
  # GET /m_countries/1.xml
  def show
    @m_country = MCountry.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @m_country }
    end
  end

  # GET /m_countries/new
  # GET /m_countries/new.xml
  def new
    @m_country = MCountry.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @m_country }
    end
  end

  # GET /m_countries/1/edit
  def edit
    @m_country = MCountry.find(params[:id])
  end

  # POST /m_countries
  # POST /m_countries.xml
  def create
    @m_country = MCountry.new(params[:m_country])

    respond_to do |format|
      if @m_country.save
        format.html { redirect_to(@m_country, :notice => 'M country was successfully created.') }
        format.xml  { render :xml => @m_country, :status => :created, :location => @m_country }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @m_country.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /m_countries/1
  # PUT /m_countries/1.xml
  def update
    @m_country = MCountry.find(params[:id])

    respond_to do |format|
      if @m_country.update_attributes(params[:m_country])
        format.html { redirect_to(@m_country, :notice => 'M country was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @m_country.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /m_countries/1
  # DELETE /m_countries/1.xml
  def destroy
    @m_country = MCountry.find(params[:id])
    @m_country.destroy

    respond_to do |format|
      format.html { redirect_to(m_countries_url) }
      format.xml  { head :ok }
    end
  end
end

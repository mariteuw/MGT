class MPreferencesController < ApplicationController
  # GET /m_preferences
  # GET /m_preferences.xml
  def index
    @m_preferences = MPreference.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @m_preferences }
    end
  end

  # GET /m_preferences/1
  # GET /m_preferences/1.xml
  def show
    @m_preference = MPreference.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @m_preference }
    end
  end

  # GET /m_preferences/new
  # GET /m_preferences/new.xml
  def new
    @m_preference = MPreference.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @m_preference }
    end
  end

  # GET /m_preferences/1/edit
  def edit
    @m_preference = MPreference.find(params[:id])
  end

  # POST /m_preferences
  # POST /m_preferences.xml
  def create
    @m_preference = MPreference.new(params[:m_preference])

    respond_to do |format|
      if @m_preference.save
        format.html { redirect_to(@m_preference, :notice => 'M preference was successfully created.') }
        format.xml  { render :xml => @m_preference, :status => :created, :location => @m_preference }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @m_preference.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /m_preferences/1
  # PUT /m_preferences/1.xml
  def update
    @m_preference = MPreference.find(params[:id])

    respond_to do |format|
      if @m_preference.update_attributes(params[:m_preference])
        format.html { redirect_to(@m_preference, :notice => 'M preference was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @m_preference.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /m_preferences/1
  # DELETE /m_preferences/1.xml
  def destroy
    @m_preference = MPreference.find(params[:id])
    @m_preference.destroy

    respond_to do |format|
      format.html { redirect_to(m_preferences_url) }
      format.xml  { head :ok }
    end
  end
end

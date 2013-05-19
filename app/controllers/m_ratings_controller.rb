class MRatingsController < ApplicationController
  # GET /m_ratings
  # GET /m_ratings.xml
  def index
    @m_ratings = MRating.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @m_ratings }
    end
  end

  # GET /m_ratings/1
  # GET /m_ratings/1.xml
  def show
    @m_rating = MRating.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @m_rating }
    end
  end

  # GET /m_ratings/new
  # GET /m_ratings/new.xml
  def new
    @m_rating = MRating.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @m_rating }
    end
  end

  # GET /m_ratings/1/edit
  def edit
    @m_rating = MRating.find(params[:id])
  end

  # POST /m_ratings
  # POST /m_ratings.xml
  def create
    @m_rating = MRating.new(params[:m_rating])

    respond_to do |format|
      if @m_rating.save
        format.html { redirect_to(@m_rating, :notice => 'M rating was successfully created.') }
        format.xml  { render :xml => @m_rating, :status => :created, :location => @m_rating }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @m_rating.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /m_ratings/1
  # PUT /m_ratings/1.xml
  def update
    @m_rating = MRating.find(params[:id])

    respond_to do |format|
      if @m_rating.update_attributes(params[:m_rating])
        format.html { redirect_to(@m_rating, :notice => 'M rating was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @m_rating.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /m_ratings/1
  # DELETE /m_ratings/1.xml
  def destroy
    @m_rating = MRating.find(params[:id])
    @m_rating.destroy

    respond_to do |format|
      format.html { redirect_to(m_ratings_url) }
      format.xml  { head :ok }
    end
  end
end

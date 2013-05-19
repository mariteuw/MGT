class MTipsController < ApplicationController
  # GET /m_tips
  # GET /m_tips.xml
  def index
    @m_tips = MTip.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @m_tips }
    end
  end

  # GET /m_tips/1
  # GET /m_tips/1.xml
  def show
    @m_tip = MTip.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @m_tip }
    end
  end

  # GET /m_tips/new
  # GET /m_tips/new.xml
  def new
    @m_tip = MTip.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @m_tip }
    end
  end

  # GET /m_tips/1/edit
  def edit
    @m_tip = MTip.find(params[:id])
  end

  # POST /m_tips
  # POST /m_tips.xml
  def create
    @m_tip = MTip.new(params[:m_tip])

    respond_to do |format|
      if @m_tip.save
        format.html { redirect_to(@m_tip, :notice => 'M tip was successfully created.') }
        format.xml  { render :xml => @m_tip, :status => :created, :location => @m_tip }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @m_tip.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /m_tips/1
  # PUT /m_tips/1.xml
  def update
    @m_tip = MTip.find(params[:id])

    respond_to do |format|
      if @m_tip.update_attributes(params[:m_tip])
        format.html { redirect_to(@m_tip, :notice => 'M tip was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @m_tip.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /m_tips/1
  # DELETE /m_tips/1.xml
  def destroy
    @m_tip = MTip.find(params[:id])
    @m_tip.destroy

    respond_to do |format|
      format.html { redirect_to(m_tips_url) }
      format.xml  { head :ok }
    end
  end
end

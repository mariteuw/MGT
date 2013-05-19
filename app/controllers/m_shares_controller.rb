class MSharesController < ApplicationController
  # GET /m_shares
  # GET /m_shares.xml
  def index
    @m_shares = MShare.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @m_shares }
    end
  end

  # GET /m_shares/1
  # GET /m_shares/1.xml
  def show
    @m_share = MShare.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @m_share }
    end
  end

  # GET /m_shares/new
  # GET /m_shares/new.xml
  def new
    @m_share = MShare.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @m_share }
    end
  end

  # GET /m_shares/1/edit
  def edit
    @m_share = MShare.find(params[:id])
  end

  # POST /m_shares
  # POST /m_shares.xml
  def create
    @m_share = MShare.new(params[:m_share])

    respond_to do |format|
      if @m_share.save
        format.html { redirect_to(@m_share, :notice => 'M share was successfully created.') }
        format.xml  { render :xml => @m_share, :status => :created, :location => @m_share }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @m_share.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /m_shares/1
  # PUT /m_shares/1.xml
  def update
    @m_share = MShare.find(params[:id])

    respond_to do |format|
      if @m_share.update_attributes(params[:m_share])
        format.html { redirect_to(@m_share, :notice => 'M share was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @m_share.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /m_shares/1
  # DELETE /m_shares/1.xml
  def destroy
    @m_share = MShare.find(params[:id])
    @m_share.destroy

    respond_to do |format|
      format.html { redirect_to(m_shares_url) }
      format.xml  { head :ok }
    end
  end
end

class MFriendsController < ApplicationController
  # GET /m_friends
  # GET /m_friends.xml
  def index
    @m_friends = MFriend.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @m_friends }
    end
  end

  # GET /m_friends/1
  # GET /m_friends/1.xml
  def show
    @m_friend = MFriend.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @m_friend }
    end
  end

  # GET /m_friends/new
  # GET /m_friends/new.xml
  def new
    @m_friend = MFriend.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @m_friend }
    end
  end

  # GET /m_friends/1/edit
  def edit
    @m_friend = MFriend.find(params[:id])
  end

  # POST /m_friends
  # POST /m_friends.xml
  def create
    @m_friend = MFriend.new(params[:m_friend])

    respond_to do |format|
      if @m_friend.save
        format.html { redirect_to(@m_friend, :notice => 'M friend was successfully created.') }
        format.xml  { render :xml => @m_friend, :status => :created, :location => @m_friend }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @m_friend.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /m_friends/1
  # PUT /m_friends/1.xml
  def update
    @m_friend = MFriend.find(params[:id])

    respond_to do |format|
      if @m_friend.update_attributes(params[:m_friend])
        format.html { redirect_to(@m_friend, :notice => 'M friend was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @m_friend.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /m_friends/1
  # DELETE /m_friends/1.xml
  def destroy
    @m_friend = MFriend.find(params[:id])
    @m_friend.destroy

    respond_to do |format|
      format.html { redirect_to(m_friends_url) }
      format.xml  { head :ok }
    end
  end
end

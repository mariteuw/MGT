class MContactsController < ApplicationController
  # GET /m_contacts
  # GET /m_contacts.xml
  def index
    @m_contacts = MContact.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @m_contacts }
    end
  end

  # GET /m_contacts/1
  # GET /m_contacts/1.xml
  def show
    @m_contact = MContact.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @m_contact }
    end
  end

  # GET /m_contacts/new
  # GET /m_contacts/new.xml
  def new
    @m_contact = MContact.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @m_contact }
    end
  end

  # GET /m_contacts/1/edit
  def edit
    @m_contact = MContact.find(params[:id])
  end

  # POST /m_contacts
  # POST /m_contacts.xml
  def create
    @m_contact = MContact.new(params[:m_contact])

    respond_to do |format|
      if @m_contact.save
        format.html { redirect_to(@m_contact, :notice => 'M contact was successfully created.') }
        format.xml  { render :xml => @m_contact, :status => :created, :location => @m_contact }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @m_contact.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /m_contacts/1
  # PUT /m_contacts/1.xml
  def update
    @m_contact = MContact.find(params[:id])

    respond_to do |format|
      if @m_contact.update_attributes(params[:m_contact])
        format.html { redirect_to(@m_contact, :notice => 'M contact was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @m_contact.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /m_contacts/1
  # DELETE /m_contacts/1.xml
  def destroy
    @m_contact = MContact.find(params[:id])
    @m_contact.destroy

    respond_to do |format|
      format.html { redirect_to(m_contacts_url) }
      format.xml  { head :ok }
    end
  end
end

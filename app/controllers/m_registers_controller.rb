class MRegistersController < ApplicationController
  # GET /m_registers
  # GET /m_registers.xml
  def index
    @m_registers = MRegister.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @m_registers }
    end
  end

  # GET /m_registers/1
  # GET /m_registers/1.xml
  def show
    @m_register = MRegister.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @m_register }
    end
  end

  # GET /m_registers/new
  # GET /m_registers/new.xml
  def new
    @m_register = MRegister.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @m_register }
    end
  end

  # GET /m_registers/1/edit
  def edit
    @m_register = MRegister.find(params[:id])
  end

  # POST /m_registers
  # POST /m_registers.xml
  def create
    @m_register = MRegister.new(params[:m_register])

    respond_to do |format|
      if @m_register.save
        format.html { redirect_to(@m_register, :notice => 'M register was successfully created.') }
        format.xml  { render :xml => @m_register, :status => :created, :location => @m_register }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @m_register.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /m_registers/1
  # PUT /m_registers/1.xml
  def update
    @m_register = MRegister.find(params[:id])

    respond_to do |format|
      if @m_register.update_attributes(params[:m_register])
        format.html { redirect_to(@m_register, :notice => 'M register was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @m_register.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /m_registers/1
  # DELETE /m_registers/1.xml
  def destroy
    @m_register = MRegister.find(params[:id])
    @m_register.destroy

    respond_to do |format|
      format.html { redirect_to(m_registers_url) }
      format.xml  { head :ok }
    end
  end
end

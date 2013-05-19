class MSubCategoriesController < ApplicationController
  # GET /m_sub_categories
  # GET /m_sub_categories.xml
  def index
    @m_sub_categories = MSubCategory.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @m_sub_categories }
    end
  end

  # GET /m_sub_categories/1
  # GET /m_sub_categories/1.xml
  def show
    @m_sub_category = MSubCategory.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @m_sub_category }
    end
  end

  # GET /m_sub_categories/new
  # GET /m_sub_categories/new.xml
  def new
    @m_sub_category = MSubCategory.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @m_sub_category }
    end
  end

  # GET /m_sub_categories/1/edit
  def edit
    @m_sub_category = MSubCategory.find(params[:id])
  end

  # POST /m_sub_categories
  # POST /m_sub_categories.xml
  def create
    @m_sub_category = MSubCategory.new(params[:m_sub_category])

    respond_to do |format|
      if @m_sub_category.save
        format.html { redirect_to(@m_sub_category, :notice => 'M sub category was successfully created.') }
        format.xml  { render :xml => @m_sub_category, :status => :created, :location => @m_sub_category }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @m_sub_category.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /m_sub_categories/1
  # PUT /m_sub_categories/1.xml
  def update
    @m_sub_category = MSubCategory.find(params[:id])

    respond_to do |format|
      if @m_sub_category.update_attributes(params[:m_sub_category])
        format.html { redirect_to(@m_sub_category, :notice => 'M sub category was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @m_sub_category.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /m_sub_categories/1
  # DELETE /m_sub_categories/1.xml
  def destroy
    @m_sub_category = MSubCategory.find(params[:id])
    @m_sub_category.destroy

    respond_to do |format|
      format.html { redirect_to(m_sub_categories_url) }
      format.xml  { head :ok }
    end
  end
end

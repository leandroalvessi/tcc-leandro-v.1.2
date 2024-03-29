class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]
  load_and_authorize_resource only: [:show, :edit, :update, :destroy]
  
  # GET /products
  # GET /products.json
  def index
    if current_user.kind == 'Gerente'     
      #@products = Product.paginate(:page=>params[:page],per_page:10)
      @products = Product.order(:id).page(params[:page]).per(10)
    else
      @products = Product.where(user_id: current_user.id).order(:id).page(params[:page]).per(10)
    end  
  end

  # GET /products/1
  # GET /products/1.json
  def show
  end

  # GET /products/new
  def new
    @product = Product.new
    @balancoAtivo = balancoAtivo
  end

  # GET /products/1/edit
  def edit
    @balancoAtivo = balancoAtivo
  end

  # POST /products
  # POST /products.json
  def create
    @product = Product.new(product_params)

    respond_to do |format|
      if @product.save
        format.html { redirect_to @product, notice: 'Product was successfully created.' }
        format.json { render :show, status: :created, location: @product }
      else
        format.html { render :new }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /products/1
  # PATCH/PUT /products/1.json
  def update
    respond_to do |format|
      if @product.update(product_params)
        format.html { redirect_to @product, notice: 'Product was successfully updated.' }
        format.json { render :show, status: :ok, location: @product }
      else
        format.html { render :edit }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /products/1
  # DELETE /products/1.json
  def destroy
    @product.destroy
    respond_to do |format|
      format.html { redirect_to products_url, notice: 'Product was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def balancoAtivo
    Balance.where(status: "Ativo")
  end  

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_params
      params.require(:product).permit(:code, :unit_of_measurement, :quantity, :description, :damage, :balance_id, :product_kind_id, :user_id)
    end
end

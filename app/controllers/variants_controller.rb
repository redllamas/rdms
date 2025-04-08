class VariantsController < ApplicationController
  before_action :set_product
  before_action :set_variant, only: %i[show edit update destroy]

  # GET /products/:product_id/variants
  def index
    @variants = @product.variants
  end

  # GET /products/:product_id/variants/:id
  def show
  end

  # GET /products/:product_id/variants/new
  def new
    @variant = @product.variants.build
  end

  # GET /products/:product_id/variants/:id/edit
  def edit
  end

  # POST /products/:product_id/variants
  def create
    @variant = @product.variants.build(variant_params)

    respond_to do |format|
      if @variant.save
        format.html { redirect_to product_variant_path(@product, @variant), notice: "Variant was successfully created." }
        format.json { render :show, status: :created, location: product_variant_path(@product, @variant) }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @variant.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /products/:product_id/variants/:id
  def update
    respond_to do |format|
      if @variant.update(variant_params)
        format.html { redirect_to product_variant_path(@product, @variant), notice: "Variant was successfully updated." }
        format.json { render :show, status: :ok, location: product_variant_path(@product, @variant) }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @variant.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /products/:product_id/variants/:id
  def destroy
    @variant.destroy!

    respond_to do |format|
      format.html { redirect_to product_variants_path(@product), status: :see_other, notice: "Variant was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private

  # Set the product for nested routes
  def set_product
    @product = Product.find(params[:product_id])
  end

  # Set the variant for actions that require it
  def set_variant
    @variant = @product.variants.find(params[:id])
  end

  # Only allow a list of trusted parameters through
  def variant_params
    params.require(:variant).permit(:body_material, :size_mm, :product_id)
  end
end

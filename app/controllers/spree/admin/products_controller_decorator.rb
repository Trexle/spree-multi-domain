Spree::Admin::ProductsController.class_eval do
  update.before :set_stores
  before_action :find_stores, only: [:update]

  private

  def set_stores
    @product.store_ids = nil unless params[:product].key? :store_ids
  end
  
  def find_stores
    store_ids = params[:product][:store_ids]
    if store_ids.present?
      params[:product][:store_ids] = store_ids.split(',')
    end
  end

<<<<<<< HEAD
end
=======
end
>>>>>>> bfc2e78040b028bed2b967b431114a9948b5a8c3

module SpreeComments
  module Admin
    module OrdersControllerDecorator
      def comments
        load_order
        @comment_types = Spree::CommentType.where(:applies_to => "Order")
      end
    end
  end
end

::Spree::Admin::OrdersController.prepend SpreeComments::Admin::OrdersControllerDecorator

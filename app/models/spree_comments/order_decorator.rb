module SpreeComments
  module OrderDecorator
      def self.prepended(base)
        base.acts_as_commentable
      end
  end
end

::Spree::Order.prepend(::SpreeComments::OrderDecorator)

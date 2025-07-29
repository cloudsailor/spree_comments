module SpreeComments
  module OrderDecorator
      def self.prepended(base)
        base.acts_as_commentable
      end

      def with_answer?
        comments_text = self.comments.pluck(:comment).join(' ')
        comments_text.downcase.include?('sent')
      end
  end
end

::Spree::Order.prepend(::SpreeComments::OrderDecorator)

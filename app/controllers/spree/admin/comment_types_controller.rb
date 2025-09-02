class Spree::Admin::CommentTypesController < ::Spree::Admin::ResourceController
  private

  def permitted_resource_params
    params.require(:comment_type).permit(:name, :applies_to)
  end
end
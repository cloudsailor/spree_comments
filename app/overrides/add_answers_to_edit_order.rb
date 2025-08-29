# frozen_string_literal: true

class AddAnswersToEditOrder
  Deface::Override.new(
    virtual_path: 'spree/admin/orders/_summary',
    name: 'add_answers_to_edit_order',
    insert_after: '#order_tab_summary',
    text: <<-HTML
      <% if @order.comments.present? %>
        <div class='card mb-4 bg-transparent'>
          <div class='card-header d-flex justify-content-between align-items-center border-0'>
            <h6 class='card-title'>
              <%= icon('book', class: 'mr-2') %>
              <%= Spree.t('comments') %>
            </h6>
            <button class="btn btn-light btn-sm" type="button" data-toggle="collapse" data-target="#order-comments" aria-expanded="false" aria-controls="collapseExample">
              <%= Spree.t(:show_details) %>
              <%= icon('selector', class: 'mr-0 ml-1') %>
            </button>
          </div>
          <div class="card-body mb-0 p-0 <% if @order.comments %>collapse<% else %>show<% end %>" id="order-comments">
            <div class="order-line-items">
              <div class="text-muted border-bottom py-2 px-3 font-size-sm order-line-items__row d-flex">
                <div class="w-70"><%= Spree.t(:comment) %></div>
                <div class="w-25"><%= Spree.t(:comment_type) %></div>
                <div class="w-25"><%= Spree.t(:comment_user) %></div>
              </div>
      
              <% @order.comments.each do |comment| %>
                <div class="order-line-items__form d-flex border-bottom py-2 px-3">
                  <div class="w-70"><%= comment.comment %></div>
                  <div class="w-25"><%= comment.comment_type %></div>
                  <div class="w-25"><%= comment.user.email %></div>
                </div>
              <% end %>
            </div>
          </div>
        </div>
      <% end %>
    HTML
  )
end

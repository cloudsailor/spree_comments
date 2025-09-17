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
            <table class="table table-sm table-bordered mb-0 border-top-0 border-bottom-0">
              <thead class="thead-light">
                <tr>
                  <th class="w-75 border-left-0"><%= Spree.t(:comment) %></th>
                  <th class="w-25"><%= Spree.t(:comment_type) %></th>
                  <th class="w-25 border-right-0"><%= Spree.t(:comment_user) %></th>
                </tr>
              </thead>
              <tbody>
                <% @order.comments.each do |comment| %>
                  <tr>
                    <td class="border-left-0"><%= comment.comment %></td>
                    <td><%= comment.comment_type&.name %></td>
                    <td class="border-right-0"><%= comment.user&.email %></td>
                  </tr>
                <% end %>
              </tbody>
            </table>
          </div>
        </div>
      <% end %>
    HTML
  )
end

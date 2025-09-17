# frozen_string_literal: true

class AddAnswersToOrders
  Deface::Override.new(
    virtual_path: 'spree/admin/orders/_order',
    name: 'add_answer_to_orders',
    insert_before: 'td.d-customer.w-15.cursor-pointer',
    text: '
      <td class="w-15 cursor-pointer text-center" data-action="click->row-link#openLink">
        <span class="badge <%= order.with_answer? ? "badge-success" : "badge-ready" %>">
          <%= order.with_answer? ? icon("check") : icon("progress") %>
          <%= order.with_answer? ? Spree.t("teta.sent") : Spree.t("teta.waiting") %>
        </span>
      </td>
    '
  )
end

class AddCompletionDateToOrdersList
  Deface::Override.new(
    virtual_path: 'spree/admin/orders/_list',
    name: 'add_answers_to_orders_list',
    insert_before: 'th.d-customer',
    text: '<th><%= Spree.t("teta.answer") %></th>'
  )
end

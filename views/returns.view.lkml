view: returns {
  sql_table_name: [Superstore.Returns]
    ;;

  dimension: order_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.Order_ID ;;
  }

  dimension: returned {
    type: yesno
    sql: ${TABLE}.Returned ;;
  }

  measure: count {
    type: count
    approximate_threshold: 100000
    drill_fields: [orders.order_id, orders.customer_name, orders.product_name]
  }
}

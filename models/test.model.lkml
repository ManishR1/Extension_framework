connection: "superstore"

# include all the views
include: "/views/**/*.view"

datagroup: test_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: test_default_datagroup

# NOTE: please see https://looker.com/docs/r/sql/bigquery?version=7.4
# NOTE: for BigQuery specific considerations

explore: orders {
  always_filter: {
    filters: [orders.discount: "20"]
  }
}

explore: persons {}

explore: returns {
  join: orders {
    #_each
    type: left_outer
    sql_on: ${returns.order_id} = ${orders.order_id} ;;
    relationship: many_to_one
  }
}
access_grant: user_id {
  user_attribute: id
  allowed_values: ["12"]
}
access_grant:user_email  {
  user_attribute: email
  allowed_values: ["aarti.bibave@cymetrixsoft.com","sandip@cymetrixsoft.com"]
}

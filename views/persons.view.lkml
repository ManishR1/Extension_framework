view: persons {
  sql_table_name: [Superstore.Persons]
    ;;

  dimension: persons {
    type: string
    sql: ${TABLE}.Persons ;;
  }

  dimension: region {
    type: string
    sql: ${TABLE}.Region ;;
  }

  measure: count {
    type: count
    approximate_threshold: 100000
    drill_fields: []
  }
}

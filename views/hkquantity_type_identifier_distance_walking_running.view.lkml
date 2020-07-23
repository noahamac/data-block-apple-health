view: hkquantity_type_identifier_distance_walking_running {
  sql_table_name: `spencer-white-tckt87992.mylooker2.HKQuantityTypeIdentifierDistanceWalkingRunning` ;;

  dimension_group: creationdate {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.creationdate ;;
  }

  dimension: device {
    type: string
    sql: ${TABLE}.device ;;
  }

  dimension_group: enddate {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.enddate ;;
  }

  dimension: sourcename {
    type: string
    sql: ${TABLE}.sourcename ;;
  }

  dimension: sourceversion {
    type: string
    sql: ${TABLE}.sourceversion ;;
  }

  dimension_group: startdate {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.startdate ;;
  }

  dimension_group: duration {
    type: duration
    sql_start: ${startdate_raw} ;;
    sql_end: ${enddate_raw} ;;
    timeframes: [second, raw, hour, minute]
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }

  dimension: unit {
    type: string
    sql: ${TABLE}.unit ;;
  }

  dimension: value {
    type: number
    sql: ${TABLE}.value ;;
  }

  measure: total_miles {
    type: sum
    sql: ${value} ;;
  }

  measure: count {
    type: count
    drill_fields: [sourcename]
  }
}

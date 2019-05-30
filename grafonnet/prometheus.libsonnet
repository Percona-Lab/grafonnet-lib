{
  target(
    expr,
    format='time_series',
    intervalFactor=2,
    legendFormat=null,
    datasource=null,
    interval=null,
    instant=null,
    refId=null,
  ):: {
    [if datasource != null then 'datasource']: datasource,
    expr: expr,
    format: format,
    intervalFactor: intervalFactor,
    refId:refId,
    [if interval != null then 'interval']: interval,
    [if instant != null then 'instant']: instant,
    [if legendFormat != null then 'legendFormat']: legendFormat,
  },
}

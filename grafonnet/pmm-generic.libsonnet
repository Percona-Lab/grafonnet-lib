{
  new(
    title,
    type,
    id=null,
    height = null,
    datasource=null,
  )::
    {
      title: title,
      type: type,
      datasource: datasource,
      [if height != null then 'height']: height,
      id: id,
      targets: [
      ],
      links: [],
      _nextTarget:: 0,
      addTarget(target):: self {
        local nextTarget = super._nextTarget,
        _nextTarget: nextTarget + 1,
        targets+: [target { refId: std.char(std.codepoint('A') + nextTarget) }],
      },
    },
    dashlist(
      folderId = null,
      headings = null,
      height = null,
      limit = null,
      links=[],
      options={},
      query = null,
      recent=null,
      search=null,
      starred=null,
      tags=[],
      title = null,
    )::{
        type:'dashlist',
        [if folderId != null then 'folderId']: folderId,
        [if headings != null then 'headings']: headings,
        [if height != null then 'height']: height,
        [if limit != null then 'limit']: limit,
        links:links,
        options:options,
        [if query != null then 'query']: query,
        [if recent != null then 'recent']: recent,
        [if search != null then 'search']: search,
        [if starred != null then 'starred']: starred,
        tags:tags,
        [if title != null then 'title']: title,
    }
}

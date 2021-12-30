local record proto
  link: function(table, ...:table): table
  merge_meta: function(table)
  get_tables: function(table): {table}
  iter: function(table)
  metamethod __call: function(...:any): function(table)
  metamethod __tostring: function(): string
end

return proto

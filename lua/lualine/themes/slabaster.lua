local p = {
  bg         = "#0E1415",
  bg_alt     = "#141B1C",
  bg_select  = "#1C3D3A",
  fg         = "#D0C0A0",
  fg_dim     = "#8A8272",
  keyword    = "#FFFFFF",
  type       = "#B0FFB0",
  builtin    = "#C7E6FA",
  definition = "#AC8BC7",
  red        = "#D96468",
  number     = "#E3A868",
}

return {
  normal = {
    a = { fg = p.bg, bg = p.builtin, gui = "bold" },
    b = { fg = p.fg, bg = p.bg_alt },
    c = { fg = p.fg_dim, bg = p.bg },
  },
  insert = {
    a = { fg = p.bg, bg = p.type, gui = "bold" },
    b = { fg = p.fg, bg = p.bg_alt },
    c = { fg = p.fg_dim, bg = p.bg },
  },
  visual = {
    a = { fg = p.bg, bg = p.definition, gui = "bold" },
    b = { fg = p.fg, bg = p.bg_alt },
    c = { fg = p.fg_dim, bg = p.bg },
  },
  replace = {
    a = { fg = p.bg, bg = p.red, gui = "bold" },
    b = { fg = p.fg, bg = p.bg_alt },
    c = { fg = p.fg_dim, bg = p.bg },
  },
  command = {
    a = { fg = p.bg, bg = p.number, gui = "bold" },
    b = { fg = p.fg, bg = p.bg_alt },
    c = { fg = p.fg_dim, bg = p.bg },
  },
  inactive = {
    a = { fg = p.fg_dim, bg = p.bg_alt },
    b = { fg = p.fg_dim, bg = p.bg_alt },
    c = { fg = p.fg_dim, bg = p.bg },
  },
}

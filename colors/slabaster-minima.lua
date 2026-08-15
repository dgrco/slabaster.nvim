-- A faithful port of tonsky's Alabaster (dark), via p00f/alabaster.nvim's
-- color values: https://github.com/tonsky/sublime-scheme-alabaster
--
-- Alabaster's own rule is that keywords, types, and preprocessor directives
-- carry no color at all -- they're plain foreground text, because they're
-- "the least important and most obvious part of any program." Only strings,
-- constants/numbers, comments, and function/type *definitions* get a hue.
-- minima keeps that rule, with one deliberate addition: keywords are bold,
-- still in plain foreground -- weight instead of color, not a new color.

local p = {
  bg          = "#0e1415",
  bg_alt      = "#162022",
  bg_float    = "#182325",
  bg_cursor   = "#182325",
  bg_select   = "#354c50",
  bg_visual   = "#293334",
  border      = "#2b3d40",
  fg          = "#cecece",
  fg_dim      = "#7d7d7d",
  fg_faint    = "#696969",
  cursor      = "#cd974b",

  comment     = "#dfdf8e",
  string      = "#95cb82",
  number      = "#cc8bc9",
  -- Alabaster leaves keywords uncolored (same as fg); minima's only
  -- deviation from the original is making them bold.
  keyword       = "#cecece",
  bold_keywords = true,
  -- Alabaster leaves Type/StorageClass uncolored too -- same fg, no bold.
  type        = "#cecece",
  builtin     = "#71aed7",
  -- Function/type definitions are the one place Alabaster spends a second
  -- accent color, distinct from the string/constant/comment hues.
  definition  = "#71ade7",

  red         = "#c33c33",
  green       = "#95cb82",
  yellow      = "#cd974b",
  blue        = "#71aed7",
  cyan        = "#47bea9",
  gray        = "#7d7d7d",
}

require("slabaster.theme").load("slabaster-minima", p)

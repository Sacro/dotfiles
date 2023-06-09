--  rosewater  #F5E0DC  Winbar
--  flamingo   #F2CDCD  Target word
--  pink       #F5C2E7  Just pink
--  mauve      #CBA6F7  Tag
--  red        #F38BA8  Error
--  maroon     #EBA0AC  Lighter red
--  peach      #FAB387  Number
--  yellow     #F9E2AF  Warning
--  green      #A6E3A1  Diff add
--  teal       #94E2D5  Hint
--  sky        #89DCEB  Operator
--  sapphire   #74C7EC  Constructor
--  blue       #89B4FA  Diff changed
--  lavender   #B4BEFE  CursorLine Nr
--  text       #CDD6F4  Default fg
--  subtext1   #BAC2DE  Indicator
--  subtext0   #A6ADC8  Float title
--  overlay2   #9399B2  Popup fg
--  overlay1   #7F849C  Conceal color
--  overlay0   #6C7086  Fold color
--  surface2   #585B70  Default comment
--  surface1   #45475A  Darker comment
--  surface0   #313244  Darkest comment
--  base       #1E1E2E  Default bg
--  mantle     #181825  Darker bg
--  crust      #11111B  Darkest bg

return function(hl)
	local get_hlgroup = require("astronvim.utils").get_hlgroup
	-- local mocha = require("catppuccin.palettes").get_palette("mocha")

	-- use helper function to get highlight group properties
	local normal_bg = get_hlgroup("EndOfBuffer").fg
	hl.normal_bg = normal_bg

	hl.file_info_bg = get_hlgroup("ColorColumn").bg
	hl.diagnostics_bg = hl.normal_bg

	local comment_fg = get_hlgroup("Comment").fg
	hl.git_branch_fg = comment_fg
	hl.git_added = comment_fg
	hl.git_changed = comment_fg
	hl.git_removed = comment_fg

	hl.lsp_bg = hl.file_info_bg
	hl.lsp_icon_bg = get_hlgroup("DiffChanged").fg

	hl.folder_icon_bg = get_hlgroup("PreProc").fg

	hl.nav_icon_bg = get_hlgroup("TabLineSel").fg
	hl.nav_fg = hl.nav_icon_bg
	return hl
end

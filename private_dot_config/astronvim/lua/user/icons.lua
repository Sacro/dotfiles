local utils = require("astronvim.utils")

return function(opts)
	return utils.extend_tbl(opts, {
		VimIcon = "",
		ScrollText = "",
		GitBranch = "",
		GitAdd = "",
		GitChange = "",
		GitDelete = "",
	})
end

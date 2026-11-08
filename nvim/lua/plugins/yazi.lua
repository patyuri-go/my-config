return {
	{
		"mikavilpas/yazi.nvim",
		dependencies = {
			"nvim-lua/plenary.nvim",
		},
		keys = {
			{
				"<leader>fy",
				"<cmd>Yazi<cr>",
				desc = "打开 Yazi 文件管理器",
			},
			{
				"<leader>fY",
				"<cmd>Yazi cwd<cr>",
				desc = "在当前工作目录打开 Yazi",
			},
		},
		opts = {},
	},
}

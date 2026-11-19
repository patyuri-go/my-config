return {
	{
		"sindrets/diffview.nvim",
		dependencies = {
			"nvim-lua/plenary.nvim",
		},

		cmd = {
			"DiffviewOpen",
			"DiffviewClose",
			"DiffviewFileHistory",
		},

		keys = {
			{
				"<leader>gDo",
				"<cmd>DiffviewOpen<cr>",
				desc = "打开 Git 差异视图",
			},
			{
				"<leader>gDc",
				"<cmd>DiffviewClose<cr>",
				desc = "关闭 Git 差异视图",
			},
			{
				"<leader>gDh",
				"<cmd>DiffviewFileHistory<cr>",
				desc = "查看文件提交历史",
			},
			{
				"<leader>gDH",
				"<cmd>DiffviewFileHistory %<cr>",
				desc = "查看当前文件提交历史",
			},
			{
				"<leader>gDb",
				"<cmd>DiffviewOpen origin/work...HEAD<cr>",
				desc = "比较远程分支与本地分支",
			},
			{
				"<leader>gDm",
				"<cmd>DiffviewOpen HEAD~1..HEAD<cr>",
				desc = "查看最近一次提交的差异",
			},
		},
	},
}

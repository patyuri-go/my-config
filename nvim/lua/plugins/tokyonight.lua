return {
	{
		"folke/tokyonight.nvim",
		opts = {
			on_highlights = function(hl, c)
				-- 类型保持主题原本的颜色，只加粗
				hl["@type"] = { fg = c.blue1, bold = true }
				hl["@type.definition"] = { fg = c.blue1, bold = true }
			end,
		},
	},
}

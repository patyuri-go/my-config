return {
  {
    "folke/which-key.nvim",
    opts = {
      replace = {
        desc = {
          -- 中文翻译（未收录的条目原样返回）
          function(desc)
            return require("config.which-key-zh").translate(desc)
          end,
          -- which-key 默认的 desc 清理规则，整体覆盖时需要保留
          { "<Plug>%(?(.*)%)?", "%1" },
          { "^%+", "" },
          { "<[cC]md>", "" },
          { "<[cC][rR]>", "" },
          { "<[sS]ilent>", "" },
          { "^lua%s+", "" },
          { "^call%s+", "" },
          { "^:%s*", "" },
        },
      },
    },
  },
}

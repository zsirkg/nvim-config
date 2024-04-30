return {
  "EdenEast/nightfox.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    local palettes = {
      -- Everything defined under `all` will be applied to each style.
      nightfox = {
        red = "#dc322f",
        yellow = '#b58900',
        orange = '#cb4b16',
        magenta = '#d33682',
        violet = '#6c71c4',
        blue = '#268bd2',
        cyan = '#2aa198',
        green = '#859900',
        white = '#93a1a1',

        bg1 = '#002b36',
        fg1 = '#93a1a1',
      },
      duskfox = {
        white = '#b1bfbf',
      }
    }
    -- You can override these just like palettes
    -- https://github.com/EdenEast/nightfox.nvim/blob/main/usage.md#spec
    local specs = {
      -- As with palettes, the values defined under `all` will be applied to every style.
      nightfox = {
        syntax = {
          -- Adding either `.bright` or `.dim` will change the value
          -- 自定义
          conditional = "green", --Conditional and loop(if/for)
          const = "cyan", --Constants, imports and booleans(std)
          func = "blue", --Functions and Titles(所有函数)
          keyword = "green", --Keywords 影响(class/public)
          number = "cyan", --Numbers(数字常量)
          string = "cyan", --Strings(字符串常量)
          type = "yellow", --Types(void/uint32_t)
          preproc = "orange", --PreProc(include)
          operator = "green",  --Operators 影响操作符(operator关键字)
          ident = "blue", --Identifiers(成员变量的引用)

          -- cpp moden不生效
          builtin0 = "blue",  --Builtin variable 影响return/python open
          -- builtin1 = "red",  --Builtin type 影响std和namespace
          -- builtin2 = "red",  --Builtin const
          -- variable = "red", --Variables 函数内变量
          -- field = "red", --Field 类成员变量
          -- regex = "red", --Regex
          -- statement = "red", --Statements

          -- 使用默认
          -- dep --Deprecated
          -- comment --Comment
          -- bracket --Brackets and Punctuation
        },
        git = {
          -- A color define can also be used
          changed = "#f4a261",
        },
      }
    }

    -- Groups are the highlight group definitions. The keys of this table are the name of the highlight
    -- groups that will be overridden. The value is a table with the following values:
    --   - fg, bg, style, sp, link,
    --
    -- Just like `spec` groups support templates. This time the template is based on a spec object.
    local groups = {
      -- As with specs and palettes, the values defined under `all` will be applied to every style.
      all = {
        -- If `link` is defined it will be applied over any other values defined
        Whitespace = { link = "Comment" },

        -- Specs are used for the template. Specs have their palette's as a field that can be accessed
        IncSearch = { bg = "palette.cyan" },
      },
      nightfox = {
        -- As with specs and palettes, a specific style's value will be used over the `all`'s value.
        PmenuSel = { bg = "#73daca", fg = "bg0" },
      },
    }
    require("nightfox").setup({ palettes = palettes, specs = specs, groups = groups })
    -- setup must be called before loading
    vim.cmd("colorscheme nightfox")
    -- local filetype = vim.bo.filetype
    -- if filetype == 'cpp' or filetype == '' then
    --   vim.cmd("colorscheme nightfox")
    -- else
    --   vim.cmd("colorscheme duskfox")
    -- end
  end,
}

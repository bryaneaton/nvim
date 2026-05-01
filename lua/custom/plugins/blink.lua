return {
  {
    'saghen/blink.cmp',
    dependencies = { 'saghen/blink.lib' },
    event = 'InsertEnter',
    version = '1.*',
    build = 'cargo build --release',
    opts = {
      keymap = { preset = 'default' },
      appearance = {
        nerd_font_variant = 'mono',
      },
      completion = {
        documentation = {
          auto_show = true,
        },
      },
      sources = {
        default = { 'lazydev', 'lsp', 'path', 'snippets', 'buffer' },
        providers = {
          lazydev = {
            name = 'LazyDev',
            module = 'lazydev.integrations.blink',
            score_offset = 100,
          },
        },
      },
    },
  },
}

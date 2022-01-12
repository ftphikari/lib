import config, bindings from howl

with config
  .indent = 2
  .auto_pair = false
  .complete = 'manual'
  .go_fmt_command = 'goimports'
  .edge_column = 120

bindings.push
  ctrl_q: 'switch-to-last-hidden-buffer'
  ctrl_e: 'run'
  ctrl_y: 'editor-redo'
  ctrl_l: 'cursor-goto-line'

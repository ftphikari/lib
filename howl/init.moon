import config, bindings from howl

with config
  .indent = 2
  .auto_pair = false
  .complete = 'manual'
  .go_fmt_command = 'goimports'

bindings.push
  ctrl_q: 'close'
  ctrl_e: 'run'

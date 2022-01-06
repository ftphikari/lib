import config, bindings from howl

with config
  .indent = 2
  .auto_pair = false
  .complete = 'manual'
  .go_fmt_command = 'goimports'
  .project_build_command = 'go build .'

bindings.push
  ctrl_q: 'switch-to-last-hidden-buffer'
  ctrl_e: 'run'
  ctrl_y: 'editor-redo'
  ctrl_l: 'cursor-goto-line'
  f5:     'project-build'

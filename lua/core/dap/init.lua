require("dap").adapters["pwa-node"] = {
  type = "server",
  host = "localhost",
  port = "${port}",
  executable = {
    command = "node",
    -- 💀 Make sure to update this path to point to your installation
    args = {"/home/jibbril/.local/share/nvim/site/pack/packer/opt/vscode-js-debug/out/src/dapDebugServer.js", "${port}"},
  }
}

require('core.dap.keymaps')
require('core.dap.javascript')

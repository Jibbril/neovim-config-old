local dap = require('dap')

function load_launchjs(config_name)
  local launch_file = io.open(".vscode/launch.json", "r")
  if not launch_file then
    print("Error: .vscode/launch.json file not found.")
    return
  end

  local content = launch_file:read("*all")
  local launch_json = vim.fn.json_decode(content)

  local configuration = nil
  for _, config in ipairs(launch_json.configurations) do
    if config.name == config_name then
      configuration = config
      break
    end
  end
  
  if configuration.type == 'node-terminal' then 
    configuration.type = 'pwa-node'
  end

  if configuration.command then
    configuration.runtimeExecutable = 'sh'
    configuration.runtimeArgs = {'-c', configuration.command}
  end

  if configuration then
    dap.run(configuration)
  else
    print("Error: Configuration '" .. config_name .. "' not found in .vscode/launch.json.")
  end
end


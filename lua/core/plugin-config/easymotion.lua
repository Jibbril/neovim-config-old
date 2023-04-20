vim.cmd([[
  " Set default EasyMotion keys (use the leader key as a prefix)
  nmap <Leader><Leader> <Plug>(easymotion-prefix)

  " Set EasyMotion marker colors and dimming
  hi EasyMotionTarget guifg=#56B6C2 " Set the color for one-character markers
  hi EasyMotionShade guifg=#ABB2BF " Set the dim color

  " Set the colors for two-character markers
  hi EasyMotionTarget2First guifg=#61AFEF " Set the color for the first character
  hi EasyMotionTarget2Second guifg=#61AFEF " Set the color for the second character
]])

vim.cmd([[
  " Set default EasyMotion keys (use 's' as the leader key)
  nmap s <Plug>(easymotion-prefix)

  " Optional: Use two-character search motion
  let g:EasyMotion_do_mapping = 0
  nmap <Leader>ss <Plug>(easymotion-s2)

  " Set EasyMotion marker colors and dimming
  hi EasyMotionTarget guifg=#56B6C2 " Set the color for one-character markers
  hi EasyMotionShade guifg=#ABB2BF " Set the dim color

  " Set the colors for two-character markers
  hi EasyMotionTarget2First guifg=#61AFEF " Set the color for the first character
  hi EasyMotionTarget2Second guifg=#61AFEF " Set the color for the second character
]])

let g:ctrlp_map = '<c-t>'
let g:ctrlp_prompt_mappings = {
\ 'AcceptSelection("e")': [],
\ 'AcceptSelection("t")': ['<ct>', '<c-m>'],
\ }
let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'

autocmd TextYankPost * silent! call system('pbcopy &',join(v:event["regcontents"],"\n"))

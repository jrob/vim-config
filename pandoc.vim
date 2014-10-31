nmap <silent> <leader>mx :call PandocConv()<cr>
function! PandocConv()
    let cmd = {}
    let filepath = expand("%:p")
    let path = expand("%:p:h")
    let cmd.command = 'pandoc "'.filepath.'" -H '.path.'Render\header.html -B '.path.'Render\body.html -A '.path.'Render\footer.html -o '.path.'Render\output.html'
    let cmd.async = 0
    call xolox#misc#os#exec(cmd)
endfunction

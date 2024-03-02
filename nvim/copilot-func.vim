" accept single character suggestion
function! SuggestOneCharacter()
    let suggestion = copilot#Accept("")
    let bar = copilot#TextQueuedForInsertion()
    return bar[0]
endfunction

" accept single word suggestion
function! SuggestOneWord()
    let suggestion = copilot#Accept("")
    let bar = copilot#TextQueuedForInsertion()
    return split(bar, '[ .]\zs')[0]
endfunction

" key mappings
inoremap <expr> <C-Right> SuggestOneCharacter()
inoremap <expr> <C-l> SuggestOneWord()

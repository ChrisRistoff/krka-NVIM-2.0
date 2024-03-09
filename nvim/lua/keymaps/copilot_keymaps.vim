" info: Accept a single character suggestion
function! SuggestOneCharacter()

    let suggestion = copilot#Accept("")

    let bar = copilot#TextQueuedForInsertion()

    return bar[0]

endfunction

" info: Accept a single word suggestion
function! SuggestOneWord()

    let suggestion = copilot#Accept("")

    let bar = copilot#TextQueuedForInsertion()

    return split(bar, '[ .]\zs')[0]

endfunction


" info: key mappings
inoremap <expr> <C-Right> SuggestOneCharacter()
inoremap <expr> <C-l> SuggestOneWord()
inoremap <C-e> <C-o>:Copilot<CR>

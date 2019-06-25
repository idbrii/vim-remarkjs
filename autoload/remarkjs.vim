" Generate slideshows with remark.js
" https://github.com/gnab/remark

let s:template = expand('<sfile>:h:h') .'/assets/remark_template.html'

let g:remarkjs_do_nothing_on_build = get(g:, "remarkjs_do_nothing_on_build", 0)

function! remarkjs#build(file_name)
    silent exec 'edit '. a:file_name .'.html'
    silent 1,$ delete _
    silent exec 'keepalt read '. s:template
    let insert_point = search('REPLACE_ME')
    silent exec insert_point .'delete _'
    silent exec insert_point .'read '. a:file_name
    silent write
    if !g:remarkjs_do_nothing_on_build
        if exists(":Gogo") == 2
            exec 'Gogo '. expand("%")
        elseif exists(":OpenBrowser") == 2
            exec 'OpenBrowser '. expand("%")
        else
            let @+ = expand("%:p")
            let @" = @+
            echomsg 'Exported html and put filepath on clipboard: '. @+
        endif
    endif
    silent edit #
endf

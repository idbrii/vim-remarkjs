" Generate slideshows with remark.js
" https://github.com/gnab/remark

let s:template = expand('<sfile>:h:h') .'/assets/remark_template.html'

function! remarkjs#build(file_name)
    silent exec 'edit '. a:file_name .'.html'
    silent 1,$ delete _
    silent exec 'keepalt read '. s:template
    let insert_point = search('REPLACE_ME')
    silent exec insert_point .'delete _'
    silent exec insert_point .'read '. a:file_name
    silent write
    if exists(":Gogo") == 2
      exec 'Gogo '. expand("%")
    else
      let @+ = expand("%:p")
      echomsg 'Exported html and put filepath on clipboard: '. expand("%")
    endif
    silent edit #
endf

" Generate slideshows with remark.js
" https://github.com/gnab/remark

let s:template = expand('<sfile>:h:h') .'/assets/remark_template.html'

function! remarkjs#build(file_name)
    exec 'edit '. a:file_name .'.html'
    exec 'keepalt read '. s:template
    let insert_point = search('REPLACE_ME')
    exec insert_point .'delete _'
    exec insert_point .'read '. a:file_name
    write
    exec 'Gogo '. expand("%")
    edit #
endf

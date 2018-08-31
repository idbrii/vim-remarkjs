# vim-remarkjs
Write slideshows in markdown and export as self-contained html pages.

This plugin provides a `:RemarkPreview` command to generate html.
The html imports [remark.js](https://github.com/gnab/remark) which does all the hard work of displaying a slideshow featuring dual displays and presenter mode with notes.

If [vim-gogo](https://github.com/idbrii/vim-gogo) is installed, `:RemarkPreview` launches the html in your browser. Otherwise, the file path is on your clipboard.

vim-remarkjs also provides an [ultisnips](https://github.com/SirVer/ultisnips) snippet `slide` to create a slide.

# Slide Syntax

Remark.js uses [slightly augmented markdown](https://github.com/gnab/remark/wiki) for each slide.
Separate slides with `---`:

    # Working with remarkjs

    * Use normal markdown.
    * End slides with ---

    ???
    Presenter notes go here.

    ---

    # This slide contains code

    ```vim
    function add(a,b)
        return a:a + a:b
    endf
    ```

    Vim requires an a: prefix when using arguments.

    ---


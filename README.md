# vim-remarkjs
Generate slideshows from markdown with [remark.js](https://github.com/gnab/remark).

A simple plugin that provides a `:RemarkPreview` command to generate html that displays as a nice slideshow in your browser.

If [vim gogo](https://github.com/idbrii/vim-gogo) is installed, `:RemarkPreview` launches the html in your browser.

vim-remarkjs provides an [ultisnips](https://github.com/SirVer/ultisnips) snippet `slide` to create a slide.

# Slide Syntax

Write markdown ([with some additions](https://github.com/gnab/remark/wiki)) for each slide.
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


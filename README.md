Typesetter.css
==============

HTML is a semantic markup language, but web-browsers' default presentation of semantic HTML is more based on compatibility with decades-old browsers than with readability. There are browser-addons that will take a page, strip out the presentational markup and try to present the result in a readable format, but that shouldn't be necessary if you've got sensible semantic markup to begin with.

Typesetter.css is a custom stylesheet designed to present generic, semantic HTML in the most readable way possible.

Features
========

Typographic goals already achieved include:

* A high-contrast-but-not-blinding colour scheme.
* All text sits on a vertical rhythm of 1.2em.
* Text is wrapped at 35em wide (~60 characters) for ease of reading, with the best justification and hyphenation your browser can muster.
* Tables are rendered with zebra-stripes, with special styling for `<thead>` and `<tfoot>`.
* HTML5's `<aside>` element is rendered as a narrow sidebar off the side of the main text.

See the included [demonstration][1] for more. Note that the demonstration includes line-rulings to show the vertical rhythm; these aren't part of the main stylesheet.

Non-features
============

There are certain kinds of formatting that are deliberately avoided:

* Custom typefaces: There's lots of typefaces I like, but there's no way to know which would go best with which document, nor which the user might prefer. Luckily, most browsers already allow the user to specify what typefaces to set web-pages in, and Typesetter.css respects those defaults.
* Special markup hooks: If you can customise your document markup to make it easier to attach styles to, by all means go ahead - but Typesetter.css is about beautifying generic, unmodified HTML.

Usage
=====

To use Typesetter.css, follow these instructions:

First, copy the contents of the `output` directory to a convenient place in your documentation tree.

Then, add the following markup to the `<head>` element of each HTML document you want rendered with Typesetter.css:

    <link rel="stylesheet" href="typesetter.css">

Make sure the `href` attribute points to the actual location of `typesetter.css`!

Note: Typesetter.css is designed for standards-compliant web-browsers; to put your browser into the most standards-compliant rendering mode it has, make sure the HTML starts with the HTML5 doctype:

    <!DOCTYPE html>

...and if you're unsure, it's a good idea to run your HTML through the [HTML5 validator][2] to catch any markup errors that might cause your browser to get confused.

Development
===========

Note that `output/typesetter.css` is generated from `src/typesetter.less` via
the [LESS][3] CSS pre-processor. If you want to submit patches, please edit the
`src/typesetter.less` file rather than the output file. LESS version 1.3 or
higher is required, since older versions seem to mess up the formatting of
negative numbers.

[1]: example/demo.html
[2]: http://validator.nu/
[3]: http://lesscss.org/

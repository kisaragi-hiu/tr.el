# tr.el

`tr` in Emacs Lisp.

## Why

I don't need backward compatibility with decades-old unix scripts, or regex or other different options.
I just want a `tr` that works with unicode.

## Use

```elisp
(straight-use-package
 '(tr :type git :host github
      :repo "kisaragi-hiu/tr.el"))
```

Then use in code like this:
`(tr "\n" " " "multi-line\nstring")`.

## LICENSE

GPL v3+, see `COPYING`.

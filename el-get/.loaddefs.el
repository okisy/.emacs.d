;;; .loaddefs.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads nil "../elisp/ample-regexps/ample-regexps" "../elisp/ample-regexps/ample-regexps.el"
;;;;;;  (23327 54960 954359 502000))
;;; Generated autoloads from ../elisp/ample-regexps/ample-regexps.el

(autoload 'define-arx "../elisp/ample-regexps/ample-regexps" "\
Generate a custom rx-like macro under name MACRO.

See `rx' for how the generated macro can be invoked.

FORM-DEFS is a list of custom s-exp definitions to create whose
elements have the form (SYM DEF), where DEF is one of
the following:

- \"LITERAL\" -- create a matcher to match a string literally

- (regexp \"LITERAL\") -- create a match given a regexp

- SYMBOL -- create an alias for a symbol either defined earlier
  on the list or provided by `rx'

- (SUBFORM ...) -- create an alias for an application of s-exp
  subform either defined earlier on the list or provided by `rx'

- (:func #'FORM-FUNC ...) -- create an s-exp definition

The most interesting here is the last variant.  When a
corresponding rx form will be encountered, FORM-FUNC will be
called with all elements of that form as arguments (with the
first one being the form symbol itself).  FORM-FUNC must then
return a valid s-exp or a properly grouped plain regexp.

Another keywords that are recognized in the plist are:
- :min-args -- minimum number of arguments for that form (default nil)
- :max-args -- maximum number of arguments for that form (default nil)
- :predicate -- if given, all rx form arguments must satisfy it

\(fn MACRO FORM-DEFS)" nil t)

(autoload 'arx-and "../elisp/ample-regexps/ample-regexps" "\
Generate an expression to match a sequence of FORMS.

\(fn FORMS)" nil nil)

(autoload 'arx-or "../elisp/ample-regexps/ample-regexps" "\
Generate an expression to match one of FORMS.

\(fn FORMS)" nil nil)

(autoload 'arx-builder "../elisp/ample-regexps/ample-regexps" "\
Run `re-builder' using arx form named ARX-NAME.

\(fn &optional ARX-NAME)" t nil)

;;;***

;;;### (autoloads nil "../elisp/hide-comnt/hide-comnt" "../elisp/hide-comnt/hide-comnt.el"
;;;;;;  (23328 41351 246570 190000))
;;; Generated autoloads from ../elisp/hide-comnt/hide-comnt.el

(defvar ignore-comments-flag t "\
*Non-nil means macro `with-comments-hidden' hides comments.")

(custom-autoload 'ignore-comments-flag "../elisp/hide-comnt/hide-comnt" t)

(defvar hide-whitespace-before-comment-flag t "\
*Non-nil means `hide/show-comments' hides whitespace preceding a comment.
It does not hide empty lines (newline chars), however.")

(custom-autoload 'hide-whitespace-before-comment-flag "../elisp/hide-comnt/hide-comnt" t)

(defvar show-invisible-comments-shows-all nil "\
Non-nil means `(hide/show-comments 'show ...)' shows all invisible text.
The default value, nil, means it shows only text that was made
invisible by `(hide/show-comments 'hide ...)'.")

(custom-autoload 'show-invisible-comments-shows-all "../elisp/hide-comnt/hide-comnt" t)

(autoload 'hide/show-comments "../elisp/hide-comnt/hide-comnt" "\
Hide or show comments from START to END.
Interactively, hide comments, or show them if you use a prefix arg.
\(This is thus *NOT* a toggle command.)

If option `hide-whitespace-before-comment-flag' is non-nil, then hide
also any whitespace preceding a comment.

Interactively, START and END default to the region limits, if active.
Otherwise, including non-interactively, they default to `point-min'
and `point-max'.

Uses `save-excursion', restoring point.

Option `show-invisible-comments-shows-all':

* If non-nil then using this command to show invisible text shows
  *ALL* such text, regardless of how it was hidden.  IOW, it does not
  just show invisible text that you previously hid using this command.

* If nil (the default value) then using this command to show invisible
  text makes visible only such text that was previously hidden by this
  command.  (More precisely, it makes visible only text whose
  `invisible' property has value `hide-comment'.)

From Lisp, a HIDE/SHOW value of `hide' hides comments.  Other values
show them.

This command does nothing in Emacs versions prior to Emacs 21, because
it needs `comment-search-forward'.

\(fn &optional HIDE/SHOW START END)" t nil)

;;;***

;;;### (autoloads nil "../elisp/lua-mode/lua-mode" "../elisp/lua-mode/lua-mode.el"
;;;;;;  (23327 54965 411829 365000))
;;; Generated autoloads from ../elisp/lua-mode/lua-mode.el

(autoload 'lua-mode "../elisp/lua-mode/lua-mode" "\
Major mode for editing Lua code.

\(fn)" t nil)

(add-to-list 'auto-mode-alist '("\\.lua\\'" . lua-mode))

(add-to-list 'interpreter-mode-alist '("lua" . lua-mode))

(defalias 'run-lua #'lua-start-process)

(autoload 'lua-start-process "../elisp/lua-mode/lua-mode" "\
Start a Lua process named NAME, running PROGRAM.
PROGRAM defaults to NAME, which defaults to `lua-default-application'.
When called interactively, switch to the process buffer.

\(fn &optional NAME PROGRAM STARTFILE &rest SWITCHES)" t nil)

;;;***

;;;### (autoloads nil "../elisp/undo-tree/undo-tree" "../elisp/undo-tree/undo-tree.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../elisp/undo-tree/undo-tree.el

(autoload 'undo-tree-mode "../elisp/undo-tree/undo-tree" "\
Toggle undo-tree mode.
With no argument, this command toggles the mode.
A positive prefix argument turns the mode on.
A negative prefix argument turns it off.

Undo-tree-mode replaces Emacs' standard undo feature with a more
powerful yet easier to use version, that treats the undo history
as what it is: a tree.

The following keys are available in `undo-tree-mode':

  \\{undo-tree-map}

Within the undo-tree visualizer, the following keys are available:

  \\{undo-tree-visualizer-mode-map}

\(fn &optional ARG)" t nil)

(defvar global-undo-tree-mode nil "\
Non-nil if Global Undo-Tree mode is enabled.
See the `global-undo-tree-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `global-undo-tree-mode'.")

(custom-autoload 'global-undo-tree-mode "../elisp/undo-tree/undo-tree" nil)

(autoload 'global-undo-tree-mode "../elisp/undo-tree/undo-tree" "\
Toggle Undo-Tree mode in all buffers.
With prefix ARG, enable Global Undo-Tree mode if ARG is positive;
otherwise, disable it.  If called from Lisp, enable the mode if
ARG is omitted or nil.

Undo-Tree mode is enabled in all buffers where
`turn-on-undo-tree-mode' would do it.
See `undo-tree-mode' for more information on Undo-Tree mode.

\(fn &optional ARG)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "../elisp/undo-tree/undo-tree" '("undo-" "turn-on-undo-tree-mode" "*undo-tree-id-counter*" "buffer-undo-tree")))

;;;***

;;;### (autoloads nil nil ("../elisp/ample-regexps/init-tryout.el"
;;;;;;  "../elisp/lua-mode/init-tryout.el") (0 0 0 0))

;;;***

(provide '.loaddefs)
;; Local Variables:
;; version-control: never
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; .loaddefs.el ends here

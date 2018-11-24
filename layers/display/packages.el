;;; packages.el --- display layer packages file for Spacemacs.

(defconst display-packages
  '()
  "The list of Lisp packages required by the display layer.

Each entry is either:

1. A symbol, which is interpreted as a package to be installed, or

2. A list of the form (PACKAGE KEYS...), where PACKAGE is the
    name of the package to be installed or loaded, and KEYS are
    any number of keyword-value-pairs.

    The following keys are accepted:

    - :excluded (t or nil): Prevent the package from being loaded
      if value is non-nil

    - :location: Specify a custom installation location.
      The following values are legal:

      - The symbol `elpa' (default) means PACKAGE will be
        installed using the Emacs package manager.

      - The symbol `local' directs Spacemacs to load the file at
        `./local/PACKAGE/PACKAGE.el'

      - A list beginning with the symbol `recipe' is a melpa
        recipe.  See: https://github.com/milkypostman/melpa#recipe-format")

(defun display/init()
  (set-fontset-font t '(#Xe100 . #Xe16f) "Fira Code Symbol"))

(defun display/post-init()
  (font-lock-add-keywords nil display/fira-code-font-lock-keywords-alist))

;;; packages.el ends here

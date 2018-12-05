(defconst my-edit-packages
  '(
    keyfreq
    reveal-in-osx-finder
    rufo
    ))

(defun my-edit/init-keyfreq ()
  "Initialize keyfreq package."
  (use-package keyfreq
    :defer t
    :config
    (progn
      (keyfreq-mode 1)
      (keyfreq-autosave-mode 1)))
  )

(defun my-edit/init-reveal-in-osx-finder ()
  "Initialize reveal-in-osx-finder package."
  (use-package reveal-in-osx-finder
               :defer t))

(defun my-edit/init-rufo ()
  "Initialize rufo."
  (use-package rufo))

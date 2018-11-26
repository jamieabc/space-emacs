(defconst my-edit-packages
  '(
    keyfreq
    reveal-in-osx-finder
    ))

(defun my-edit/init-keyfreq ()
  "Initialize keyfreq package."
  (use-package keyfreq
    :defer t
    :config
    (progn
      (keyfreq-mode t)
      (keyfreq-autosave-mode t)))
  )

(defun my-edit/init-reveal-in-osx-finder ()
  "Initialize reveal-in-osx-finder package."
  (use-package reveal-in-osx-finder
               :defer t))

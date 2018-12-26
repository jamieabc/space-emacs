(defconst my-edit-packages
  '(
    keyfreq
    rufo
    emr
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

(defun my-edit/init-rufo ()
  "Initialize rufo."
  (use-package rufo))

(defun my-edit/init-emr ()
  "Initialize emacs-refactor package."
  (use-package emr
    :defer t))

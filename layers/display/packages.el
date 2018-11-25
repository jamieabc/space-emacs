;;; packages.el --- display layer packages file for Spacemacs.

(defconst display-packages
  '(
    pretty-mode
    solarized-theme
    (prettify-utils :location (recipe :fetcher github
                                      :repo "Ilazki/prettify-utils.el"))

    (pretty-code :location local)
    (fira-code :location local)
    ))

(defun display/init-pretty-mode ()
  (use-package pretty-mode
    :config
    (progn
      (global-pretty-mode t)
      (pretty-deactivate-groups
       '(:equality :ordering :ordering-double :ordering-triple
                   :arrows :arrows-twoheaded :punctuation
                   :logic :sets))
      (pretty-activate-groups
       '(:greek)))))

(defun display/init-solarized-theme ()
  (use-package solarized-theme))

(defun display/init-prettify-utils ()
  (use-package prettify-utils))

(defun display/init-pretty-code ()
  (use-package pretty-code
    :config
    (progn
      (pretty-code-add-hook 'emacs-lisp-mode-hook '((:def "defun")))
      (pretty-code-add-hook 'hy-mode-hook '((:def "defn")
                                            (:lambda "fn")))
      (pretty-code-add-hook 'python-mode-hook '((:def "def")
                                                (:lambda "lambda"))))))

(defun display/init-fira-code ()
  (use-package fira-code
    :config
    (progn
      (fira-code-add-hook 'prog-mode-hook)))
  )

;;; packages.el ends here

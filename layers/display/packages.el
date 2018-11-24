;;; packages.el --- display layer packages file for Spacemacs.

(defconst display-packages
  '(
    pretty-mode
    solarized-theme
    (prettify-utils :location (recipe :fetcher github
                                      :repo "Ilazki/prettify-utils.el"))

    (pretty-code :location local)
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

;; (defun display/post-init-solarized-theme ()
;;   (when (configuration-layer/package-usedp 'solarized-theme)
;;     (set-fontset-font t '(#Xe100 . #Xe16f) "Fira Code Symbol")
;;     (font-lock-add-keywords nil display/fira-code-font-lock-keywords-alist)))

;;; packages.el ends here

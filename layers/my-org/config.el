;;; encryption
(setq encrypt-tag "crypt")
(setq org-crypt-tag-matcher encrypt-tag)  ;encrypt content with tag
(setq org-tags-exclude-from-inheritance (quote (encrypt-tag)))  ;avoid children double encrypted
(setq org-crypt-key nil)
(custom-set-variables
 '(org-directory "~/.emacs.d/org/"))

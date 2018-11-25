(defconst my-org-packages
  '(
    org-beautify-theme
    ob-go
    ob-http
    ))

(defun my-org/init-org-beautify-theme ()
  (use-package org-beautify-theme :defer t))

(defun my-org/init-org-crypt ()
  (use-package org
    :defer t
    :config 
    (progn
      (require 'org-crypt)
      (org-crypt-use-before-save-magic))))

(defun my-org/init-ob-go ()
  (use-package ob-go :defer t))

(defun my-org/init-ob-http ()
  (use-package org-ob-http :defer t))

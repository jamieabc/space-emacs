;;; packages.el --- find-file layer packages file for Spacemacs.
;;
;; Copyright (c) 2012-2017 Sylvain Benner & Contributors
;;
;; Author: Aaron <aaron@Aarons-MBP>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

;;; Commentary:

;; See the Spacemacs documentation and FAQs for instructions on how to implement
;; a new layer:
;;
;;   SPC h SPC layers RET
;;
;;
;; Briefly, each package to be installed or configured by this layer should be
;; added to `find-file-packages'. Then, for each package PACKAGE:
;;
;; - If PACKAGE is not referenced by any other Spacemacs layer, define a
;;   function `find-file/init-PACKAGE' to load and initialize the package.

;; - Otherwise, PACKAGE is already referenced by another Spacemacs layer, so
;;   define the functions `find-file/pre-init-PACKAGE' and/or
;;   `find-file/post-init-PACKAGE' to customize the package as it is loaded.

;;; Code:

(defconst find-file-packages
  '(
    (find-file-in-project :location elpa)
    )
  )

(defun find-file/init-find-file-in-project ()
  (use-package find-file-in-project :defer t))
;;; packages.el ends here

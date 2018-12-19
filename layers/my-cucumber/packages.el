(defconst my-cucumber-packages
  '(feature-mode))

(defun my-cucumber/init-feature-mode ()
  (use-package feature-mode
    :defer t
    :mode (("\\.feature\\'" . feature-mode))
    :init (progn (setq feature-step-search-path "features/**/*.rb"))
    :config
    (progn
      (spacemacs/set-leader-keys-for-major-mode 'feature-mode
        "s" 'feature-verify-scenario-at-pos
        "v" 'feature-verify-all-scenarios-in-buffer
        "f" 'feature-verify-all-scenarios-in-project
        "g" 'feature-goto-step-definition
        "." 'feature-goto-step-definition))))

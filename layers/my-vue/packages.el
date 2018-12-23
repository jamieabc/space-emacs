(defconst my-vue-packages
  '(
    ;; add-node-modules-path
    company-lsp
    flycheck
    vue-mode
    (lsp-vue :requires lsp-mode lsp-ui company-lsp)
    ))

;; (defun my-vue/post-init-add-node-modules-path ()
;;   "Initialized add-node-modules-path."
;;   (spacemacs/add-to-hooks #'add-node-modules-path '(vue-mode-hook)))

(defun my-vue/init-vue-mode ()
  "Initialize vue-mode."
  (use-package vue-mode
    :defer t
    :mode (("\\.vue\\'" . vue-mode))
    :commands lsp-vue-enable))

(defun my-vue/init-lsp-vue ()
  "Initialize lsp-vue."
  (use-package lsp-vue
    :defer t
    :init
    (add-hook 'vue-mode-hook #'lsp-vue-mmm-enable)
    :config
    (when vue-format-before-save
      (add-hook 'before-save-hook 'my-vue/vue-format-before-save))))

(defun vue/post-init-company-lsp ()
  (spacemacs|add-company-backends
    :backends company-lsp
    :modes vue-mode))

(defun vue/post-init-flycheck ()
  (spacemacs/enable-flycheck 'vue-mode))

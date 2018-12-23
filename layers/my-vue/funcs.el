(defun my-vue/vue-format-before-save ()
  "Format vue file when save."
  (interactive)
  (when (eq major-mode 'vue-mode) (lsp-format-buffer)))

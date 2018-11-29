(defun find-file/setup ()
  "Find file in project."
  (interactive)
  (setq-local ffip-patterns find-file/fit-patterns)
  (setq-local ffip-prune-patterns find-file/ffip-prune-patterns))

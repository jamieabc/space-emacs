(defun find-file/setup ()
  "Find file in project."
  (interactive)
  (setq-local ffip-patterns '(
                              "*.rb" "*.js" "*.yml" "*.css" "*.scss" "*.xml" "*.tmpl"
                              "*.json" "*.md" "*.lock" "*.sh" "*.java" "*.example"
                              "*.txt" "*.el" "*.hdl" "*.tst" "*.cmp" "*.erb" "*.php"
                              "*.m" "*.conf" "*.go" "*"))

  (setq-local ffip-prune-patterns '(
                                    "*/.git/*" "*/node_modules/*" "*/dist/*"
                                    )))

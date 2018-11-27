(defvar ffip-patterns '(
                        "*.rb" "*.js" "*.yml" "*.css" "*.scss" "*.xml" "*.tmpl" "*.json" "*.md"
                        "*.lock" "*.sh" "*.java" "*.example" "*.txt" "*.el" "*.hdl" "*.tst" "*.cmp"
                        "*.erb" "*.php" "*.m" "*.conf" "*.go" "*"
                        )
  "Searchable file types.")

(defvar ffip-prune-patterns '(
                              "*/.git/*" "*/node_modules/*" "*/dist/*"
                              ))

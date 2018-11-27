;;;###autoload
(defun org-dir-dired ()
  "Open Dired for Org files in and under `org-directory`."
  (interactive)
  (cd org-directory)
  (dired "*.org" "-lRF"))

;;;###autoload
(defun org-file-list ()
  "Open org file list at `org-directory`."
  (interactive)
  (let* ((cands
          (split-string
           (shell-command-to-string
            (concat
             "find "
             org-directory "*.org"))
           "\n" t)))
    (ivy-read "File: " cands
              :action #'find-file
              :caller 'org-file)
    ))

;;;###autoload
(defun org-file-today ()
  "Open today org file at `org-directory`."
  (interactive)
  (find-file
   (concat
    "~/.emacs.d/org/"
    (shell-command-to-string "echo -n $(date +%Y-%m-%d)") ".org")))

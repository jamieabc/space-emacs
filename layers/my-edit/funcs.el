;; git-timemachine
(defun my-edit/my-git-timemachine-show-selected-version ()
  "Show last (current) revision of file."
  (interactive)
  (let (collection)
    (setq collection
          (mapcar
           (lambda (rev)
             (cons
              (concat (substring (nth 0 rev) 0 7) "|"
                      (nth 5 rev) "|"
                      (nth 6 rev))
              rev))
           (git-timemachine--revisions)))
    (ivy-read "commits:"
              collection
              :action (lambda (rev)
                        (git-timemachine-show-revision rev)))))

(defun my-edit/my-git-timemachine ()
  "Open git snapshot with the selected version. Based on ivy-mode."
  (interactive)
  (unless (featurep 'git-timemachine)
    (require 'git-timemachine))
    (git-timemachine--start 'my-edit/my-git-timemachine-show-selected-version))

;; copy filename or path to clipboard
(defun my-edit/copy-filename-or-path-to-clipboard (path)
  "Copy current buffer filename and PATH to clipboard."
  (let ((filename (if (equal major-mode 'dired-mode)
                      default-directory
                    (buffer-file-name))))
    (message "path is %s" path)
    (when filename
      (if path (kill-new filename)
        (kill-new (replace-regexp-in-string "\\/.*\\/" "" filename)))
      (message "Copied buffer '%s' to clipboard." filename))))

(defun my-edit/copy-filename-to-clipboard ()
  "Copy current filename and path to clipboard."
  (interactive)
  (my-edit/copy-filename-or-path-to-clipboard nil))

(defun my-edit/copy-filename-and-path-to-clipboard ()
  "Copy current file path to clipboard."
  (interactive)
  (my-edit/copy-filename-or-path-to-clipboard t))

(defun my-edit/convert-region-to-i18n ()
  "Convert region to i18n."
  (interactive)
  (kill-ring-save (region-beginning) (region-end))
  (let* ((str (buffer-substring (region-beginning) (region-end)))
         (tmp (replace-regexp-in-string "\s" "_" str))
         (target (downcase tmp)))
    (delete-region (region-beginning) (region-end))
    (insert "{{ '")
    (insert target)
    (insert "' | translate }}")
    ))

(defun my-edit/insert-json-item ()
  "Insert json string."
  (interactive)
  (let* ((value (car kill-ring))
         (key (replace-regexp-in-string "[[:space:]]" "_" (downcase value))))
         (insert "\"")
         (insert key)
         (insert "\": \"")
         (insert value)
         (insert "\",")))

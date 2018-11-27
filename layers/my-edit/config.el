;; keyfreq
(setq keyfreq-excluded-commands
      '(self-insert-command
        abort-recursive-edit
        avy-goto-line
        avy-goto-char
        avy-goto-word-1
        avy-goto-char-timer
        avy-goto-word-or-subword-1
        backward-char
        backward-kill-word
        backward-word
        browse-kill-ring-insert-and-quit
        browse-kill-ring-forward
        browse-kill-ring-quit
        clipboard-kill-ring-save
        company-complete-common
        company-complete-number
        company-complete-selection
        company-ignore
        comint-send-input
        comint-previous-input
        delete-backward-char
        describe-variable
        erase-message-buffer
        eval-buffer
        exit-minibuffer
        ffip
        forward-char
        forward-word
        my-setup-develop-environment
        gnus
        gnus-summary-next-page
        gnus-summary-scroll-up
        gnus-topic-select-group
        gnus-summary-exit
        goto-line
        pwd
        ido-complete
        ido-delete-backward-updir
        ido-exit-minibuffer
        ido-switch-buffer
        indent-new-comment-line
        imenus
        isearch-abort
        isearch-other-meta-char
        isearch-other-control-char
        isearch-backward-regexp
        isearch-cancel
        isearch-delete-char
        isearch-exit
        isearch-forward-regexp
        isearch-printing-char
        isearch-repeat-forward
        isearch-ring-retreat
        ispell-minor-check
        js-mode
        js2-line-break
        keyboard-escape-quit
        keyboard-quit
        keyfreq-mode
        keyfreq-save-now
        keyfreq-show
        kill-sentence
        left-char
        minibuffer-complete
        minibuffer-complete-and-exit
        minibuffer-keyboard-quit
        move-beginning-of-line
        move-end-of-line
        mwheel-scroll
        newline-and-indent
        next-history-element
        next-line
        hippie-expand
        org-beginning-of-line
        org-ctrl-c-ctrl-c
        org-cycle
        org-end-of-line
        org-force-self-insert
        org-return
        org-self-insert-command
        org-todo
        package-menu-execute
        paredit-doublequote
        paredit-backward-delete
        paredit-backward-kill-word
        paredit-close-round
        paredit-newline
        paredit-open-round
        paredit-semicolon
        pcomplete
        previous-history-element
        previous-line
        push-button
        quit-window
        right-char
        save-buffer
        save-buffers-kill-terminal
        web-mode
        web-mode-jshint
        web-mode-test
        web-mode-reload
        web-mode-reveal
        web-mode-complete
        web-mode-navigate
        web-mode-surround
        web-mode-tag-beginning
        web-mode-part-beginning
        scroll-down-command
        scroll-up-command
        select-window-0
        select-window-1
        select-window-2
        select-window-3
        select-window-4
        select-window-5
        select-window-6
        select-window-7
        select-window-8
        select-window-9
        self-insert-command
        smarter-move-beginning-of-line
        smex
        suspend-frame
        swiper
        term-send-raw
        turnon-keyfreq-mode
        undefined ;; lambda function
        undo-tree-redo
        undo-tree-undo
        w3m-goto-url
        w3m-next-anchor
        w3m-view-this-url
        yas-compile-directory
        yas-expand
        yas-next-field-or-maybe-expand
        yank))

;; emacs abbrev
(define-abbrev-table 'global-abbrev-table
  '(
    ;; phrase
    ("btw" "by the way")
    ("jd" "[Deliver]")

    ;; programing
    ("eeq" "===")
    ("eqq" "==")
    ("neq" "!==")
    ("nqq" "!=")
    ("xar" "=>")
    ("lar" "<-")
    ("ass" ":=")
    ("ret" "return")

    ;; regex
    ("uaz" "\\([A-Za-z0-9]+\\)" )
    ("ubracket" "\\[\\([^]]+?\\)\\]" )
    ("ucurly" "“\\([^”]+?\\)”" )
    ("ud" "\\([0-9]+\\)" )
    ("udate" "\\([0-9][0-9][0-9][0-9]-[0-9][0-9]-[0-9][0-9]\\)" )
    ("udot" "\\(.\\)" )
    ("ustr" "\\([^\"]+?\\)" )
    ("utag" "\\([</>=\" A-Za-z0-9]+\\)" )

    ;; unicode
    ("mdd" "—" )
    ("uascii" "!\"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_`abcdefghijklmnopqrstuvwxyz{|}~" )

    ;; code
    ("uutf8" "-*- coding: utf-8 -*-" )
    ))
(set-default 'abbrev-mode t)
(setq save-abbrevs nil)

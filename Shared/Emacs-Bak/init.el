

(use-package emojify)

(use-package all-the-icons
  :init
  (unless (member "all-the-icons" (font-family-list))
    (all-the-icons-install-fonts t)))

(defvar ligatures-fixed '("|||>" "<|||" "<==>" "<!--" "####" "~~>" "***" "||=" "||>"
                                     ":::" "::=" "=:=" "===" "==>" "=!=" "=>>" "=<<" "=/=" "!=="
                                     "!!." ">=>" ">>=" ">>>" ">>-" ">->" "->>" "-->" "---" "-<<"
                                     "<~~" "<~>" "<*>" "<||" "<|>" "<$>" "<==" "<=>" "<=<" "<->"
                                     "<--" "<-<" "<<=" "<<-" "<<<" "<+>" "</>" "###" "#_(" "..<"
                                     "..." "+++" "/==" "///" "_|_" "www" "&&" "^=" "~~" "~@" "~="
                                     "~>" "~-" "**" "*>" "*/" "||" "|}" "|]" "|=" "|>" "|-" "{|"
                                     "[|" "]#" "::" ":=" ":>" ":<" "$>" "==" "=>" "!=" "!!" ">:"
                                     ">=" ">>" ">-" "-~" "-|" "->" "--" "-<" "<~" "<*" "<|" "<:"
                                     "<$" "<=" "<>" "<-" "<<" "<+" "</" "#{" "#[" "#:" "#=" "#!"
                                     "##" "#(" "#?" "#_" "%%" ".=" ".-" ".." ".?" "+>" "++" "?:"
                                     "?=" "?." "??" ";;" "/*" "/=" "/>" "//" "__" "~~" "(*" "*)"
                                     "\\\\" "://"))

(use-package ligature
  :config
  (ligature-set-ligatures 't ligatures-fixed)
  (global-ligature-mode t))

(use-package sudo-edit
  :commands (sudo-edit))

(use-package crux
  :config
  (crux-with-region-or-buffer indent-region)
  (crux-with-region-or-buffer untabify)
  (crux-with-region-or-point-to-eol kill-ring-save)
  (defalias 'rename-file-and-buffer #'crux-rename-file-and-buffer))

(add-to-list 'auto-mode-alist '("\\.md\\'" . text-mode))

(use-package nix-mode
  :mode "\\.nix\\'")


(use-package page-break-lines
  :diminish
  :init (global-page-break-lines-mode))


(defun Tn/evil-jump-character ()
  "moves point forward past the next character"
  (interactive)
  (evil-normal-state)
  (evil-forward-char)
  (evil-append 1))

(defun Tn/evil-pg-down-and-center ()
  (interactive)
  (evil-next-visual-line 30)
  (evil-scroll-line-to-center nil))

(defun Tn/evil-pg-up-and-center ()
  (interactive)
  (evil-previous-visual-line 30)
  (evil-scroll-line-to-center nil))

(defun Tn/forward-paragraph-and-center ()
  (interactive)
  (forward-paragraph)
  (evil-scroll-line-to-center nil))

(defun Tn/interactive-clipboard-yank ()
  (interactive)
  (clipboard-yank))

(defun Tn/backward-paragraph-and-center ()
  (interactive)
  (backward-paragraph)
  (evil-scroll-line-to-center nil))

(defun Tn/avy-jump-and-center ()
  "moves point forward past the next character"
  (interactive)
  (avy-goto-word-or-subword-1)
  (evil-scroll-line-to-center nil))

(defun Tn/new-todo-with-priority ()
  (interactive)
  (org-insert-heading-respect-content)
  (org-shiftright)
  (org-priority-up)
  (evil-append-line nil))

(use-package evil
  :init
  (setq evil-want-integration t
        evil-want-keybinding nil
        evil-want-C-u-scroll t
        evil-want-C-i-jump nil
        evil-cross-lines t
        evil-respect-visual-line-mode t
        evil-undo-system 'undo-tree)

  :config
  (evil-mode 1)
  (define-key evil-normal-state-map (kbd "<SPC>") 'harpoon-quick-menu-hydra)
  (define-key evil-normal-state-map (kbd "/") 'helm-regexp)
  (global-set-key (kbd "C-x c")  'centered-cursor-mode)

  (define-key winner-mode-map (kbd "<C-S-left>") #'winner-undo)
  (define-key winner-mode-map (kbd "<C-S-right>") #'winner-redo)

  (evil-ex-define-cmd "q" 'kill-this-buffer) ;Evil nomral mode ':q' kills active buffer
  (evil-ex-define-cmd "Q" 'kill-buffer-and-window) ; Evil normal mode ':Q' kills buffer and window

  (add-hook 'with-editor-mode-hook 'evil-insert-state))

(use-package iedit
  :diminish)

(use-package avy
  :after evil
  :config
  (setq avy-word-punc-regexp nil))


(use-package harpoon
  :after evil)

(use-package company
  :diminish company-mode
  :hook ((prog-mode
          LaTeX-mode
          latex-mode
          ess-r-mode
          graphviz-dot-mode-hook) . company-mode)
  :bind
  (:map company-active-map
        ("<tab>" . company-complete-selection)
        ("<return>" . nil))
  :custom
  (company-minimum-prefix-length 1)
  (company-tooltip-align-annotations t)
  (company-require-match 'never)
  (company-global-modes '(not shell-mode eaf-mode))
  (company-idle-delay 0.1)
  (company-show-numbers nil)
  :config

  (defun smarter-tab-to-complete ()
    "Try to `org-cycle', `yas-expand', and `yas-next-field' at current cursor position.

If all failed, try to complete the common part with `company-complete-common'"
    (interactive)
    (when yas-minor-mode
      (let ((old-point (point))
            (old-tick (buffer-chars-modified-tick))
            (func-list
             (if (equal major-mode 'org-mode) '(org-cycle yas-expand yas-next-field)
               '(yas-expand yas-next-field))))
        (catch 'func-suceed
          (dolist (func func-list)
            (ignore-errors (call-interactively func))
            (unless (and (eq old-point (point))
                         (eq old-tick (buffer-chars-modified-tick)))
              (throw 'func-suceed t)))
          (company-complete-common))))))

(use-package company-tabnine
  :after company
  :custom
  (company-tabnine-max-num-results 9)
  (company-tabnine-show-annotation nil)
  :bind
  (("M-q" . company-other-backend))
  :init
  (defun company//sort-by-tabnine (candidates)
    "Integrate company-tabnine with lsp-mode"
    (if (or (functionp company-backend)
            (not (and (listp company-backend) (memq 'company-tabnine company-backends))))
        candidates
      (let ((candidates-table (make-hash-table :test #'equal))
            candidates-lsp
            candidates-tabnine)
        (dolist (candidate candidates)
          (if (eq (get-text-property 0 'company-backend candidate)
                  'company-tabnine)
              (unless (gethash candidate candidates-table)
                (push candidate candidates-tabnine))
            (push candidate candidates-lsp)
            (puthash candidate t candidates-table)))
        (setq candidates-lsp (nreverse candidates-lsp))
        (setq candidates-tabnine (nreverse candidates-tabnine))
        (nconc (seq-take candidates-tabnine 3)
               (seq-take candidates-lsp 6)))))
  (defun lsp-after-open-tabnine ()
    "Hook to attach to `lsp-after-open'."
    (setq-local company-tabnine-max-num-results 3)
    (add-to-list 'company-transformers 'company//sort-by-tabnine t)
    (add-to-list 'company-backends '(company-capf :with company-tabnine :separate)))
  (defun company-tabnine-toggle (&optional enable)
    "Enable/Disable TabNine. If ENABLE is non-nil, definitely enable it."
    (interactive)
    (if (or enable (not (memq 'company-tabnine company-backends)))
        (progn
          (add-hook 'lsp-after-open-hook #'lsp-after-open-tabnine)
          (add-to-list 'company-backends #'company-tabnine)
          (when (bound-and-true-p lsp-mode) (lsp-after-open-tabnine))
          (message "TabNine enabled."))
      (setq company-backends (delete 'company-tabnine company-backends))
      (setq company-backends (delete '(company-capf :with company-tabnine :separate) company-backends))
      (remove-hook 'lsp-after-open-hook #'lsp-after-open-tabnine)
      (company-tabnine-kill-process)
      (message "TabNine disabled.")))
  :hook
  (kill-emacs . company-tabnine-kill-process)
  :config
  (company-tabnine-toggle t))

(use-package helm-company
  :after company
  :config
  (eval-after-load 'company
  '(progn
     (define-key company-mode-map (kbd "C-:") 'helm-company)
     (define-key company-active-map (kbd "C-:") 'helm-company))))

(use-package lsp-mode
  :commands lsp
  :custom
  (lsp-keymap-prefix "C-x l")
  (lsp-auto-guess-root nil)
  (lsp-prefer-flymake nil) ; Use flycheck instead of flymake
  (lsp-enable-file-watchers nil)
  (lsp-enable-folding nil)
  (read-process-output-max (* 1024 1024))
  (lsp-keep-workspace-alive nil)
  (lsp-eldoc-hook nil)
  :bind (:map lsp-mode-map ("C-c C-f" . lsp-format-buffer))
  :hook
  ((SCAD//1 . lsp-deferred)
   (lsp-mode . lsp-enable-which-key-integration))
  :config
  (defun lsp-update-server ()
    "Update LSP server."
    (interactive)
    ;; Equals to `C-u M-x lsp-install-server'
    (lsp-install-server t)))

(use-package lsp-ui
  :after lsp-mode
  :diminish
  :commands lsp-ui-mode
  :custom-face
  (lsp-ui-doc-background ((t (:background nil))))
  (lsp-ui-doc-header ((t (:inherit (font-lock-string-face italic)))))
  :bind
  (:map lsp-ui-mode-map
        ([remap xref-find-definitions] . lsp-ui-peek-find-definitions)
        ([remap xref-find-references] . lsp-ui-peek-find-references)
        ("C-c u" . lsp-ui-imenu)
        ("M-i" . lsp-ui-doc-focus-frame))
  (:map lsp-mode-map
        ("M-n" . forward-paragraph)
        ("M-e" . backward-paragraph))
  :custom
  (lsp-ui-doc-header t)
  (lsp-ui-doc-include-signature t)
  (lsp-ui-doc-border (face-foreground 'default))
  (lsp-ui-sideline-enable nil)
  (lsp-ui-sideline-ignore-duplicate t)
  (lsp-ui-sideline-show-code-actions nil)
  :config
  (when (display-graphic-p)
    (setq lsp-ui-doc-use-webkit t))
  (defadvice lsp-ui-imenu (after hide-lsp-ui-imenu-mode-line activate)
    (setq mode-line-format nil))
  (advice-add #'keyboard-quit :before #'lsp-ui-doc-hide))

(use-package helm-lsp
  :after helm lsp-mode
  :config
  (define-key lsp-mode-map [remap xref-find-apropos] #'helm-lsp-workspace-symbol))

(use-package dap-mode
  :diminish
  :bind
  (:map dap-mode-map
        (("<f12>" . dap-debug)
         ("<f8>" . dap-continue)
         ("<f9>" . dap-next)
         ("<M-f11>" . dap-step-in)
         ("C-M-<f11>" . dap-step-out)
         ("<f7>" . dap-breakpoint-toggle))))

(use-package hydra)

(setq ibuffer-formats
      '((mark modified read-only " "
              (name 40 40 :left :elide) ; change: 30s were originally 18s
              " "
              (size 9 -1 :right)
              " "
              (mode 9 9 :left :elide)
              " " filename-and-process)
        (mark " "
              (name 16 -1)
              " " filename)))

(with-eval-after-load 'ibuf-ext
  (define-ibuffer-sorter alphabetic-ignore-case
    "Sort the buffers by their names, ignoring case."
    (:description "buffer name")
    (string-collate-lessp
     (buffer-name (car a))
     (buffer-name (car b))
     nil t))
  ;; Assign the new command to the 'Name' header keymap.
  (define-key ibuffer-name-header-map [(mouse-1)]
    'ibuffer-do-sort-by-alphabetic-ignore-case)
  (put 'ibuffer-make-column-name 'header-mouse-map
       ibuffer-name-header-map))

(setq ibuffer-expert t)
(setq-default ibuffer-default-sorting-mode 'alphabetic-ignore-case)

(add-hook 'ibuffer-mode-hook #'ibuffer-auto-mode)
(remove-hook 'kill-buffer-query-functions 'process-kill-buffer-query-function)

(use-package helm-flyspell
  :after company helm
  :config
  (define-key flyspell-mode-map (kbd "C-;") 'helm-flyspell-correct))

(dolist (hook '(text-mode-hook))
  (add-hook hook (lambda ()
                   (flyspell-mode 1))))

(add-hook 'prog-mode-hook #'flyspell-prog-mode)
(add-hook 'text-mode-hook #'flyspell-mode)

(use-package flycheck
  :diminish
  :hook (after-init . global-flycheck-mode)
  :commands (flycheck-add-mode)
  :custom
  (flycheck-global-modes
   '(not outline-mode diff-mode shell-mode eshell-mode term-mode))
  (flycheck-emacs-lisp-load-path 'inherit)
  (flycheck-indication-mode (if (display-graphic-p) 'right-fringe 'right-margin)))

(use-package helm-flycheck
  :after helm flycheck
  :config
  (eval-after-load 'flycheck
    '(define-key flycheck-mode-map (kbd "C-c ! h") 'helm-flycheck)))

(use-package undo-tree)
(global-undo-tree-mode 1)
(setq undo-tree-history-directory-alist '(("." . "~/.config/emacs/backup-files"))
      evil-want-fine-undo t
      backup-directory-alist '(("." . "~/.config/emacs/backup-files")))

(when (timerp undo-auto-current-boundary-timer)
  (cancel-timer undo-auto-current-boundary-timer))

(fset 'undo-auto--undoable-change
      (lambda () (add-to-list 'undo-auto--undoably-changed-buffers (current-buffer))))

(fset 'undo-auto-amalgamate 'ignore)


(use-package org-bullets
  :hook (org-mode . org-bullets-mode)
  :custom
  (org-bullets-bullet-list '("◉" "○" "●" "○" "●" "○" "●")))

(use-package org-appear
  :after evil
  :config
  (setq org-appear-trigger 'manual
        org-appear-autoemphasis t
        org-appear-autolinks t
        org-link-descriptive t
        org-pretty-entities t
        org-appear-autoentities t
        org-appear-autosubmarkers t
        org-appear-autokeywords t
        org-appear-inside-latex t)

  (add-hook 'org-mode-hook 'org-appear-mode)
  (add-hook 'org-mode-hook (lambda ()
                             (add-hook 'evil-insert-state-entry-hook
                                       #'org-appear-manual-start
                                       nil
                                       t)
                             (add-hook 'evil-insert-state-exit-hook
                                       #'org-appear-manual-stop
                                       nil
                                       t))))

(defun Tn/org-mode-visual-fill ()
  (setq visual-fill-column-width 100
        visual-fill-column-center-text t)
  (visual-fill-column-mode 1))

(use-package visual-fill-column
  :hook (org-mode . Tn/org-mode-visual-fill))

(use-package ox-hugo
  :after ox)

(setq org-export-backends '(ascii html icalendar latex md odt))

(require 'org-tempo)
(add-to-list 'org-structure-template-alist
             '("el" . "src emacs-lisp\n"))
(add-to-list 'org-structure-template-alist
             '("en" . "src nix\n"))

(defun Tn/org-mode-setup ()
  (org-indent-mode 1)
  (variable-pitch-mode 1)
  (auto-fill-mode 0)
  (visual-line-mode 1))

(add-hook 'org-capture-mode-hook 'evil-insert-state)
(add-hook 'org-log-buffer-setup-hook 'evil-insert-state)

(advice-add 'org-ctrl-c-ctrl-c  :after #'save-buffer)
(advice-add 'org-deadline       :after #'save-buffer)
(advice-add 'org-schedule       :after #'save-buffer)
(advice-add 'org-store-log-note :after #'save-buffer)
(advice-add 'org-store-log-note :after #'org-cycle)

(defun Tn/org-font-setup ()
;; This is magic code that changes the font of non-heading bullet point lists.
(font-lock-add-keywords 'org-mode
                        '(("^ *\\([-]\\) "
                           (0 (prog1 () (compose-region (match-beginning 1) (match-end 1) "•"))))))

(dolist (face '((org-level-1 . "Azure3")
                (org-level-2 . "Azure3")
                (org-level-3 . "Azure3")
                (org-level-4 . "Azure3")
                (org-level-5 . "Azure3")
                (org-level-6 . "Azure3")
                (org-level-7 . "Azure3")
                (org-level-8 . "Azure3")))
  (set-face-attribute (car face) nil :font "Iosevka"
                      :weight 'regular :height 1.3
                      :foreground (cdr face)))

(set-face-attribute 'org-link nil    :foreground "cyan" :inherit 'fixed-pitch)
(set-face-attribute 'org-tag nil     :height 0.9 :inherit 'fixed-pitch)
(set-face-attribute 'org-block nil    :inherit 'fixed-pitch)
(set-face-attribute 'org-table nil    :foreground "dark cyan" :inherit 'fixed-pitch)
(set-face-attribute 'org-formula nil  :foreground "dark cyan" :inherit 'fixed-pitch)
(set-face-attribute 'org-code nil     :foreground "SpringGreen3"
                    :weight 'semi-bold :inherit '(shadow fixed-pitch))
(set-face-attribute 'org-verbatim nil :foreground "SpringGreen3"
                    :weight 'semi-bold :inherit '(shadow fixed-pitch))
(set-face-attribute 'org-table nil    :inherit '(shadow fixed-pitch))
(set-face-attribute 'org-special-keyword nil :inherit '(font-lock-comment-face fixed-pitch))
(set-face-attribute 'org-meta-line nil :inherit '(font-lock-comment-face fixed-pitch))
(set-face-attribute 'org-checkbox nil  :inherit 'fixed-pitch)
(set-face-attribute 'line-number nil :inherit 'fixed-pitch)
(set-face-attribute 'line-number-current-line nil :inherit 'fixed-pitch))

(setq org-priority-faces '((?A . (:foreground "medium spring green" :weight 'bold
                                              :inherit 'fixed-pitch))
                           (?B . (:foreground "deep sky blue" :weight 'bold
                                              :inherit 'fixed-pitch))
                           (?C . (:foreground "blue violet" :weight 'bold
                                              :inherit 'fixed-pitch))
                           (?D . (:foreground "dim grey" :weight 'bold
                                              :inherit 'fixed-pitch))
                           (?E . (:foreground "dark red" :weight 'bold
                                              :inherit 'fixed-pitch))))

(defun Tn/org-find-time-file-property (property &optional anywhere)
  "Return the position of the time file PROPERTY if it exists.
When ANYWHERE is non-nil, search beyond the preamble."
  (save-excursion
    (goto-char (point-min))
    (let ((first-heading
           (save-excursion
             (re-search-forward org-outline-regexp-bol nil t))))
      (when (re-search-forward (format "^#\\+%s:" property)
                               (if anywhere nil first-heading)
                               t)
        (point)))))

(defun Tn/org-has-time-file-property-p (property &optional anywhere)
  "Return the position of time file PROPERTY if it is defined.
As a special case, return -1 if the time file PROPERTY exists but
is not defined."
  (when-let ((pos (Tn/org-find-time-file-property property anywhere)))
    (save-excursion
      (goto-char pos)
      (if (and (looking-at-p " ")
               (progn (forward-char)
                      (org-at-timestamp-p 'lax)))
          pos
        -1))))

(defun Tn/org-set-time-file-property (property &optional anywhere pos)
  "Set the time file PROPERTY in the preamble.
When ANYWHERE is non-nil, search beyond the preamble.
If the position of the file PROPERTY has already been computed,
it can be passed in POS."
  (when-let ((pos (or pos
                      (Tn/org-find-time-file-property property))))
    (save-excursion
      (goto-char pos)
      (if (looking-at-p " ")
          (forward-char)
        (insert " "))
      (delete-region (point) (line-end-position))
      (let* ((now (format-time-string "[%Y-%m-%d %a %H:%M]")))
        (insert now)))))

(defun Tn/org-set-last-modified ()
  "Update the LAST_MODIFIED file property in the preamble."
  (when (derived-mode-p 'org-mode)
    (Tn/org-set-time-file-property "LAST_MODIFIED")))

(defun Tn/current-year () (interactive)
  (shell-command-to-string "echo -n $(date +%Y)"))

(defun Tn/todays-weather ()
  (interactive)
  (shell-command-to-string "curl -s https://wttr.in/39.96,-82.99\\?ndTA | head -n 17 | tail -n +8"))

(setq org-todo-keywords
      (quote ((sequence "TODO(t)" "NEXT(n)" "INPROGRESS(i!/!)" "ACTIVE(a!/!)"
                        "|" "DONE(d!/!)")
              (sequence "GOAL(g@/!)" "WAITING(w@/!)" "HOLD(h@/!)"
                         "REVIEW" "|" "CANCELLED(c@/!)"))))

(setq org-todo-keyword-faces
      (quote (("TODO" :foreground "deep sky blue" :weight bold)
              ("NEXT" :foreground "medium spring green" :weight bold)
              ("ACTIVE" :foreground "cyan" :weight bold)
              ("DONE" :foreground "dim gray" :weight bold)
              ("WAITING" :foreground "blue violet" :weight bold)
              ("REVIEW" :foreground "blue violet" :weight bold)
              ("HOLD" :foreground "dark red" :weight bold)
              ("CANCELLED" :foreground "dim gray" :weight bold))))


(defun Tn/org-todo-quick-done ()
(interactive)
(org-todo "DONE"))

(setq org-ellipsis " ▾"
      org-highest-priority ?A
      org-default-priority ?B
      org-lowest-priority ?D
      org-habit-graph-column 100
      org-hide-emphasis-markers t
      org-src-fontify-natively t
      org-fontify-quote-and-verse-blocks t
      org-fontify-done-headline t
      org-src-tab-acts-natively t
      org-hide-block-startup nil
      org-src-preserve-indentation nil
      org-startup-folded t
      org-image-actual-width 600
      org-treat-S-cursor-todo-selection-as-state-change nil
      org-startup-with-inline-images t
      org-cycle-separator-lines 2
      org-confirm-babel-evaluate nil
      org-capture-bookmark nil
      evil-auto-indent nil
      org-src-preserve-indentation nil
      org-export-with-todo-keywords nil
      org-edit-src-content-indentation 0
      org-return-follows-link t
      org-refile-targets '((org-agenda-files :maxlevel . 10))
      org-refile-use-outline-path 'file
      org-outline-path-complete-in-steps nil
      org-refile-allow-creating-parent-nodes 'confirm
      browse-url-browser-function 'eww-browse-url
      org-enforce-todo-dependencies t
      org-enforce-todo-checkbox-dependencies t
      org-odd-levels-only t
      org-fold-catch-invisible-edits 'show-and-error
      org-directory "~/Apocrypha/Org/"
      org-archive-location (format "~/Ferronomicon/\%s/\%s-archvie.org::datetree/" (Tn/current-year) (Tn/current-year)))

(use-package org
:hook
(org-mode . Tn/org-mode-setup)
(org-mode . Tn/org-font-setup)
(before-save . Tn/org-set-last-modified)

:bind
(("C-c l" . Tn/org-link-hydra/body)
 ("s-n" . org-clock-in)
 ("s-N" . org-clock-goto)
 ("s-e" . Tn/org-todo-quick-done)
 ("s-E" . org-clock-in-last)
 ("s-<return>" . Tn/new-todo-with-priority)
 ("C-c h" . Tn/org-heading-actions-hydra/body))

:config
(org-babel-do-load-languages
 'org-babel-load-languages
 '((emacs-lisp . t)
   (lisp . t)
   (gnuplot . t)
   (latex . t)
   (scheme . t)))

(push '("conf-unix" . conf-unix) org-src-lang-modes))

(defhydra Tn/org-link-hydra (:color blue
                             :hint nil)
  "
      ^Link Actions^
----------------------------
_n_: Insert      _t_: Tangle
_y_: Yank        _o_: Open
     _f_: FireFox
^ ^
^ ^

"
  ("n" org-insert-link)
  ("y" org-store-link)
  ("t" org-babel-tangle)
  ("o" org-open-at-point)
  ("f" Tn/open-link-firefox)
  ("q" nil "Cancel" :color blue))

(defun Tn/open-link-firefox ()
  "Opens the Org-mode link under point with Firefox."
  (interactive)
  (let ((link-at-point (org-element-context)))
      (browse-url-firefox (org-element-property :raw-link link-at-point))))

(defhydra Tn/org-heading-actions-hydra (:color blue
                                        :hint nil)
  "
      ^Heading Actions^
-------------------------------
_t_: Tags         _s_: Schedual
_h_: Todo State   _d_: Deadline
_m_: Time stamp; , for inactive
^ ^
^ ^
"
  ("t" Tn/org-tag-main-hydra/body)
  ("h" org-todo)
  ("s" org-schedule)
  ("d" org-deadline)
  ("m" org-time-stamp)
  ("q" nil "Cancel" :color blue))

(use-package org-ql)

(use-package helm-org-ql)

(use-package org-transclusion)

(defhydra Tn/org-tag-main-hydra (:color blue
                                 :hint nil)
  "
             ^Tag Type^
-----------------------------------------------
_m_: Misc              _f_: Food


_p_: People            _l_: Location
_a_: Academic          _c_: Content
_f_: Physical Project  _d_: Digital Project
        _k_: Convert to NSFW
"
  ("m" Tn/add-misc-tag)
  ("p" Tn/add-food-tag)
  ("p" Tn/org-tag-people-hydra/body)
  ("l" Tn/org-tag-location-hydra/body)
  ("a" Tn/org-tag-academic-hydra/body)
  ("c" Tn/org-tag-content-hydra/body)
  ("k" Tn/convert-to-NSFW)
  ("f" Tn/org-tag-physical-project-hydra/body)
  ("d" Tn/org-tag-digital-project-hydra/body)
  ("q" nil "Cancel" :color blue))

(defun Tn/convert-to-NSFW ()
  (interactive)
 (org-set-tags (delete "SFW" (org-get-tags)))
 (org-set-tags (append (org-get-tags) '("NSFW"))))

(defun Tn/add-misc-tag ()
  (interactive)
 (org-set-tags (append (org-get-tags) '("MISC"))))

(defun Tn/add-food-tag ()
  (interactive)
 (org-set-tags (append (org-get-tags) '("FOOD"))))

(defhydra Tn/org-tag-people-hydra (:color blue
                                 :hint nil)
  "
              ^People^
-----------------------------------------------
_o_: Out Going   _i_: In Coming
_p_: Phone       _e_: Email
"
  ("o" Tn/org-tag-out-going)
  ("i" Tn/org-tag-in-coming)
  ("e" Tn/org-tag-phone)
  ("p" Tn/org-tag-email)
  ("r" Tn/org-tag-main-hydra/body "Return" :color blue )
  ("q" nil "Cancel" :color blue))

(defun Tn/org-tag-out-going ()
  (interactive)
  (org-set-tags (append (org-get-tags) '("@OUT-GOING"))))

(defun Tn/org-tag-in-coming ()
  (interactive)
  (org-set-tags (append (org-get-tags) '("@IN-COMING"))))

(defun Tn/org-tag-phone ()
  (interactive)
  (org-set-tags (append (org-get-tags) '("PHONE"))))

(defun Tn/org-tag-email ()
  (interactive)
  (org-set-tags (append (org-get-tags) '("EMAIL"))))

(defhydra Tn/org-tag-location-hydra (:color blue
                                 :hint nil)
  "
        ^Location^
--------------------------------------
_h_: Home    _s_: Studio
_d_: Desk    _m_: MakerSpace
_p_: Phone   _c_: Car
_f_: CF-Gym  _o_: Oly-Gym
    _v_: VA-Hospital
"
  ("h" Tn/org-tag-home)
  ("d" Tn/org-tag-desk)
  ("p" Tn/org-tag-phone)
  ("f" Tn/org-tag-cf-gym)
  ("s" Tn/org-tag-studio)
  ("m" Tn/org-tag-makespace)
  ("c" Tn/org-tag-car)
  ("v" Tn/org-tag-va-hospital)
  ("o" Tn/org-tag-oly-gym)
  ("r" Tn/org-tag-main-hydra/body "Return" :color blue )
  ("q" nil "Cancel" :color blue))

(defun Tn/org-tag-home ()
  (interactive)
  (org-set-tags (append (org-get-tags) '("@HOME"))))

(defun Tn/org-tag-desk ()
  (interactive)
  (org-set-tags (append (org-get-tags) '("@DESK"))))

(defun Tn/org-tag-phone ()
  (interactive)
  (org-set-tags (append (org-get-tags) '("@PHONE"))))

(defun Tn/org-tag-cf-gym ()
  (interactive)
  (org-set-tags (append (org-get-tags) '("@CF-GYM"))))

(defun Tn/org-tag-studio ()
  (interactive)
  (org-set-tags (append (org-get-tags) '("@STUDIO"))))

(defun Tn/org-tag-makerspace ()
  (interactive)
  (org-set-tags (append (org-get-tags) '("@MAKESPACE"))))

(defun Tn/org-tag-car ()
  (interactive)
  (org-set-tags (append (org-get-tags) '("@CAR"))))

(defun Tn/org-tag-oly-gym ()
  (interactive)
  (org-set-tags (append (org-get-tags) '("@OLY-GYM"))))

(defun Tn/org-tag-va-hospital ()
  (interactive)
  (org-set-tags (append (org-get-tags) '("@VA-HOSPITAL"))))

(defhydra Tn/org-tag-academic-hydra (:color blue
                                     :hint nil)
  "
             ^Academic Subject^
-----------------------------------------------
_f_: Physics   _l_: Linguistics
_m_: Maths     _c_: Computer Science
_h_: History   _t_: Philosophy
_k_: Korean    _l_: Lojban
_a_: Anatomy   _b_: Architecture
"
  ("f" Tn/org-tag-physics)
  ("m" Tn/org-tag-maths)
  ("h" Tn/org-tag-history)
  ("k" Tn/org-tag-korean)
  ("a" Tn/org-tag-anatomy)
  ("l" Tn/org-tag-linguistics)
  ("c" Tn/org-tag-computer-science)
  ("t" Tn/org-tag-philosophy)
  ("l" Tn/org-tag-lojban)
  ("b" Tn/org-tag-architecture)
  ("r" Tn/org-tag-main-hydra/body "Return" :color blue )
  ("q" nil "Cancel" :color blue))

(defun Tn/org-tag-physics ()
  (interactive)
  (org-set-tags (append (org-get-tags) '("PHYSICS"))))

(defun Tn/org-tag-linguistics ()
  (interactive)
  (org-set-tags (append (org-get-tags) '("LINGUISTICS"))))

(defun Tn/org-tag-maths ()
  (interactive)
  (org-set-tags (append (org-get-tags) '("MATHS"))))

(defun Tn/org-tag-computer-science ()
  (interactive)
  (org-set-tags (append (org-get-tags) '("COMPUTER-SCIENCE"))))

(defun Tn/org-tag-history ()
  (interactive)
  (org-set-tags (append (org-get-tags) '("HISTORY"))))

(defun Tn/org-tag-philosophy ()
  (interactive)
  (org-set-tags (append (org-get-tags) '("PHILOSOPHY"))))

(defun Tn/org-tag-korean ()
  (interactive)
  (org-set-tags (append (org-get-tags) '("KOREAN"))))

(defun Tn/org-tag-lojban ()
  (interactive)
  (org-set-tags (append (org-get-tags) '("LOJBAN"))))

(defun Tn/org-tag-anatomy ()
  (interactive)
  (org-set-tags (append (org-get-tags) '("ANATOMY"))))

(defun Tn/org-tag-Architecture ()
  (interactive)
  (org-set-tags (append (org-get-tags) '("ARCHITECTURE"))))

(defhydra Tn/org-tag-content-hydra (:color blue
                                    :hint nil)
  "
             ^Content Types^
-----------------------------------------------
_s_: Stream    _v_: Video
_t_: Text      _c_: Clips
  _p_: Social Promotion
"
  ("s" Tn/org-tag-stream)
  ("v" Tn/org-tag-video)
  ("t" Tn/org-tag-text)
  ("p" Tn/org-tag-social)
  ("c" Tn/org-tag-short)
  ("r" Tn/org-tag-main-hydra/body "Return" :color blue )
  ("q" nil "Cancel" :color blue))

(defun Tn/org-tag-stream ()
  (interactive)
  (org-set-tags (append (org-get-tags) '("STREAM"))))

(defun Tn/org-tag-video ()
  (interactive)
  (org-set-tags (append (org-get-tags) '("VIDEO"))))

(defun Tn/org-tag-text ()
  (interactive)
  (org-set-tags (append (org-get-tags) '("TEXT"))))

(defun Tn/org-tag-text ()
  (interactive)
  (org-set-tags (append (org-get-tags) '("SOCIAL"))))

(defun Tn/org-tag-short ()
  (interactive)
  (org-set-tags (append (org-get-tags) '("CLIP"))))

(defhydra Tn/org-tag-physical-project-hydra (:color blue
                                             :hint nil)
  "
         ^Physical Project^
-----------------------------------------------
_i_: Illustration  _p_: Painting
_s_: Sculpture     _e_: Electronics
        _f_: Fabrication
"
  ("i" Tn/org-tag-illustration-hydra/body)
  ("s" Tn/org-tag-sculpture-hydra/body)
  ("p" Tn/org-tag-painting-hydra/body)
  ("e" Tn/org-tag-electronics-hydra/body)
  ("f" Tn/org-tag-fabrication-hydra/body)
  ("r" Tn/org-tag-main-hydra/body "Return" :color blue )
  ("q" nil "Cancel" :color blue))

(defhydra Tn/org-tag-sculpture-hydra (:color blue
                                      :hint nil)
  "
       ^Sculpture^
-----------------------------
_k_: Clay     _w_: Wax
_s_: Stone    _o_: Wood
_c_: Chasing  _e_: Engraving
"
  ("k" Tn/org-tag-sculpture-clay)
  ("w" Tn/org-tag-sculpture-wax)
  ("s" Tn/org-tag-sculpture-stone)
  ("o" Tn/org-tag-sculpture-wood)
  ("c" Tn/org-tag-sculpture-chasing)
  ("e" Tn/org-tag-sculpture-engraving)
  ("r" Tn/org-tag-physical-project-hydra/body "Return" :color blue )
  ("q" nil "Cancel" :color blue))

(defun Tn/org-tag-sculpture-chasing ()
  (interactive)
  (org-set-tags (append (org-get-tags) '("SCULPTURE")))
  (org-set-tags (append (org-get-tags) '("CHASING"))))

(defun Tn/org-tag-sculpture-engraving ()
  (interactive)
  (org-set-tags (append (org-get-tags) '("SCULPTURE")))
  (org-set-tags (append (org-get-tags) '("ENGRAVING"))))

(defun Tn/org-tag-sculpture-wood ()
  (interactive)
  (org-set-tags (append (org-get-tags) '("SCULPTURE")))
  (org-set-tags (append (org-get-tags) '("WOOD"))))

(defun Tn/org-tag-sculpture-stone ()
  (interactive)
  (org-set-tags (append (org-get-tags) '("SCULPTURE")))
  (org-set-tags (append (org-get-tags) '("STONE"))))

(defun Tn/org-tag-sculpture-wax ()
  (interactive)
  (org-set-tags (append (org-get-tags) '("SCULPTURE")))
  (org-set-tags (append (org-get-tags) '("WAX"))))

(defun Tn/org-tag-sculpture-clay ()
  (interactive)
  (org-set-tags (append (org-get-tags) '("SCULPTURE")))
  (org-set-tags (append (org-get-tags) '("CLAY"))))

(defhydra Tn/org-tag-illustration-hydra (:color blue
                                         :hint nil)
  "
     ^Illustration^
-----------------------------
_i_: Ink      _g_: Graphite
_p_: Pastel   _c_: Charcoal
"
  ("g" Tn/org-tag-illustration-graphite)
  ("i" Tn/org-tag-illustration-ink)
  ("c" Tn/org-tag-illustration-charcoal)
  ("p" Tn/org-tag-illustration-pastel)
  ("r" Tn/org-tag-physical-project-hydra/body "Return" :color blue )
  ("q" nil "Cancel" :color blue))

(defun Tn/org-tag-illustration-graphite ()
  (interactive)
  (org-set-tags ":ILLUSTRATION:")
  (org-set-tags (append (org-get-tags) '("ILLUSTRATION")))
  (org-set-tags (append (org-get-tags) '("GRAPHITE"))))

(defun Tn/org-tag-illustration-ink ()
  (interactive)
  (org-set-tags (append (org-get-tags) '("ILLUSTRATION")))
  (org-set-tags (append (org-get-tags) '("INK"))))

(defun Tn/org-tag-illustration-charcoal ()
  (interactive)
  (org-set-tags (append (org-get-tags) '("ILLUSTRATION")))
  (org-set-tags (append (org-get-tags) '("CHARCOAL"))))

(defun Tn/org-tag-illustration-pastel ()
  (interactive)
  (org-set-tags (append (org-get-tags) '("ILLUSTRATION")))
  (org-set-tags (append (org-get-tags) '("PASTEL"))))

(defhydra Tn/org-tag-painting-hydra (:color blue
                                     :hint nil)
  "
     ^Painting^
-----------------------------
_o_: Oil   _a_: Acrylic
_i_: Ink   _w_: Water Color
"
  ("o" Tn/org-tag-painting-oil)
  ("i" Tn/org-tag-painting-ink)
  ("a" Tn/org-tag-painting-acrylic)
  ("w" Tn/org-tag-painting-water-color)
  ("r" Tn/org-tag-physical-project-hydra/body "Return" :color blue )
  ("q" nil "Cancel" :color blue))

(defun Tn/org-tag-painting-oil ()
  (interactive)
  (org-set-tags ":PAINTING:")
  (org-set-tags (append (org-get-tags) '("PAINTING")))
  (org-set-tags (append (org-get-tags) '("OIL"))))

(defun Tn/org-tag-painting-acrylic ()
  (interactive)
  (org-set-tags (append (org-get-tags) '("PAINTING")))
  (org-set-tags (append (org-get-tags) '("ACRYLIC"))))

(defun Tn/org-tag-painting-water-color ()
  (interactive)
  (org-set-tags (append (org-get-tags) '("PAINTING")))
  (org-set-tags (append (org-get-tags) '("WATER-COLOR"))))

(defun Tn/org-tag-painting-ink ()
  (interactive)
  (org-set-tags (append (org-get-tags) '("PAINTING")))
  (org-set-tags (append (org-get-tags) '("INK"))))

(defhydra Tn/org-tag-fabrication-hydra (:color blue
                                        :hint nil)
  "
       ^Fabrication^
--------------------------------
_w_: Welding   _m_: Machining
_c_: Casting   _f_: Forging
_k_: Carpentry _s_: stone
"
  ("w" Tn/org-tag-fabrication-welding)
  ("m" Tn/org-tag-fabrication-machining)
  ("c" Tn/org-tag-fabrication-casting)
  ("f" Tn/org-tag-fabrication-forging)
  ("k" Tn/org-tag-fabrication-carpentry)
  ("s" Tn/org-tag-fabrication-stone)
  ("r" Tn/org-tag-physical-project-hydra/body "Return" :color blue )
  ("q" nil "Cancel" :color blue))

(defun Tn/org-tag-fabrication-welding ()
  (interactive)
  (org-set-tags (append (org-get-tags) '("FABRICATION")))
  (org-set-tags (append (org-get-tags) '("WELDING"))))

(defun Tn/org-tag-fabrication-machining ()
  (interactive)
  (org-set-tags (append (org-get-tags) '("FABRICATION")))
  (org-set-tags (append (org-get-tags) '("MACHINING"))))

(defun Tn/org-tag-fabrication-casting ()
  (interactive)
  (org-set-tags (append (org-get-tags) '("FABRICATION")))
  (org-set-tags (append (org-get-tags) '("CASTING"))))

(defun Tn/org-tag-fabrication-forging ()
  (interactive)
  (org-set-tags (append (org-get-tags) '("FABRICATION")))
  (org-set-tags (append (org-get-tags) '("FORGING"))))

(defun Tn/org-tag-fabrication-carpentry ()
  (interactive)
  (org-set-tags (append (org-get-tags) '("FABRICATION")))
  (org-set-tags (append (org-get-tags) '("CARPENTRY"))))

(defun Tn/org-tag-fabrication-concrete ()
  (interactive)
  (org-set-tags (append (org-get-tags) '("FABRICATION")))
  (org-set-tags (append (org-get-tags) '("STONE"))))

(defhydra Tn/org-tag-electronics-hydra (:color blue
                                        :hint nil)
  "
    ^Electronics^
-----------------------------
_b_: Bread Boards
_s_: Soldering
"
  ("b" Tn/org-tag-electronics-bread-board)
  ("s" Tn/org-tag-electronics-soldering)
  ("r" Tn/org-tag-physical-project-hydra/body "Return" :color blue )
  ("q" nil "Cancel" :color blue))

(defun Tn/org-tag-electronics-soldering ()
  (interactive)
  (org-set-tags (append (org-get-tags) '("ELECTRONICS")))
  (org-set-tags (append (org-get-tags) '("SOLDERING"))))

(defun Tn/org-tag-electronics-bread-board ()
  (interactive)
  (org-set-tags (append (org-get-tags) '("ELECTRONICS")))
  (org-set-tags (append (org-get-tags) '("BREAD-BOARD"))))

(defhydra Tn/org-tag-digital-project-hydra (:color blue
                                            :hint nil)
  "
         ^Digital Projects^
-----------------------------------------------
_i_: Illustration    _p_: Painting
_s_: Sculpture       _a_: Animation
_v_: Video Editing   _e_: Image Editing
_c_: CAD             _g_: Game Design
"
  ("i" Tn/org-tag-digital-illustration)
  ("s" Tn/org-tag-digital-sculpture)
  ("c" Tn/org-tag-cad)
  ("p" Tn/org-tag-digital-painting)
  ("v" Tn/org-tag-video-editing)
  ("e" Tn/org-tag-image-editing)
  ("a" Tn/org-tag-digital-animation)
  ("g" Tn/org-tag-game-design)
  ("r" Tn/org-tag-main-hydra/body "Return" :color blue )
  ("q" nil "Cancel" :color blue))

(defun Tn/org-tag-digital-illustration ()
  (interactive)
  (org-set-tags (append (org-get-tags) '("DIGITAL")))
  (org-set-tags (append (org-get-tags) '("ILLUSTRATION"))))

(defun Tn/org-tag-digital-sculpture ()
  (interactive)
  (org-set-tags (append (org-get-tags) '("DIGITAL")))
  (org-set-tags (append (org-get-tags) '("SCULPTURE"))))

(defun Tn/org-tag-digital-painting ()
  (interactive)
  (org-set-tags (append (org-get-tags) '("DIGITAL")))
  (org-set-tags (append (org-get-tags) '("PAINTING"))))

(defun Tn/org-tag-digital-animation ()
  (interactive)
  (org-set-tags (append (org-get-tags) '("DIGITAL")))
  (org-set-tags (append (org-get-tags) '("ANIMATION"))))

(defun Tn/org-tag-game-design ()
  (interactive)
  (org-set-tags (append (org-get-tags) '("GAME-DESIGN"))))

(defun Tn/org-tag-video-editing ()
  (interactive)
  (org-set-tags (append (org-get-tags) '("VIDEO-EDITING"))))

(defun Tn/org-tag-image-editing ()
  (interactive)
  (org-set-tags (append (org-get-tags) '("IMAGE-EDITING"))))

(defun Tn/org-tag-cad ()
  (interactive)
  (org-set-tags (append (org-get-tags) '("CAD"))))

(use-package org-roam
  :after org
  :bind
  (("C-c n" . Tn/org-roam-main-hydra/body)
   ("C-c a" . Tn/org-roam-actions-hydra/body))

  :config
  (setq org-roam-completion-everywhere t
        org-roam-directory (file-truename "~/Grimoire/")
        org-roam-dailies-directory (file-truename "~/Feronomicon/")
        org-roam-node-display-template (concat "${title:*} " (propertize "${tags:10}" 'face 'org-tag)))

  (org-roam-db-autosync-mode)
  (require 'org-roam-protocol))

(setq org-roam-capture-templates
      '(("n" "Node" plain "%?"
         :target (file+head "Node/${slug}-%<%Y%m%d%H%M%S>.org"
                            "#+title: ${title}\n#+category: ${title}\n#+LAST_MODIFIED: \n#+filetags: :Node:SFW:")
         :unnarrowed t :empty-lines-before 1)

         ("s" "Source" plain "%?"
         :target (file+head "%(expand-file-name (or citar-org-roam-subdir \"\") org-roam-directory)/${citar-citekey}.org"
          "#+title: ${citar-citekey} ${note-title}\n#+category: ${note-title}\n#+LAST_MODIFIED: \n#+filetags: :Source:SFW:")
         :unnarrowed t :empty-lines-before 1)

         ("e" "Internal" plain "%?"
         :target (file+head "Personal/${slug}-%<%Y%m%d%H%M%S>.org" "#+title: ${title}\n#+category: ${title}\n#+LAST_MODIFIED: \n#+filetags: :Internal:NSFW:")
         :unnarrowed t :empty-lines-before 1)

         ("e" "Internal" plain "%?"
         :target (file+head "Recipes/${slug}-%<%Y%m%d%H%M%S>.org" "#+title: ${title}\n#+category: ${title}\n#+LAST_MODIFIED: \n#+filetags: :Recipes:NSFW:")
         :unnarrowed t :empty-lines-before 1)

        ("t" "Topic" plain "%?"
         :target (file+head "Topic/${slug}-%<%Y%m%d%H%M%S>.org" "#+title: ${title}\n#+category: ${title}\n#+LAST_MODIFIED: \n#+filetags: :Topic:SFW: \n\n")
         :unnarrowed t :empty-lines-before 1)))

(defun Tn/Node-filter (node)
    (interactive)
    (let ((tags (org-roam-node-tags node)))
        (and (member "Node" tags)
             (member "SFW" tags))))

(defun Tn/Node-filter-nsfw (node)
    (interactive)
    (let ((tags (org-roam-node-tags node)))
         (member "Node" tags)))

(defun Tn/Node-find-all ()
  (interactive)
  (org-roam-node-find nil nil 'Tn/Node-filter-nsfw))

(defun Tn/Node-find ()
  (interactive)
  (org-roam-node-find nil nil 'Tn/Node-filter))

(defun Tn/Node-insert ()
  (interactive)
  (org-roam-node-insert 'Tn/Node-filter))

(defun Tn/Node-insert-all ()
  (interactive)
  (org-roam-node-insert 'Tn/Node-filter-nsfw))

(defun Tn/Node-capture ()
  (interactive)
  (org-roam-capture nil "n" :filter-fn 'Tn/Node-filter))

(defun Tn/Node-capture-all ()
  (interactive)
  (org-roam-capture nil "n" :filter-fn 'Tn/Node-filter-nsfw))

(defun Tn/Internal-filter (node)
    (interactive)
    (let ((tags (org-roam-node-tags node)))
         (member "Internal" tags)))

(defun Tn/Internal-find ()
  (interactive)
  (org-roam-node-find nil nil 'Tn/Internal-filter))

(defun Tn/Internal-insert ()
  (interactive)
  (org-roam-node-insert 'Tn/Internal-filter))

(defun Tn/Internal-capture ()
  (interactive)
  (org-roam-capture nil "e" :filter-fn 'Tn/Internal-filter))

(defun Tn/Source-filter (node)
    (interactive)
    (let ((tags (org-roam-node-tags node)))
        (and (member "Source" tags)
             (member "SFW" tags))))

(defun Tn/Source-filter-nsfw (node)
    (interactive)
    (let ((tags (org-roam-node-tags node)))
         (member "Source" tags)))

(defun Tn/Source-find-all ()
  (interactive)
  (org-roam-node-find nil nil 'Tn/Source-filter-nsfw))

(defun Tn/Source-find ()
  (interactive)
  (org-roam-node-find nil nil 'Tn/Source-filter))

(defun Tn/Source-insert ()
  (interactive)
  (org-roam-node-insert 'Tn/Source-filter))

(defun Tn/Source-insert-all ()
  (interactive)
  (org-roam-node-insert 'Tn/Source-filter-nsfw))

(defun Tn/Topic-filter (node)
    (interactive)
    (let ((tags (org-roam-node-tags node)))
        (and (member "Topic" tags)
             (member "SFW" tags))))

(defun Tn/Topic-filter-nsfw (node)
    (interactive)
    (let ((tags (org-roam-node-tags node)))
         (member "Topic" tags)))

(defun Tn/Topic-find-all ()
  (interactive)
  (org-roam-node-find nil nil 'Tn/Topic-filter-nsfw))

(defun Tn/Topic-find ()
  (interactive)
  (org-roam-node-find nil nil 'Tn/Topic-filter))

(defun Tn/Topic-insert ()
  (interactive)
  (org-roam-node-insert 'Tn/Topic-filter))

(defun Tn/Topic-insert-all ()
  (interactive)
  (org-roam-node-insert 'Tn/Topic-filter-nsfw))

(defun Tn/Topic-capture ()
  (interactive)
  (org-roam-capture nil "t" :filter-fn 'Tn/Topic-filter))

(defun Tn/delete-file-and-buffer ()
  "Kill the current buffer and deletes the file it is visiting."
  (interactive)
  (let ((filename (buffer-file-name)))
    (if filename
        (if (y-or-n-p (concat "Do you really want to delete file " filename " ?"))
            (progn
              (delete-file filename)
              (message "Deleted file %s." filename)
              (kill-buffer)))
      (message "Not a file visiting buffer!"))))

(defun Tn/eww-wikipedia-search ()
  "Searches Wikipedia for the given search term and opens the result in EWW."
  (interactive)
    (eww (format "https://en.wikipedia.org/wiki/Special:Search?search=%s" (read-from-minibuffer "Search For: " ""))))

(defhydra Tn/org-roam-main-hydra (:color blue
                                  :hint nil)
  "
^File Groups^   ^All Files^        ^Actions^
--------------------------------------------------
_n_: Insert     _N_: Insert      _b_: Roam Buffer
_f_: Find       _F_: Find        _g_: Roam Graph
_c_: Capture    _C_: Capture     _d_: Delete File
^ ^_o_: Open Bibtex File  _u_: Update Database^ ^
"
  ("b" org-roam-buffer-toggle)
  ("o" Tn/open-bibliography)
  ("u" org-roam-db-sync)
  ("g" org-roam-ui-mode)
  ("G" org-roam-graph)
  ("N" org-roam-node-insert)
  ("C" org-roam-capture)
  ("F" org-roam-node-find)
  ("n" Tn/org-roam-insert-hydra/body)
  ("c" Tn/org-roam-capture-hydra/body)
  ("f" Tn/org-roam-find-hydra/body)
  ("d" Tn/delete-file-and-buffer)
  ("q" nil "Cancel" :color blue))

(defhydra Tn/org-roam-insert-hydra (:color blue
                                    :hint nil)
  "
     ^File Types^
--------------------------
_n_: Node    _e_: Internal
_t_: Topic   _s_: Source
    _b_: Citation
    _w_: Web Link
^ ^
^ ^

"
  ("n" Tn/Node-insert)
  ("N" Tn/Node-insert-all)
  ("e" Tn/Internal-insert)
  ("t" Tn/Topic-insert)
  ("T" Tn/Topic-insert-all)
  ("s" Tn/Source-insert)
  ("S" Tn/Source-insert-all)
  ("b" citar-insert-citation)
  ("w" Tn/eww-wikipedia-search)
  ("r" Tn/org-roam-main-hydra/body "Return" :color blue )
  ("q" nil "Cancel" :color blue))

(defhydra Tn/org-roam-find-hydra (:color blue
                                  :hint nil)
  "
     ^File Types^
--------------------------
_n_: Node    _e_: Internal
_t_: Topic   _s_: Source
^ ^
^ ^

"
  ("n" Tn/Node-find)
  ("N" Tn/Node-find-all)
  ("e" Tn/Internal-find)
  ("t" Tn/Topic-find)
  ("T" Tn/Topic-find-all)
  ("s" Tn/Source-find)
  ("S" Tn/Source-find-all)
  ("r" Tn/org-roam-main-hydra/body "Return" :color blue )
  ("q" nil "Cancel" :color blue))

(defhydra Tn/org-roam-capture-hydra (:color blue
                                     :hint nil)
  "
     ^File Types^
--------------------------
_n_: Node    _e_: Internal
_t_: Topic   _s_: Source
^ ^
^ ^

"
  ("n" Tn/Node-capture)
  ("e" Tn/Internal-capture)
  ("t" Tn/Topic-capture)
  ("s" citar-open-notes)
  ("r" Tn/org-roam-main-hydra/body "Return" :color blue )
  ("q" nil "Cancel" :color blue))

(defhydra Tn/org-roam-actions-hydra (:color blue
                                     :hint nil)
  "
        ^File Actions^
------------------------------------
_t_: Add Tag      _T_: Remove Tag
_a_: Add Alias    _A_: Remove Alias
_r_: Add RefKey   _R_: Remove RefKey
^ ^            ^ ^               ^ ^
"
  ("t" org-roam-tag-add)
  ("T" org-roam-tag-remove)
  ("a" org-roam-alias-add)
  ("A" org-roam-alias-remove)
  ("r" citar-org-roam-ref-add)
  ("R" org-roam-ref-remove)
  ("q" nil "Cancel" :color blue))

(add-to-list 'display-buffer-alist
             '("\\*org-roam\\*"
               (display-buffer-in-direction)
               (direction . right)
               (window-width . 0.33)
               (window-height . fit-window-to-buffer)))

(use-package org-roam-bibtex
  :after
  (org-roam)

  :config
  (org-roam-bibtex-mode +1))

(use-package org-roam-ui
    :after org-roam

    :hook
    (after-init . org-roam-ui-mode)

    :config
    (setq org-roam-ui-sync-theme t
          org-roam-ui-follow t
          org-roam-ui-update-on-save t
          org-roam-ui-browser-function #'browse-url-firefox
          org-roam-ui-open-on-start t))

(defun Tn/project-p ()
  "Return non-nil if current buffer has any todo entry.
TODO entries marked as done are ignored, meaning the this
function returns nil if current buffer contains only completed
tasks."
  (seq-find                                 ; (3)
   (lambda (type)
     (eq type 'todo))
   (org-element-map                         ; (2)
       (org-element-parse-buffer 'headline) ; (1)
       'headline
     (lambda (h)
       (org-element-property :todo-type h)))))

(defun Tn/project-update-tag ()
    "Update PROJECT tag in the current buffer."
    (when (and (not (active-minibuffer-window))
               (Tn/buffer-p))
      (save-excursion
        (goto-char (point-min))
        (let* ((tags (Tn/buffer-tags-get))
               (original-tags tags))
          (if (Tn/project-p)
              (setq tags (cons "ToDo" tags))
            (setq tags (remove "ToDo" tags)))

          ;; cleanup duplicates
          (setq tags (seq-uniq tags))

          ;; update tags if changed
          (when (or (seq-difference tags original-tags)
                    (seq-difference original-tags tags))
            (apply #'Tn/buffer-tags-set tags))))))

(defun Tn/buffer-p ()
  "Return non-nil if the currently visited buffer is a note."
  (and buffer-file-name
       (string-prefix-p
        (expand-file-name (file-name-as-directory (file-truename "~/Grimoire")))
        (file-name-directory buffer-file-name))))

(defun Tn/project-files ()
    "Return a list of note files containing 'ToDo' tag." ;
    (seq-uniq
     (seq-map
      #'car
      (org-roam-db-query
       [:select [nodes:file]
        :from tags
        :left-join nodes
        :on (= tags:node-id nodes:id)
        :where (like tag (quote "%\"ToDo\"%"))]))))

(add-hook 'find-file-hook #'Tn/project-update-tag)
(add-hook 'before-save-hook #'Tn/project-update-tag)

(advice-add 'org-agenda :before #'Tn/agenda-files-update)
(advice-add 'org-todo-list :before #'Tn/agenda-files-update)


(defun Tn/buffer-tags-get ()
  "Return filetags value in current buffer."
  (Tn/buffer-prop-get-list "filetags" "[ :]"))

(defun Tn/buffer-tags-set (&rest tags)
  "Set TAGS in current buffer.

If filetags value is already set, replace it."
  (if tags
      (Tn/buffer-prop-set
       "filetags" (concat ":" (string-join tags ":") ":"))
    (Tn/buffer-prop-remove "filetags")))

(defun Tn/buffer-tags-add (tag)
  "Add a TAG to filetags in current buffer."
  (let* ((tags (Tn/buffer-tags-get))
         (tags (append tags (list tag))))
    (apply #'Tn/buffer-tags-set tags)))

(defun Tn/buffer-tags-remove (tag)
  "Remove a TAG from filetags in current buffer."
  (let* ((tags (Tn/buffer-tags-get))
         (tags (delete tag tags)))
    (apply #'Tn/buffer-tags-set tags)))

(defun Tn/buffer-prop-set (name value)
  "Set a file property called NAME to VALUE in buffer file.
If the property is already set, replace its value."
  (setq name (downcase name))
  (org-with-point-at 1
    (let ((case-fold-search t))
      (if (re-search-forward (concat "^#\\+" name ":\\(.*\\)")
                             (point-max) t)
          (replace-match (concat "#+" name ": " value) 'fixedcase)
        (while (and (not (eobp))
                    (looking-at "^[#:]"))
          (if (save-excursion (end-of-line) (eobp))
              (progn
                (end-of-line)
                (insert "\n"))
            (forward-line)
            (beginning-of-line)))
        (insert "#+" name ": " value "\n")))))

(defun Tn/buffer-prop-set-list (name values &optional separators)
  "Set a file property called NAME to VALUES in current buffer.
VALUES are quoted and combined into single string using
`combine-and-quote-strings'.
If SEPARATORS is non-nil, it should be a regular expression
matching text that separates, but is not part of, the substrings.
If nil it defaults to `split-string-default-separators', normally
\"[ \f\t\n\r\v]+\", and OMIT-NULLS is forced to t.
If the property is already set, replace its value."
  (Tn/buffer-prop-set
   name (combine-and-quote-strings values separators)))

(defun Tn/buffer-prop-get (name)
  "Get a buffer property called NAME as a string."
  (org-with-point-at 1
    (when (re-search-forward (concat "^#\\+" name ": \\(.*\\)")
                             (point-max) t)
      (buffer-substring-no-properties
       (match-beginning 1)
       (match-end 1)))))

(defun Tn/buffer-prop-get-list (name &optional separators)
  "Get a buffer property NAME as a list using SEPARATORS.
If SEPARATORS is non-nil, it should be a regular expression
matching text that separates, but is not part of, the substrings.
If nil it defaults to `split-string-default-separators', normally
\"[ \f\t\n\r\v]+\", and OMIT-NULLS is forced to t."
  (let ((value (Tn/buffer-prop-get name)))
    (when (and value (not (string-empty-p value)))
      (split-string-and-unquote value separators))))

(defun Tn/buffer-prop-remove (name)
  "Remove a buffer property called NAME."
  (org-with-point-at 1
    (when (re-search-forward (concat "\\(^#\\+" name ":.*\n?\\)")
                             (point-max) t)
      (replace-match ""))))

(use-package org-journal
  :bind
  (("C-c t" . Tn/org-journal-hydra/body)
   ("s-<return>" . Tn/new-todo-with-priority))
  :hook
  ((org-capture-mode-hook . delete-other-windows)))

(setq org-journal-dir (file-truename (format "~/Feronomicon/%s/" (Tn/current-year)))
      org-journal-enable-cache t
      org-journal-find-file #'find-file
      org-journal-file-format "%Y-%m-%d.org"
      org-journal-date-format "%Y-%m-%d"
      org-journal-time-format "%H:%M"
      org-journal-start-on-weekday 0
      org-journal-carryover-items "TODO=\"TODO\"|TODO=\"REVIEW\"|TODO=\"WAITING\"|TODO=\"NEXT\"|TODO=\"HOLD\"|TODO=\"ACTIVE\"|TODO=\"INPROGRESS\"")

(setq org-roam-dailies-capture-templates
      '(("m" "Memo" entry "*** %?"
         :target (file+head+olp "%<%Y>/%<%Y-%m-%d>.org"
                                "%[../roam-journal-template.org]"
                                ("Notes")))
        ("f" "Financial" entry "*** %?"
         :target (file+head+olp "%<%Y>/%<%Y-%m-%d>.org"
                                "%[../roam-journal-template.org]"
                                ("Finances")))
        ("e" "Food Log" table-line "| %<%d - %H:%M> %?"
         :target (file+head+olp "%<%Y>/%<%Y-%m-%d>.org"
                                "%[../roam-journal-template.org]"
                                ("Food Tracker")))
        ("t" "ToDo" plain "* TODO [#B] %? :REFILE:"
         :target (file+head+olp "%<%Y>/%<%Y-%m-%d>.org"
                                "%[../roam-journal-template.org]"
                                ("Task-List")))
        ("x" "ToDo" plain "* TODO [#B] %?  :REFILE:"
         :target (file+head+olp "%<%Y>/%<%Y-%m-%d>.org"
                                "%[../roam-journal-template.org]"
                                ("Task-List"))
         :clock-in t :clock-keep t)
        ("Z" "Tobey Time" plain "* TODO [#B] Tobey Time %?  :@TOBEY:"
         :target (file+head+olp "%<%Y>/%<%Y-%m-%d>.org"
                                "%[../roam-journal-template.org]"
                                ("Task-List"))
         :clock-in t :clock-keep t :immediate-finish t)
        ("Y" "Food Prep" plain "* TODO [#B] Preparing %?  :FOOD:"
         :target (file+head+olp "%<%Y>/%<%Y-%m-%d>.org"
                                "%[../roam-journal-template.org]"
                                ("Task-List"))
         :clock-in t :clock-keep t)
        ("A" "Meal" plain "* TODO [#B] Eating %?  :FOOD:"
         :target (file+head+olp "%<%Y>/%<%Y-%m-%d>.org"
                                "%[../roam-journal-template.org]"
                                ("Task-List"))
         :clock-in t :clock-keep t)
        ("B" "Driving" plain "* TODO [#B] Driving to %?  :@CAR:"
         :target (file+head+olp "%<%Y>/%<%Y-%m-%d>.org"
                                "%[../roam-journal-template.org]"
                                ("Task-List"))
         :clock-in t :clock-keep t)
        ("C" "Korean Practice" plain "* TODO [#B] Korean Practice %?  :KOREAN:"
         :target (file+head+olp "%<%Y>/%<%Y-%m-%d>.org"
                                "%[../roam-journal-template.org]"
                                ("Task-List"))
         :clock-in t :clock-keep t)
        ("D" "Lojban Practice" plain "* TODO [#B] Lojban Practice %?  :LOJBAN:"
         :target (file+head+olp "%<%Y>/%<%Y-%m-%d>.org"
                                "%[../roam-journal-template.org]"
                                ("Task-List"))
         :clock-in t :clock-keep t)
        ("F" "Sleep" plain "* TODO [#B] End of Day %?  :MISC:"
         :target (file+head+olp "%<%Y>/%<%Y-%m-%d>.org"
                                "%[../roam-journal-template.org]"
                                ("Task-List"))
         :clock-in t :clock-keep t :immediate-finish t)
        ("W" "Water" plain "* DONE [#B] Refilled Water %?  :MISC:"
         :target (file+head+olp "%<%Y>/%<%Y-%m-%d>.org"
                                "%[../roam-journal-template.org]"
                                ("Task-List"))
         :immediate-finish t)
        ("T" "October" plain "* DONE [#B] Interaction with October %? :@TOBEY:"
         :target (file+head+olp "%<%Y>/%<%Y-%m-%d>.org"
                                "%[../roam-journal-template.org]"
                                ("Task-List"))
         :clock-in t :clock-resume t)
        ("G" "Outgoing" plain "* DONE [#B] Out Going Communication  %?  :@OUT-GOING:"
         :target (file+head+olp "%<%Y>/%<%Y-%m-%d>.org"
                                "%[../roam-journal-template.org]"
                                ("Task-List"))
         :clock-in t :clock-resume t)
        ("E" "Email" plain "* DONE [#B] Incoming Communication %?  :@IN-INCOMING:"
         :target (file+head+olp "%<%Y>/%<%Y-%m-%d>.org"
                                "%[../roam-journal-template.org]"
                                ("Task-List"))
         :clock-in t :clock-resume t)
        ("X" "Bathroom" plain "* DONE [#B] Bathroom Break %?  :MISC:"
         :target (file+head+olp "%<%Y>/%<%Y-%m-%d>.org"
                                "%[../roam-journal-template.org]"
                                ("Task-List"))
         :clock-in t :clock-resume t)
        ("G" "General" plain "* DONE [#B] General Break %?  :MISC:"
         :target (file+head+olp "%<%Y>/%<%Y-%m-%d>.org"
                                "%[../roam-journal-template.org]"
                                ("Task-List"))
         :clock-in t :clock-resume t)))

(defun Tn/open-nutrition-log ()
  (interactive)
  (find-file (file-truename (format "~/Feronomicon/%s/nutrition.journal" (Tn/current-year)))))

(defun Tn/open-shopping-log ()
  (interactive)
  (find-file (file-truename
              "~/Grimoire/Topic/grocery_shopping_list-20240115171307.org")))

(defun Tn/easy-food-capture ()
(interactive)
(find-file (file-truename "~/Grimoire/Personal/food_macro_quick_refrence-20240214162123.org"))
(org-roam-dailies-capture-today nil "e")
(windmove-left))

(defun Tn/easy-memo-capture ()
(interactive)
(org-roam-dailies-capture-today nil "m"))

(defun Tn/easy-financial-capture ()
(interactive)
(org-roam-dailies-capture-today nil "f"))

(defun Tn/easy-todo-capture ()
(interactive)
(org-roam-dailies-capture-today nil "t"))

(defun Tn/easy-todo-capture-and-clock-in ()
(interactive)
(org-roam-dailies-capture-today nil "x"))

(defun Tn/quick-todo-future ()
  "quickly inserts a todo in tomorrows journal"
  (interactive)
  (org-roam-dailies-capture-date 1 nil "t"))

(defun Tn/quick-open-future ()
  "quickly inserts a todo in tomorrows journal"
  (interactive)
  (org-roam-dailies-goto-date 1 "t"))

(defun Tn/quick-todo-tomorrow ()
  "quickly inserts a todo in tomorrows journal"
  (interactive)
  (org-roam-dailies-capture-tomorrow 1 nil "t"))

(defun Tn/quick-open-tomorrow ()
  "quickly inserts a todo in tomorrows journal"
  (interactive)
  (org-roam-dailies-goto-tomorrow 1 "t"))

(defun Tn/org-journal-setup ()
  "Creates journal file for current day, enters journal mode, and inserts previous unfinished ToDo items."
  (interactive)
  (org-roam-dailies-goto-today "t")
  (org-journal--carryover)
  (org-cycle-global)
  (save-buffer))

(defcustom Tn/org-journal-enable-agenda-integration t
  "Add current and future org-journal files to `org-agenda-files' when non-nil."
  :type 'boolean)

(defvar Tn/org-journal-file-list nil "list of current and future org-journal files")
(defun Tn/set-org-journal-file-list (list)
       (setq Tn/org-journal-file-list list))

(defun Tn/org-journal--update-org-agenda-files ()
  "Adds the current and future journal files to `org-agenda-files'
containing TODOs, and cleans out past org-journal files."
  (when Tn/org-journal-enable-agenda-integration
    (let ((not-org-journal-agenda-files
           (seq-filter
            (lambda (fname)
              (not (string-match (org-journal--dir-and-file-format->pattern) fname)))
            (org-agenda-files)))
          (org-journal-agenda-files
           (let* ((future (org-journal--read-period 'future))
                  (beg (car future))
                  (end (cdr future)))
             (setcar (cdr beg) (1- (cadr beg))) ;; Include today; required for `org-journal--search-build-file-list'
             (when (< (nth 2 (decode-time (current-time))) org-extend-today-until)
               (setq beg (decode-time (apply #'encode-time `(0 59 -1 ,(nth 1 beg) ,(nth 0 beg) ,(nth 2 beg))))
                     beg (list (nth 4 beg) (nth 3 beg) (nth 5 beg))))
             (org-journal--search-build-file-list
              (org-journal--calendar-date->time beg)
              (org-journal--calendar-date->time end)))))
      (Tn/set-org-journal-file-list org-journal-agenda-files))))

(defhydra Tn/org-journal-hydra (:color blue
                                :hint nil)
  "
^Today^                 ^Tomorrow^
-------------------------------------------
_n_: Capture         _N_: Capture Tomorrow
_t_: Open            _T_: Open Tomorrow
_a_: Agenda          _A_: Weekly Agenda
_g_: Global TODO     _s_: Future Schedual
_f_: Shopping Log   _m_: Nutrition Log
"
  ("n" Tn/org-journal-capture-hydra/body)
  ("t" Tn/org-journal-setup)
  ("a" Tn/org-agenda-day)
  ("N" org-roam-dailies-capture-tomorrow)
  ("T" (org-roam-dailies-goto-tomorrow 1 "m"))
  ("A" Tn/org-agenda-week)
  ("g" Tn/org-agenda-todos)
  ("s" Tn/org-agenda-date-overview)
  ("m" Tn/open-nutrition-log)
  ("f" Tn/open-shopping-log)
  ("q" nil "Cancel" :color blue))

(defhydra Tn/org-journal-capture-hydra (:color blue
                                        :hint nil)
  "
          ^Capture^
-------------------------------------------
    _n_: ToDo and ClockIn
_f_: Food         _m_: Memo
_t_: ToDo         _e_: Financial
"
  ("f" Tn/easy-food-capture)
  ("m" Tn/easy-memo-capture)
  ("e" Tn/easy-financial-capture)
  ("n" Tn/easy-todo-capture-and-clock-in)
  ("t" Tn/easy-todo-capture)
  ("q" nil "Cancel" :color blue))

(use-package pdf-tools)

(require 'bibtex)

(setq bibtex-dialect 'biblatex
      bibtex-autokey-year-length 4
      bibtex-autokey-name-year-separator "-"
      bibtex-autokey-year-title-separator "-"
      bibtex-autokey-titleword-separator "-"
      bibtex-autokey-titlewords 2
      bibtex-autokey-titlewords-stretch 1
      bibtex-autokey-titleword-length 5
      bibtex-align-at-equal-sign t
      bibtex-completion-pdf-symbol "⌘"
      bibtex-completion-pdf-field "File"
      bibtex-completion-notes-symbol "✎"
      bibtex-completion-additional-search-fields '(Tags)
      bibtex-completion-notes-extension ".org"
      bibtex-completion-pdf-extension '(".pdf" ".djvu", ".jpg")
      bibtex-completion-bibliography '("~/Apocrypha/Org/bibliography-index.bib")
      bibtex-completion-browser-function
      (lambda (url _) (start-process "firefox" "*firefox*" "firefox" url))
      bibtex-user-optional-fields '(("tags" "Tags to describe the entry" "")
                                    ("file" "Link to a document file." "" )))

(add-to-list 'bibtex-biblatex-entry-alist '("Movie" "Feature length video"
                                    (("title")
                                     ("author")
                                     ("date"))
                                    nil
                                    (("writer")
                                     ("cast")
                                     ("genre")
                                     ("tags")
                                     ("file")
                                     ("url")
                                     ("notes"))))

(add-to-list 'bibtex-biblatex-entry-alist '("Video" "Short form video"
                                    (("title")
                                     ("author")
                                     ("date"))
                                    nil
                                    (("publisher")
                                     ("series")
                                     ("episode")
                                     ("guests")
                                     ("notes")
                                     ("url")
                                     ("file")
                                     ("tags"))))

(add-to-list 'bibtex-biblatex-entry-alist '("Image" "Painting, Illustration, Photography"
                                    (("title")
                                     ("author")
                                     ("date"))
                                    nil
                                    (("publisher")
                                     ("series")
                                     ("episode")
                                     ("guests")
                                     ("notes")
                                     ("url")
                                     ("file")
                                     ("tags"))))

(add-to-list 'bibtex-biblatex-entry-alist '("Object" "Sculpture, Architecture, Invention"
                                    (("title")
                                     ("author")
                                     ("date"))
                                    nil
                                    (("publisher")
                                     ("series")
                                     ("episode")
                                     ("guests")
                                     ("notes")
                                     ("url")
                                     ("file")
                                     ("tags"))))

(add-to-list 'bibtex-biblatex-entry-alist '("Music" "Music or Sound of any kind"
                                    (("title")
                                     ("author")
                                     ("date"))
                                    nil
                                    (("publisher")
                                     ("series")
                                     ("episode")
                                     ("guests")
                                     ("notes")
                                     ("url")
                                     ("file")
                                     ("tags"))))

(add-to-list 'bibtex-biblatex-entry-alist '("Web-Page" "General Web Pages"
                                            (("title")
                                             ("author")
                                             ("url")
                                             ("date"))
                                            nil
                                           (("publisher")
                                            ("series")
                                            ("episode")
                                            ("notes")
                                            ("guests")
                                            ("file")
                                            ("tags"))))

(add-to-list 'bibtex-biblatex-entry-alist '("Class" "Classes and instuctional courses"
                                            (("title")
                                             ("author")
                                             ("date"))
                                            nil
                                           (("publisher")
                                            ("url")
                                            ("series")
                                            ("episode")
                                            ("guests")
                                            ("notes")
                                            ("file")
                                            ("tags"))))

(add-to-list 'bibtex-biblatex-entry-alist '("Artist" "Favorite Artist"
                                    (("title")
                                     ("author")
                                     ("date"))
                                    nil
                                    (("genre")
                                     ("tags")
                                     ("file")
                                     ("url")
                                     ("notes"))))

(add-to-list 'bibtex-biblatex-entry-alist '("Game" "Video or Board Game"
                                    (("title")
                                     ("author")
                                     ("date"))
                                    nil
                                    (("writer")
                                     ("cast")
                                     ("genre")
                                     ("tags")
                                     ("file")
                                     ("url")
                                     ("notes"))))

(use-package citar
  :config
  (setq org-cite-follow-processor 'citar
        org-cite-insert-processor 'citar
        org-cite-activate-processor 'citar
        org-cite-global-bibliography '("~/Apocrypha/Org/bibliography-index.bib")
        citar-bibliography '("~/Apocrypha/Org/bibliography-index.bib"))

  :hook
  (LaTeX-mode . citar-capf-setup)
  (org-mode . citar-capf-setup)

  :bind
  (("C-c b" . Tn/citar-bibtex-hydra/body)))

(define-key helm-comp-read-map (kbd "C-c C-c") 'helm-cr-empty-string)

(defun Tn/bibtex-validate-and-save ()
  "saves file and validates bibtex formatting"
  (interactive)
  (bibtex-clean-entry)
  (bibtex-validate)
  (save-buffer))

(defun Tn/open-bibliography ()
"opens the global bibliography file"
  (interactive)
    (find-file "~/Apocrypha/Org/bibliography-index.bib"))

(setq citar-templates
      '((main . "     ${title:48}")
        (suffix . "${=type=:12}    ${tags keywords:*}")
        (preview . "${author editor:%etal} (${year issued date}) ${title}, ${journal journaltitle publisher container-title collection-title}.\n")
        (note . "Notes on ${author editor:%etal}, ${title}")))

(defhydra Tn/citar-bibtex-hydra (:color blue
                                 :hint nil)
  "
^Citar^                      ^Bibtex^
-----------------------------------------------
_l_: Source Link       _o_: Open Bibtex
_f_: Source File       _n_: New Bibtex Entry
_i_: Citar Link Index  _s_: Bibtex Validate
"
  ("o" Tn/open-bibliography)
  ("s" Tn/bibtex-validate-and-save)
  ("n" bibtex-entry)
  ("i" citar-open)
  ("f" citar-open-files)
  ("l" citar-open-links)
  ("r" Tn/org-roam-main-hydra/body "Return" :color blue )
  ("q" nil "Cancel" :color blue))

(use-package citar-org-roam
  :after (citar org-roam)
  :config (citar-org-roam-mode))

(setq citar-org-roam-subdir (file-truename "~/Grimoire/Reference/")
      citar-org-roam-capture-template-key "s")

(use-package ledger-mode
  :mode ("\\.journal\\'" "\\.hledger\\'")
  :hook (ledger-mode . company-mode))

(defun Tn/org-inherited-priority (s)
  (cond

   ;; Priority cookie in this heading
   ((string-match org-priority-regexp s)
    (* 1000 (- org-priority-lowest
               (org-priority-to-value (match-string 2 s)))))

   ;; No priority cookie, but already at highest level
   ((not (org-up-heading-safe))
    (* 1000 (- org-priority-lowest org-priority-default)))

   ;; Look for the parent's priority
   (t
    (Tn/org-inherited-priority (org-get-heading)))))

(setq org-priority-get-priority-function #'Tn/org-inherited-priority)

(defun Tn/agenda-starting-screen ()
  (interactive)
  (Tn/org-agenda-day)
  (split-window-right)
  (windmove-right)
  (Tn/org-journal-setup))

(require 'org-agenda)

(defun Tn/org-agenda-todos ()
   (interactive)
        (org-agenda nil "t"))

(defun Tn/org-agenda-day ()
   (interactive)
   (let ((org-agenda-span 'day))
        (org-agenda nil "c")))

(defun Tn/org-agenda-week ()
   (interactive)
   (let ((org-agenda-span 'week))
        (org-agenda nil "c")))

(defun Tn/org-agenda-date-overview ()
  (interactive)
  (let ((org-agenda-start-day "-1d")
        (org-agenda-span '3))
    (org-agenda nil "c")
    (org-roam-dailies-capture-date 1 nil "t")))

(defun Tn/agenda-clock-in ()
  (interactive)
  (org-agenda-switch-to)
  (evil-previous-visual-line 1)
  (org-clock-in)
  (bury-buffer))

(defun Tn/agenda-clock-out ()
  (interactive)
  (org-clock-goto)
  (org-clock-out)
  (bury-buffer))

(setq org-agenda-start-on-weekday 0
      org-agenda-skip-scheduled-if-done t
      org-agenda-skip-deadline-if-done t
      org-deadline-warning-days 30
      org-agenda-dim-blocked-tasks nil
      org-agenda-include-deadlines t
      org-agenda-window-setup 'current-window
      org-agenda-block-separator #x2501
      org-agenda-show-all-dates t
      org-agenda-compact-blocks t
      org-agenda-start-with-log-mode t
      org-agenda-time-leading-zero t
      org-agenda-time-grid '((daily today require-timed remove-match)
                             () " ----- " "┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄")
      org-agenda-prefix-format '((agenda . " %?-12t% s")
                                 (todo . " %i %-12:c")
                                 (tags . " %i %-12:c")
                                 (search . " %i %-12:c")))
(add-hook 'org-agenda-mode-hook
          (lambda ()
            (visual-line-mode -1)
            (setq truncate-lines 1)))

(define-key org-agenda-mode-map (kbd "n") 'org-agenda-next-line)
(define-key org-agenda-mode-map (kbd "e") 'org-agenda-previous-line)
(define-key org-agenda-mode-map (kbd "j") 'org-agenda-goto-date)
(define-key org-agenda-mode-map (kbd "p") 'org-agenda-capture)
(define-key org-agenda-mode-map (kbd "<SPC>") 'helm-occur)
(define-key org-agenda-mode-map (kbd "s-A") 'org-agenda-exit)

(defun Tn/agenda-files-update (&rest _)
  "Update the value of `org-agenda-files'."
  (Tn/org-journal--update-org-agenda-files)
  (setq org-agenda-files (delete-dups (append (Tn/project-files) (symbol-value 'Tn/org-journal-file-list) (directory-files-recursively "~/Projects/" "^.*-todo.org$")))))

(setq org-clock-history-length 30
      org-clock-in-resume t
      org-clock-out-when-done t
      org-clock-persist t
      org-log-done (quote time)
      org-log-into-drawer t
      org-clock-persist-query-resume nil
      org-clock-auto-clock-resolution (quote when-no-clock-is-running)
      org-clock-out-remove-zero-time-clocks t
      org-clock-report-include-clocking-task t
      org-clock-in-switch-to-state "ACTIVE"
      org-clock-out-switch-to-state "REVIEW"
      org-agenda-persistent-filter t
      org-clock-into-drawer t
      org-agenda-log-mode-items (quote (clock state))
      org-time-stamp-rounding-minutes (quote (1 1)))

(add-hook 'org-mode-hook (lambda ()
                           (defadvice org-clock-in (after org-clock-in-after activate) (save-buffer))
                           (defadvice org-clock-out (after org-clock-out-after activate) (save-buffer))))

(org-clock-persistence-insinuate)

(defhydra Tn/org-clock-core-hydra (:color blue
                                   :hint nil)
  "
                ^Org Clock^
------------------------------------------------
_n_: Jump to Active     _a_: Display Active
_e_: Clock in to last   _c_: Cancel Clock
           _s_: Recurring Tasks
           _t_: Interruptions
^ ^
^ ^

"
  ("s" Tn/org-clock-reccuring-hydra/body)
  ("t" Tn/org-clock-interruption-hydra/body)
  ("n" org-clock-goto)
  ("a" org-clock-display)
  ("e" org-clock-in-last)
  ("c" org-clock-cancel)
  ("q" nil "Cancel" :color blue))

(defhydra Tn/org-clock-interruption-hydra (:color blue
                                           :hint nil)
  "
         ^Interruptions^
------------------------------------------------
_t_: October     _b_: Bathroom
      _w_: Water Refil
       _g_: General
^ ^
^ ^

"
  ("t" Tn/clock-intterrupt-tobey)
  ("b" Tn/clock-intterrupt-bathroom)
  ("w" Tn/clock-intterrupt-water)
  ("g" Tn/clock-intterrupt-general)
  ("r" Tn/org-clock-core-hydra/body "Return" :color blue )
  ("q" nil "Cancel" :color blue))

(defun Tn/clock-intterrupt-tobey ()
(interactive)
(org-roam-dailies-capture-today nil "T"))

(defun Tn/clock-intterrupt-bathroom ()
(interactive)
(org-roam-dailies-capture-today nil "X"))

(defun Tn/clock-intterrupt-water ()
(interactive)
(org-roam-dailies-capture-today nil "W"))

(defun Tn/clock-intterrupt-general ()
(interactive)
(org-roam-dailies-capture-today nil "G"))

(defhydra Tn/org-clock-reccuring-hydra (:color blue
                                        :hint nil)
  "
          ^Recurring^
------------------------------------
_i_: Incoming      _o_: Outgoing
_k_: Korean        _l_: Lojban
_f_: Food Prep     _e_: Eating
_t_: Tobey Time    _d_: Driving
            _z_: Sleep
^ ^
^ ^

"
  ("z" Tn/clock-sleep)
  ("t" Tn/clock-tobey-time)
  ("f" Tn/clock-food-prep)
  ("e" Tn/clock-eating)
  ("d" Tn/clock-driving)
  ("k" Tn/clock-korean-practice)
  ("l" Tn/clock-lojban-practice)
  ("i" Tn/clock-incoming-communication)
  ("o" Tn/clock-outgoing-communication)
  ("r" Tn/org-clock-core-hydra/body "Return" :color blue )
  ("q" nil "Cancel" :color blue))

(defun Tn/clock-sleep ()
(interactive)
(org-roam-dailies-capture-today nil "F"))

(defun Tn/clock-tobey-time ()
(interactive)
(org-roam-dailies-capture-today nil "Z"))

(defun Tn/clock-food-prep ()
(interactive)
(org-roam-dailies-capture-today nil "Y"))

(defun Tn/clock-eating ()
(interactive)
(org-roam-dailies-capture-today nil "A"))

(defun Tn/clock-driving ()
(interactive)
(org-roam-dailies-capture-today nil "B"))

(defun Tn/clock-korean-practice ()
(interactive)
(org-roam-dailies-capture-today nil "C"))

(defun Tn/clock-lojban-practice ()
(interactive)
(org-roam-dailies-capture-today nil "D"))

(defun Tn/clock-incoming-communication ()
(interactive)
(org-roam-dailies-capture-today nil "E"))

(defun Tn/clock-outgoing-communication ()
(interactive)
(org-roam-dailies-capture-today nil "G"))

(use-package org-super-agenda
  :bind
  (:map org-super-agenda-header-map
        ("n" . org-agenda-next-line)
        ("e" . org-agenda-previous-line))
  :config
  (setq org-agenda-custom-commands
        '(("c" "Super view"
           ((agenda "" ((org-agenda-overriding-header "")
                        (org-super-agenda-groups
                         '((:name "Today"
                                  :time-grid t
                                  :date today
                                  :order 1)))))))
          ("t" "Todo View"
           (
            (todo "" ((org-agenda-overriding-header "")
                      (org-super-agenda-groups
                       '((:name "Inbox"
                                :file-path "inbox"
                                :order 0
                                )
                         (:auto-category t
                                         :order 9))))))))))


(use-package org-ql)

(setq-default org-icalendar-include-todo t)

(setq org-combined-agenda-icalendar-file "~/Apocrypha/Org/calendar.ics"
      org-icalendar-combined-name "OrgCal"
      org-icalendar-use-scheduled '(todo-start event-if-todo event-if-not-todo)
      org-icalendar-use-deadline '(todo-due event-if-todo event-if-not-todo)
      org-icalendar-timezone "America/Detroit"
      org-icalendar-store-UID t
      org-icalendar-alarm-time 30
      calendar-date-style 'iso
      calendar-mark-holidays-flag t
      calendar-week-start-day 0)

(setq diary-file (file-truename "~/Apocrypha/Org/diary.org")
      org-agenda-insert-diary-extract-time t
      calendar-mark-diary-entries-flag t
      holiday-local-holidays nil
      holiday-bahai-holidays nil
      holiday-oriental-holidays nil
      holiday-other-holidays nil
      org-agenda-include-diary t)

(use-package scad-mode)


(use-package ag)

(use-package rg
  :config
  (global-set-key (kbd "C-s") #'rg-menu))

(use-package graphviz-dot-mode)

(use-package dirvish
  :config
  dirvish-override-dired-mode)

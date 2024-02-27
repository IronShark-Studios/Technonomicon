(setq warning-minimum-level ":error")

(setq package-enable-at-startup nil
      use-package-always-ensure t
      vc-follow-symlinks t)

(set-face-attribute 'default nil
                    :font "Iosevka"
                    :weight 'regular
                    :height 180)

(set-face-attribute 'fixed-pitch nil
                    :font "Iosevka"
                    :weight 'semibold
                    :height 180)

(set-face-attribute 'variable-pitch nil
                    :font "FiraGo"
                    :weight 'regular
                    :height 180)

(defvar Tn/default-font-size 120)

(prefer-coding-system 'utf-8)
(when (display-graphic-p)
  (setq x-select-request-type '(UTF8_STRING COMPOUND_TEXT TEXT STRING)))

(setq calendar-latitude 39.96
      calendar-longitude -82.99
      calendar-location-name "Columbus,OH"
      user-login-name "xin"
      user-mail-address "xin@ironshark.org")

(menu-bar-mode -1)
(tool-bar-mode -1)
(show-paren-mode t)
(set-fringe-mode 5)
(scroll-bar-mode -1)
(global-hl-line-mode 1)
(global-auto-revert-mode 1)
(global-visual-line-mode t)
(global-display-line-numbers-mode t)
(winner-mode +1)

(setq visible-bell t
      column-number-mode t
      ring-bell-function 'ignore
      initial-major-mode 'org-mode
      visual-line-fringe-indicators '(left-curly-arrow right-curly-arrow))

(setq-default fill-column 80
              indent-tabs-mode nil
              sentence-end-double-space nil)

(fset 'yes-or-no-p 'y-or-n-p)

(dolist (mode '(pdf-view-mode-hook
                term-mode-hook
                org-mode-hook
                shell-mode-hook
                eww-mode-hook
                text-mode-hook
                scad-preview-mode-hook
                eshell-mode-hook))
  (add-hook mode (lambda () (display-line-numbers-mode 0))))

(use-package doom-modeline
  :init (doom-modeline-mode 1)
  :custom ((doom-modeline-height 15)))

(use-package doom-themes
  :init (load-theme 'doom-city-lights t))

(defadvice keyboard-escape-quit (around my-keyboard-escape-quit activate)
  (let (orig-one-window-p)
    (fset 'orig-one-window-p (symbol-function 'one-window-p))
    (fset 'one-window-p (lambda (&optional nomini all-frames) t))
    (unwind-protect
        ad-do-it
      (fset 'one-window-p (symbol-function 'orig-one-window-p)))))

(global-set-key (kbd "<escape>")  'keyboard-escape-quit)
(global-set-key (kbd "C-x c")  'centered-cursor-mode)
(global-set-key (kbd "C-S-v") 'clipboard-yank)
(global-set-key (kbd "C-S-c") 'clipboard-kill-ring-save)
(global-set-key (kbd "C-S-x") 'clipboard-kill-region)
(global-set-key (kbd "C-M-u") 'universal-argument)

(define-key winner-mode-map (kbd "<C-s-left>") #'winner-undo)
(define-key winner-mode-map (kbd "<C-s-right>") #'winner-redo)

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

(use-package aggressive-indent)
(global-aggressive-indent-mode 1)

(use-package rainbow-delimiters
  :init
  (add-hook 'prog-mode-hook #'rainbow-delimiters-mode))

(use-package smartparens
  :init
  (add-hook 'prog-mode-hook #'smartparens-mode)
  (add-hook 'org-mode-hook #'smartparens-mode)

  :config
  (setq sp-show-pair-from-inside nil)
  (require 'smartparens-config)

  :diminish
  smartparens-mode)

(add-hook 'before-save-hook #'whitespace-cleanup)

(add-to-list 'auto-mode-alist '("\\.md\\'" . text-mode))

(use-package nix-mode
  :mode "\\.nix\\'")

(use-package helm)
(helm-mode 1)

(setq helm-mode-fuzzy-match t)

(setq _helm-exciting-buffer-regexp-list
      (quote
       ("\\*magit:"
        )))

(setq helm-boring-buffer-regexp-list
      (quote
       (  "\\Minibuf.+\\*"
               "\\` "
               "\\*.+\\*"
               "\\magit-process:"
               "\\magit-diff:"
                  )))

(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "C-x C-f") 'helm-find-files)
(define-key helm-find-files-map (kbd "<SPC>") 'helm-find-files-up-one-level)

(use-package evil
  :init
  (setq evil-want-integration t
       evil-want-keybinding nil
       evil-want-C-u-scroll t
       evil-want-C-i-jump nil
       evil-respect-visual-line-mode t
       evil-undo-system 'undo-tree)

  :config
  (evil-mode 1)
  (define-key evil-insert-state-map (kbd "S-<SPC>") 'Tn/evil-jump-character)
  (define-key evil-insert-state-map (kbd "S-<escape>") 'Tn/evil-normal-and-save)
  (define-key evil-normal-state-map (kbd "S-<escape>") 'Tn/evil-normal-and-save)
  (define-key evil-normal-state-map (kbd "<SPC>") 'helm-occur)
  (define-key evil-normal-state-map (kbd "/") 'helm-regexp)
  (evil-ex-define-cmd "q" 'kill-this-buffer) ;Evil nomral mode ':q' kills active buffer
  (evil-ex-define-cmd "Q" 'kill-buffer-and-window)) ; Evil normal mode ':Q' kills buffer and window

(add-hook 'with-editor-mode-hook 'evil-insert-state)

(use-package evil-collection
  :after evil
  :ensure t
  :config
  (evil-collection-init))

(defun Tn/evil-jump-character ()
  "moves point forward past the next character"
  (interactive)
  (evil-normal-state)
  (evil-forward-char)
  (evil-append 1))

(defun Tn/evil-normal-and-save ()
  "switches to evil normal mode, and saves buffer"
  (interactive)
  (evil-normal-state)
  (save-buffer))

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

(dolist (hook '(text-mode-hook))
  (add-hook hook (lambda ()
                   (flyspell-mode 1))))

(add-hook 'prog-mode-hook #'flyspell-prog-mode)
(add-hook 'text-mode-hook #'flyspell-mode)

(use-package undo-tree)
(global-undo-tree-mode 1)
(setq undo-tree-history-directory-alist '(("." . "~/.config/emacs/backup-files"))
      backup-directory-alist '(("." . "~/.config/emacs/backup-files")))

(use-package magit)
(add-hook 'magit-mode-hook 'turn-off-evil-snipe-override-mode)

(defun Tn/save-and-magit ()
  "Save the current buffer and call Magit status."
  (interactive)
  (save-buffer)
  (magit-status))

(use-package helpful
  :commands (helpful-callable helpful-variable helpful-command helpful-key)
  :bind
  ([remap describe-command] . helpful-command)
  ([remap describe-key] . helpful-key))

(use-package which-key
  :diminish which-key-mode
  :config
  (which-key-mode)
  (setq which-key-idle-delay 1))

(use-package org-bullets
  :hook (org-mode . org-bullets-mode)
  :custom
  (org-bullets-bullet-list '("◉" "○" "●" "○" "●" "○" "●")))

(use-package org-appear)

(setq org-appear-trigger 'manual
      org-appear-autoemphasis t
      org-appear-autolinks t
      org-link-descriptive t
      org-pretty-entities t
      org-appear-autoentities t
      org-appear-autosubmarkers t
      org-appear-autokeywords t
      org-hidden-keywords t
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
                                     t)))

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

(advice-add 'org-deadline       :after #'save-buffer)
(advice-add 'org-schedule       :after #'save-buffer)
(advice-add 'org-todo           :after #'save-buffer)
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

(set-face-attribute 'org-link nil    :foreground "dark cyan" :inherit 'fixed-pitch)
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

(setq org-todo-keywords
      (quote ((sequence "TODO(t)" "NEXT(n)" "ACTIVE(a@/!)" "|" "DONE(d@/!)")
              (sequence "WAITING(w@/!)" "HOLD(h@/!)" "INACTIVE(i@/!)" "|" "CANCELLED(c@/!)"))))

(setq org-todo-keyword-faces
      (quote (("TODO" :foreground "deep sky blue" :weight bold)
              ("NEXT" :foreground "medium spring green" :weight bold)
              ("ACTIVE" :foreground "cyan" :weight bold)
              ("DONE" :foreground "dim gray" :weight bold)
              ("WAITING" :foreground "blue violet" :weight bold)
              ("HOLD" :foreground "dark red" :weight bold)
              ("CANCELLED" :foreground "dim gray" :weight bold))))

(setq org-tag-alist
      '((:startgroup . ART)
        ("SCULPTURE" . ?s) ("ILLUSTRATION" . ?i) ("METAL-WORKING" . ?m)
        (:endgroup . ART)
        (:startgroup . TECHNOLOGY)
        ("PROGRAMMING" . ?p) ("CAD" . ?x)
        (:endgroup . TECHNOLOGY)
        (:startgroup . ACADEMIC)
        ("MATHS" . ?m)
        (:endgroup . ACADEMIC)
        (:startgroup . FITNESS)
        ("@CF-GYM" . ?g) ("@OLY-GYM" . ?o)
        (:endgroup . FITNESS)
        ("@Toby" . ?T)
        ("@PHONE" . ?P) ("@COMPUTER" . ?C) ("@CAR" . ?V)))

(setq org-ellipsis " ▾"
      org-hide-emphasis-markers t
      org-src-fontify-natively t
      org-fontify-quote-and-verse-blocks t
      org-fontify-done-headline t
      org-src-tab-acts-natively t
      org-hide-block-startup nil
      org-src-preserve-indentation nil
      org-startup-folded t
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
      org-enforce-todo-dependencies t
      org-enforce-todo-checkbox-dependencies t
      org-odd-levels-only t
      org-fold-catch-invisible-edits 'show-and-error)

(use-package org
:hook
(org-mode . Tn/org-mode-setup)
(org-mode . Tn/org-font-setup)
(before-save . Tn/org-set-last-modified)

:config
(org-babel-do-load-languages
 'org-babel-load-languages
 '((emacs-lisp . t)
   (lisp . t)
   (latex . t)
   (scheme . t)))

(push '("conf-unix" . conf-unix) org-src-lang-modes))

(use-package pdf-tools)

(use-package centered-cursor-mode)

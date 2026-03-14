;; doom.d/config.el

;; =============================================================================
;; 1. PERSONAL IDENTITY & SYSTEM
;; =============================================================================
(setq user-full-name "Xin IronShark"
      user-mail-address "xin@ironshark.org")

(setq confirm-kill-emacs nil)
(setq ispell-program-name "hunspell")

(global-visual-line-mode t)

                                        ;(setq-default line-spacing 0.3)

(use-package! exec-path-from-shell
  :config
  (when (memq window-system '(mac ns x pgtk))
    (exec-path-from-shell-initialize)))

(setq initial-major-mode 'org-mode)
(setq initial-scratch-message nil)

(setq org-cite-global-bibliography '("~/Grimoire/bibtex.bib"))

;; =============================================================================
;; 2. UI, FONTS & THEME
;; =============================================================================
(setq doom-font (font-spec :family "JetBrains Mono" :size 23))
(setq doom-theme 'doom-city-lights)
(setq display-line-numbers-type 'visual)
(add-hook 'visual-line-mode-hook
          (lambda ()
            (setq wrap-prefix (propertize "  ↳ " 'face 'font-lock-comment-face))))

(use-package! which-key-posframe
  :after which-key
  :config
  (setq which-key-posframe-poshandler 'posframe-poshandler-frame-center)
  (which-key-posframe-mode 1))

(custom-set-faces!
  '(default :foreground "#CFDFDF")
  '(font-lock-comment-face :foreground "#8C98A6" :slant italic)
  '(font-lock-constant-face :foreground "#FFD700" :weight bold)
  '(font-lock-type-face :foreground "#FFCB6B")
  '(font-lock-number-face :foreground "#FF9F43")
  '(font-lock-string-face :foreground "#FF5370")
  '(font-lock-keyword-face :foreground "#00FFFF" :weight bold)
  '(font-lock-variable-name-face :foreground "#00FA9A")
  '(font-lock-function-name-face :foreground "#1E90FF" :weight bold)
  '(org-level-1 :foreground "#00FFFF" :weight bold :height 1.5 :box (:line-width 5 :color "#1D232F"))
  '(org-level-2 :foreground "#00FFFF" :weight bold :height 1.4 :box (:line-width 5 :color "#1D232F"))
  '(org-level-3 :foreground "#00FFFF" :weight bold :height 1.3 :box (:line-width 5 :color "#1D232F"))
  '(org-level-4 :foreground "#00FFFF" :weight bold :height 1.2 :box (:line-width 5 :color "#1D232F"))
  '(org-level-5 :foreground "#00FFFF" :weight bold :height 1.1 :box (:line-width 5 :color "#1D232F"))
  '(org-level-6 :foreground "#00FFFF" :weight bold :height 1.0 :box (:line-width 5 :color "#1D232F")))

(use-package! highlight-parentheses
  :hook (prog-mode . highlight-parentheses-mode)
  :config
  (setq hl-paren-colors '("#00FFFF" "#39FF14" "#FF00FF" "#FFD700" "#FF9F43"
                          "#00FA9A" "#1E90FF" "#FF5370" "#B24CFF" "#FF1493"))
  (set-face-attribute 'hl-paren-face nil :weight 'bold))

(add-hook 'prog-mode-hook 'whitespace-mode)

(add-hook 'before-save-hook #'delete-trailing-whitespace)

(setq whitespace-style '(face spaces tabs trailing space-mark tab-mark))


;; =============================================================================
;; 3. EDITOR BEHAVIOR & KEYBINDINGS
;; =============================================================================
(map! :i "C-S-v" #'clipboard-yank)
(map! :nvi "<f4>" #'+vterm/toggle)

(defun my/save-buffer-if-file ()
  "Save the current buffer if it's visiting a file and has been modified."
  (when (and (buffer-file-name) (buffer-modified-p))
    (save-buffer)))

(add-hook 'evil-normal-state-entry-hook #'my/save-buffer-if-file)
(add-hook 'evil-insert-state-entry-hook #'my/save-buffer-if-file)
(add-hook 'doom-switch-buffer-hook #'my/save-buffer-if-file)
(add-hook 'doom-switch-window-hook #'my/save-buffer-if-file)
(add-hook 'focus-out-hook #'my/save-buffer-if-file)

(plist-put +ligatures-extra-symbols :modes '(prog-mode text-mode org-mode markdown-mode))

(after! corfu
  (add-to-list 'completion-at-point-functions #'cape-dabbrev)
  (add-to-list 'completion-at-point-functions #'cape-file))

;; =============================================================================
;; 4. MODULES & AI
;; =============================================================================
(use-package! fcitx
  :after evil
  :config
  (setq fcitx-use-dbus nil)
  (setq fcitx-remote-command "fcitx5-remote")
  (fcitx-aggressive-setup))

(use-package! aidermacs
  :config
  (setq aidermacs-backend 'vterm)
  (setq aidermacs-default-model "ollama_chat/")
  (map! :leader :desc "Aidermacs Menu" "o a" #'aidermacs-transient-menu))


;; (use-package! minuet
;;   :demand t
;;   :config
;;   (setq minuet-provider 'openai-fim-compatible)
;;   (setq minuet-n-completions 1)
;;   (plist-put minuet-openai-fim-compatible-options :end-point "http://localhost:11434/v1/completions")
;;   (plist-put minuet-openai-fim-compatible-options :name "Ollama")
;;   (plist-put minuet-openai-fim-compatible-options :model "qwen2.5-coder:1.5b")
;;   (plist-put minuet-openai-fim-compatible-options :api-key "TERM")
;;   (add-hook 'prog-mode-hook #'minuet-auto-suggestion-mode)
;;   (map! :map minuet-active-mode-map
;;         :i "TAB" #'minuet-accept-suggestion
;;         :i "M-n" #'minuet-next-suggestion
;;         :i "M-p" #'minuet-previous-suggestion
;;         :i "M-e" #'minuet-dismiss-suggestion))

;; =============================================================================
;; 5. PROGRAMMING LANGUAGES & EWW
;; =============================================================================
(use-package! bqn-mode :mode "\\.bqn$")
(use-package! forth-mode :mode "\\.\\(fs\\|fth\\)$")
(add-to-list 'auto-mode-alist '("\\.asm\\'" . asm-mode))
(add-hook 'verilog-mode-hook #'lsp!)
(add-hook 'vhdl-mode-hook #'lsp!)

(after! eww
  (setq eww-auto-rename-buffer t)
  (setq shr-use-fonts nil))

;; =============================================================================
;; 6. ORG MODE (BASE)
;; =============================================================================
(after! org
  (require 'org-mouse)
  (require 'org-habit)

  (add-to-list 'org-modules 'org-habit t)

  (setq org-directory "~/Grimoire/")
  (setq org-hide-emphasis-markers t)
  (setq org-startup-with-inline-images t)
  (setq org-fold-catch-invisible-edits 'smart)
  (setq org-checkbox-hierarchical-statistics nil)
  (setq org-hierarchical-todo-statistics nil)
  (setq org-todo-keywords
        '((sequence "TODO(t)" "NEXT(n)" "ACTIVE(a)" "PAUSED(p)" "WAITING(w)" "|" "DONE(d)" "CANCELLED(c)" "ARCHIVE(A)")))
  (setq org-habit-graph-column 60
        org-habit-preceding-days 21
        org-habit-following-days 7
        org-habit-show-habits-only-for-today t))

  ;; Fleeting Notes
  (setq org-capture-templates
        '(("f" "Fleeting Note" entry
           (file "~/Grimoire/Inbox.org")
           "* TODO %?\n%U\n%i"
           :prepend t :empty-lines 1))))

(defun my/org-reset-checkbox-state-maybe ()
    "Reset all checkboxes in an entry if the `RESET_CHECK_BOXES' property is set."
    (when (org-entry-get (point) "RESET_CHECK_BOXES")
      (org-reset-checkbox-state-subtree)))

  (add-hook 'org-todo-repeat-hook #'my/org-reset-checkbox-state-maybe)

(defun my/org-checkbox-smart-space ()
  "When pressing space inside `[]`, insert space, jump out, and add a trailing space."
  (interactive)
  (if (and (eq (char-before) ?\[) (eq (char-after) ?\]))
      (progn (insert " ") (forward-char 1) (insert " "))
    (insert " ")))

(map! :after org
      :map org-mode-map
      :i "SPC" #'my/org-checkbox-smart-space)

;; Configure Zen Mode (Writeroom)
(after! writeroom-mode
  (setq +zen-text-scale 1.0)   ;; Stop Zen from making your size-23 font even bigger
  (setq writeroom-width 80))   ;; Force the centered column to exactly 80 characters

(add-hook 'org-mode-hook
          (lambda ()
            ;; Check if the buffer is a real file AND is inside your Notes folder
            (when (and (buffer-file-name)
                       (string-prefix-p (expand-file-name "~/Grimoire/Notes/")
                                        (buffer-file-name)))
              (writeroom-mode 1))))

;; =============================================================================
;; 7. ORG ROAM & HUGO (THE FIX)
;; =============================================================================
(use-package! websocket :after org-roam)

(after! org-roam
  (setq org-roam-directory "~/Grimoire/Notes/")
  (setq org-roam-dailies-directory "Journal/")

  ;; --- Unified Capture Templates ---
  (setq org-roam-capture-templates
        '(("d" "default" plain "%?"
           :target (file+head "%<%Y%m%d%H%M%S>-${slug}.org"
                              "#+title: ${title}\n")
           :unnarrowed t)

          ("b" "Blog Post" plain "%?"
           :target (file+head "~/Grimoire/Notes/Blog/%<%Y%m%d%H%M%S>-${slug}.org"
                              "#+title: ${title}\n#+author: Xin IronShark\n#+date: %<%Y-%m-%d>\n#+PANDOC_METADATA: draft=false\n#+PANDOC_METADATA: categories=General\n#+PANDOC_METADATA: image=thumbnail.png\n#+export_file_name: ~/Projects/Personal-Blog/posts/${slug}/index.qmd\n\n")
           :unnarrowed t)

          ))


  ;; --- Org Roam UI ---
  (setq org-roam-ui-sync-theme t
        org-roam-ui-follow t
        org-roam-ui-update-on-save t
        org-roam-ui-open-on-start t))

;; =============================================================================
;; 8. ORG EXTRAS (Modern, SVG, Appear, Autolist, Kanban)
;; =============================================================================
(use-package! org-modern
  :hook (org-mode . org-modern-mode)
  :hook (org-agenda-finalize . org-modern-agenda)
  :config
  (setq org-modern-todo nil
        org-modern-tag nil
        org-modern-star '("◉" "○" "●" "◦" "•")
        org-modern-list '((?- . "•"))
        org-modern-hide-stars t
        org-modern-checkbox '((?\s . "󰄱") (?- . "󰄗") (?X . ""))
        org-modern-todo-faces
        '(("TODO" :inverse-video t :weight bold)
          ("DONE" :inverse-video t :weight bold))))

(use-package! svg-tag-mode
  :hook (org-mode . svg-tag-mode)
  :config
  (defconst date-re "[0-9]\\{4\\}-[0-9]\\{2\\}-[0-9]\\{2\\}")
  (defconst time-re "[0-9]\\{2\\}:[0-9]\\{2\\}")
  (defconst day-re "[A-Za-z]\\{3\\}")
  (defconst day-time-re (format "\\(%s\\)? ?\\(%s\\)?" day-re time-re))

  (defun svg-progress-percent (value)
    (save-match-data
      (svg-image (svg-lib-concat
                  (svg-lib-progress-bar  (/ (string-to-number value) 100.0)
                                         nil :height 0.8 :margin 2 :stroke 2 :radius 3 :padding 1 :width 30)
                  (svg-lib-tag (concat value "%")
                               nil :height 0.8 :stroke 2 :margin 2)) :ascent 'center)))

  (defun svg-progress-count (value)
    (save-match-data
      (let* ((seq (split-string value "/"))
             (count (if (stringp (car seq)) (float (string-to-number (car seq))) 0))
             (total (if (stringp (cadr seq)) (float (string-to-number (cadr seq))) 1000)))
        (svg-image (svg-lib-concat
                    (svg-lib-progress-bar (/ count total) nil
                                          :height 0.8 :margin 2 :stroke 2 :radius 3 :padding 1 :width 30)
                    (svg-lib-tag value nil :height 0.8 :stroke 2 :margin 2)) :ascent 'center))))

  (setq svg-tag-tags
        `(
          ("^\\*+\\s-+\\(TODO\\)\\b" . ((lambda (tag) (string= tag "TODO") (svg-tag-make "TODO" :face 'warning :inverse t :margin 0 :padding 0))))
          ("^\\*+\\s-+\\(ACTIVE\\)\\b" . ((lambda (tag) (string= tag "ACTIVE") (svg-tag-make "ACTIVE" :face 'info :inverse t :margin 0 :padding 0))))
          ("^\\*+\\s-+\\(WAITING\\)\\b" . ((lambda (tag) (string= tag "WAITING") (svg-tag-make "WAITING" :face 'secondary :inverse t :margin 0 :padding 0))))
          ("^\\*+\\s-+\\(DONE\\)\\b" . ((lambda (tag) (string= tag "DONE") (svg-tag-make "DONE" :face 'success :inverse t :margin 0 :padding 0))))
          ("^\\*+\\s-+\\(NEXT\\)\\b" . ((lambda (tag) (string= tag "NEXT") (svg-tag-make "NEXT" :face 'success :inverse t :margin 0 :padding 0))))
          ("^\\*+\\s-+\\(PAUSED\\)\\b" . ((lambda (tag) (string= tag "PAUSED") (svg-tag-make "PAUSED" :face 'shadow :inverse t :margin 0 :padding 0))))
          ("^\\*+\\s-+\\(CANCELLED\\)\\b" . ((lambda (tag) (string= tag "CANCELLED") (svg-tag-make "CANCELLED" :face 'error :inverse t :margin 0 :padding 0))))
          ("^\\*+\\s-+\\(ARCHIVE\\)\\b" . ((lambda (tag) (string= tag "ARCHIVE") (svg-tag-make "ARCHIVE" :face 'shadow :inverse t :margin 0 :padding 0))))
          ("\\[#[A-Z]\\]" . ( (lambda (tag) (svg-tag-make tag :face 'error :beg 2 :end -1 :margin 3 :padding 1 :height 0.85))))
          ("\\(\\[[0-9]\\{1,3\\}%\\]\\)" . ((lambda (tag) (svg-progress-percent (substring tag 1 -2)))))
          ("\\(\\[[0-9]+/[0-9]+\\]\\)" . ((lambda (tag) (svg-progress-count (substring tag 1 -1)))))
          (,(format "\\(<%s>\\)" date-re) . ((lambda (tag) (svg-tag-make tag :beg 1 :end -1 :margin 0 :face 'success))))
          (,(format "\\(\\[%s\\]\\)" date-re) . ((lambda (tag) (svg-tag-make tag :beg 1 :end -1 :margin 0 :face 'shadow))))))

  (defun org-agenda-show-svg ()
    (let* ((case-fold-search nil)
           (keywords (mapcar #'svg-tag--build-keywords svg-tag--active-tags))
           (keyword (car keywords)))
      (while keyword
        (save-excursion
          (while (re-search-forward (nth 0 keyword) nil t)
            (overlay-put (make-overlay (match-beginning 0) (match-end 0))
                         'display  (nth 3 (eval (nth 2 keyword)))) ))
        (pop keywords)
        (setq keyword (car keywords)))))

  (add-hook 'org-agenda-finalize-hook #'org-agenda-show-svg)

  (add-hook 'svg-tag-mode-hook
            (lambda ()
              (when (derived-mode-p 'org-mode)
                (setq-local font-lock-keywords-case-fold-search nil)
                (font-lock-flush)
                (font-lock-ensure)))))

(use-package! org-kanban :after org)
(use-package! org-appear
  :hook (org-mode . org-appear-mode)
  :config
  (setq org-appear-autoemphasis t
        org-appear-autolinks t
        org-appear-autosubmarkers t))
(use-package! org-autolist :hook (org-mode . org-autolist-mode))

;; =============================================================================
;; 9. HYPRLAND STANDALONE LAUNCHERS
;; =============================================================================
(defun my/popup-calc ()
  "Launch calc and maximize it in the floating window."
  (interactive)
  (calc)
  (delete-other-windows))

(defun my/popup-capture ()
  "Wake up org-capture and launch fleeting note."
  (interactive)
  (require 'org-capture)
  (add-hook 'org-capture-after-finalize-hook #'kill-emacs)
  (org-capture nil "f")
  (delete-other-windows))

(defun my/open-daily-journal ()
  "Create today's journal from template if missing, then open it."
  (interactive)
  (require 'org-roam)
  (require 'org-roam-dailies)
  (let* ((daily-dir (expand-file-name org-roam-dailies-directory "~/Grimoire/Notes/"))
         (today-file (expand-file-name (format-time-string "%Y-%m-%d.org") daily-dir))
         (template-file (expand-file-name "~/Grimoire/Templates/daily.org")))
    (unless (file-exists-p today-file)
      (make-directory daily-dir t)
      (with-temp-file today-file
        (if (file-exists-p template-file)
            (progn
              (insert-file-contents template-file)
              (goto-char (point-min))
              (while (search-forward "{{date}}" nil t)
                (replace-match (format-time-string "%Y-%m-%d"))))
          (insert (format-time-string "#+title: %Y-%m-%d\n\n* Error: Could not find %s") template-file))))
    (find-file today-file)
    (delete-other-windows)))

(defun my/quick-write-clipboard ()
  "Open a temporary buffer, copy contents to clipboard on exit, and close."
  (interactive)
  (switch-to-buffer (get-buffer-create "*Quick-Write*"))
  (text-mode)
  (visual-line-mode 1)
  (evil-insert-state)
  (insert "Write your text here. Press [C-c C-c] to copy to clipboard and close.\n\n")
  (local-set-key (kbd "C-c C-c")
                 (lambda ()
                   (interactive)
                   (goto-char (point-min))
                   (forward-line 2)
                   (delete-region (point-min) (point))
                   (write-region (point-min) (point-max) "/tmp/emacs-quick-write.txt")
                   (call-process-shell-command "wl-copy < /tmp/emacs-quick-write.txt" nil 0)
                   (sleep-for 0.2)
                   (kill-emacs)))
  (delete-other-windows))

;; --- LaTeX Typing & Rendering ---
(use-package! org-fragtog
  :hook (org-mode . org-fragtog-mode))

(after! org
  ;; Turn on CDLaTeX in Org-mode for fast math typing
  (add-hook 'org-mode-hook #'turn-on-org-cdlatex)

  ;; Scale up the rendered equations to match your size 23 font
  (setq org-format-latex-options
        (plist-put org-format-latex-options :scale 3.5)))

;; =============================================================================
;; 10. DIAGRAMS Mermaid
;; =============================================================================

;; --- Mermaid Charts ---
(use-package! ob-mermaid
  :config
  ;; Nix places the executable simply as 'mmdc' in your PATH
  (setq ob-mermaid-cli-path "mmdc"))

(after! org
  ;; Tell Org-Babel that it is allowed to execute Mermaid code blocks
  (org-babel-do-load-languages
   'org-babel-load-languages
   (append org-babel-load-languages
           '((mermaid . t)
             (latex . t)))))

(use-package! anki-editor
  :after org
  :config
  (setq anki-editor-org-tags-as-anki-tags t))

(defun my/dynamic-roam-agenda-files ()
  "Query the org-roam database for files containing TODOs and set them as agenda files."
  (interactive)
  (setq org-agenda-files
        (seq-uniq
         (mapcar #'car
                 (org-roam-db-query
                  [:select [file] :from nodes :where (not (= todo nil))])))))

;; Run this instantly right before building the agenda
(advice-add 'org-agenda :before #'my/dynamic-roam-agenda-files)

(use-package! org-super-agenda
  :after org-agenda
  :config
  (org-super-agenda-mode t)
  (setq org-super-agenda-groups
        '(;; Each group has an implicit boolean OR operator between its selectors.
          (:name "🔥 Overdue"
           :deadline past)
          (:name "⚡ Today"
           :time-grid t
           :scheduled today)
          (:name "🌱 Daily Habits"
           :habit t)
          (:name "📚 Active Research"
           :todo "ACTIVE")
          (:name "⏳ Waiting On"
           :todo "WAITING")
          (:name "Inbox / Unprocessed"
           :file-path "Inbox\\.org")
          ;; Catch-all for everything else
          (:name "📌 Upcoming / Backlog"
           :auto-todo t))))

(use-package! ox-pandoc
  :after org
  :config
  (setq org-pandoc-options '((standalone . t)))
  (setq org-pandoc-format-extensions '(markdown-raw_attribute-tex_math_single_backslash+tex_math_dollars))
  )

;; =============================================================================
;; 11. QUARTO PUBLISHING SYSTEM
;; =============================================================================
(defun my/publish-to-quarto ()
  "Ensure the export directory exists, then safely export via Pandoc."
  (interactive)
  (let* ((export-file (org-export-output-file-name ".qmd"))
         (export-dir (file-name-directory export-file)))
    ;; 1. Automatically create the folder if it doesn't exist
    (unless (file-exists-p export-dir)
      (make-directory export-dir t))
    ;; 2. Run the export
    (org-pandoc-export-to-markdown)
    (message "🚀 Successfully published to: %s" export-dir)))

;; Bind it to your standard shortcut
(map! :leader
      :desc "Publish to Quarto" "n q" #'my/publish-to-quarto)

;; --- BIBLIOGRAPHY / ZOTERO INTEGRATION ---

;; Tell Citar where your auto-exported Zotero library is
(setq citar-bibliography '("~/Grimoire/bibtex.bib"))

;; Tell Citar where Zotero stores the actual PDF files
(setq citar-library-paths '("~/.zotero/zotero/storage/"))

;; Ensure Citar uses the Better BibTeX citation keys
(setq citar-symbols
      `((file ,(all-the-icons-faicon "file-pdf-o" :face 'all-the-icons-red :v-adjust -0.1) . " ")
        (note ,(all-the-icons-material "insert_comment" :face 'all-the-icons-blue :v-adjust -0.3) . " ")
        (link ,(all-the-icons-octicon "link" :face 'all-the-icons-orange :v-adjust 0.01) . " ")))

(setq org-drawio-executable-path "/home/xin/.nix-profile/bin/drawio")
(setq org-drawio-output-dir "/home/xin/Grimoire/Notes/Assets")
(setq org-drawio-input-dir "/home/xin/Grimoire/Notes/Assets")

;; (use-package! org-drawio
;;   :config
;;   (add-hook 'org-mode-hook #'org-drawio-inline-images-mode))

;; (after! vterm
;;   (map! :map vterm-mode-map
;;         "C-S-v" #'vterm-yank))

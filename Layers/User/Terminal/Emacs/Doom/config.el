;; doom.d/config.el

;; =============================================================================
;; 1. PERSONAL IDENTITY & SYSTEM
;; =============================================================================
(setq user-full-name "Xin IronShark"
      user-mail-address "xin@ironshark.org")

(setq confirm-kill-emacs nil)
(setq ispell-program-name "hunspell")

(use-package! exec-path-from-shell
  :config
  (when (memq window-system '(mac ns x pgtk))
    (exec-path-from-shell-initialize)))

(setq initial-major-mode 'org-mode)
(setq initial-scratch-message nil)

;; =============================================================================
;; 2. UI, FONTS & THEME
;; =============================================================================
(setq doom-font (font-spec :family "JetBrains Mono" :size 23))
(setq doom-theme 'doom-city-lights)
(setq display-line-numbers-type t)

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
  '(org-level-1 :foreground "#00FFFF" :weight bold :height 1.5)
  '(org-level-2 :foreground "#00FFFF" :weight bold :height 1.4)
  '(org-level-3 :foreground "#00FFFF" :weight bold :height 1.3)
  '(org-level-4 :foreground "#00FFFF" :weight bold :height 1.2)
  '(org-level-5 :foreground "#00FFFF" :weight bold :height 1.1)
  '(org-level-6 :foreground "#00FFFF" :weight bold :height 1.0))

(use-package! highlight-parentheses
  :hook (prog-mode . highlight-parentheses-mode)
  :config
  (setq hl-paren-colors '("#00FFFF" "#39FF14" "#FF00FF" "#FFD700" "#FF9F43"
                          "#00FA9A" "#1E90FF" "#FF5370" "#B24CFF" "#FF1493"))
  (set-face-attribute 'hl-paren-face nil :weight 'bold))

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
  (setq aidermacs-default-model "gemini/gemini-3-flash-preview")
  (map! :leader :desc "Aidermacs Menu" "o a" #'aidermacs-transient-menu))

;; Read the Gemini API key directly from the file into Emacs' environment
(let ((key-file "/home/xin/Projects/Technonomicon/Layers/Secrets/gemini-api.txt"))
  (when (file-exists-p key-file)
    (setenv "GEMINI_API_KEY" 
            (string-trim (with-temp-buffer 
                           (insert-file-contents key-file) 
                           (buffer-string))))))

(use-package! minuet
  :demand t
  :config
  (setq minuet-provider 'openai-fim-compatible)
  (setq minuet-n-completions 1)
  (plist-put minuet-openai-fim-compatible-options :end-point "http://localhost:11434/v1/completions")
  (plist-put minuet-openai-fim-compatible-options :name "Ollama")
  (plist-put minuet-openai-fim-compatible-options :model "qwen2.5-coder:1.5b")
  (plist-put minuet-openai-fim-compatible-options :api-key "TERM") 
  (add-hook 'prog-mode-hook #'minuet-auto-suggestion-mode)
  (map! :map minuet-active-mode-map
        :i "TAB" #'minuet-accept-suggestion
        :i "M-n" #'minuet-next-suggestion
        :i "M-p" #'minuet-previous-suggestion
        :i "M-e" #'minuet-dismiss-suggestion))

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
  (setq org-directory "~/Grimoire/")
  (setq org-hide-emphasis-markers t)
  (setq org-todo-keywords
        '((sequence "TODO(t)" "ACTIVE(a)" "WAITING(w)" "|" "DONE(d)" "CANCELLED(c)" "ARCHIVE(A)")))

  ;; Fleeting Notes
  (setq org-capture-templates
        '(("f" "Fleeting Note" entry
           (file "~/Grimoire/Inbox.org")
           "* TODO %?\n%U\n%i"
           :prepend t :empty-lines 1))))

(defun my/org-checkbox-smart-space ()
  "When pressing space inside `[]`, insert space, jump out, and add a trailing space."
  (interactive)
  (if (and (eq (char-before) ?\[) (eq (char-after) ?\]))
      (progn (insert " ") (forward-char 1) (insert " "))      
    (insert " ")))

(map! :after org
      :map org-mode-map
      :i "SPC" #'my/org-checkbox-smart-space)

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
           :target (file+head "Blog/%<%Y%m%d%H%M%S>-${slug}.org"
                              "#+title: ${title}\n#+author: Xin IronShark\n#+date: %<%Y-%m-%d>\n#+hugo_base_dir: ~/Projects/Personal-Blog\n#+hugo_section: post\n#+export_file_name: ${slug}\n#+filetags: :blog:\n\n")
           :unnarrowed t)))

  ;; --- Org Roam UI ---
  (setq org-roam-ui-sync-theme t      
        org-roam-ui-follow t         
        org-roam-ui-update-on-save t
        org-roam-ui-open-on-start t))

(use-package! ox-hugo
  :after ox
  :hook (org-mode . org-hugo-auto-export-mode) ;; FIX: Enable minor mode cleanly
  :config
  (setq org-hugo-base-dir "~/Projects/Personal-Blog"))

;; =============================================================================
;; 8. ORG EXTRAS (Modern, SVG, Appear, Autolist, Kanban)
;; =============================================================================
(use-package! org-modern
  :hook (org-mode . org-modern-mode)
  :hook (org-agenda-finalize . org-modern-agenda)
  :config
  (setq org-modern-todo nil
        org-modern-tag nil               
        org-modern-statistics nil        
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
                                   nil :margin 3 :stroke 3 :radius 3 :padding 3 :width 30)
                 (svg-lib-tag (concat value "%")
                              nil :stroke 3 :margin 3)) :ascent 'center)))

  (defun svg-progress-count (value)
    (save-match-data
      (let* ((seq (split-string value "/"))           
             (count (if (stringp (car seq)) (float (string-to-number (car seq))) 0))
             (total (if (stringp (cadr seq)) (float (string-to-number (cadr seq))) 1000)))
        (svg-image (svg-lib-concat
                    (svg-lib-progress-bar (/ count total) nil
                                          :margin 3 :stroke 3 :radius 3 :padding 3 :width 30)
                    (svg-lib-tag value nil :stroke 3 :margin 3)) :ascent 'center))))

  (setq svg-tag-tags
        `(("\\([A-Za-z0-9]+\\):" . ((lambda (tag) (svg-tag-make tag :margin 0 :padding 0 :face 'info))))
          ("\\[#[A-Z]\\]" . ( (lambda (tag) (svg-tag-make tag :face 'error :beg 2 :end -1 :margin 0 :padding 0))))
          ("\\bTODO\\b" . ((lambda (tag) (string= tag "TODO") (svg-tag-make "TODO" :face 'warning :inverse t :margin 0 :padding 0))))
          ("\\bACTIVE\\b" . ((lambda (tag) (string= tag "ACTIVE") (svg-tag-make "ACTIVE" :face 'info :inverse t :margin 0 :padding 0))))
          ("\\bWAITING\\b" . ((lambda (tag) (string= tag "WAITING") (svg-tag-make "WAITING" :face 'secondary :inverse t :margin 0 :padding 0))))
          ("\\bDONE\\b" . ((lambda (tag) (string= tag "DONE") (svg-tag-make "DONE" :face 'success :inverse t :margin 0 :padding 0))))
          ("\\bCANCELLED\\b" . ((lambda (tag) (string= tag "CANCELLED") (svg-tag-make "CANCELLED" :face 'error :inverse t :margin 0 :padding 0))))
          ("\\bARCHIVE\\b" . ((lambda (tag) (string= tag "ARCHIVE") (svg-tag-make "ARCHIVE" :face 'shadow :inverse t :margin 0 :padding 0))))
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
        
  (add-hook 'org-agenda-finalize-hook #'org-agenda-show-svg))

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
          (:name "📚 Active Research"
                 :todo "ACTIVE")
          (:name "⏳ Waiting On"
                 :todo "WAITING")
          (:name "Inbox / Unprocessed"
                 :file-path "Inbox\\.org")
          ;; Catch-all for everything else
          (:name "📌 Upcoming / Backlog"
                 :auto-todo t))))

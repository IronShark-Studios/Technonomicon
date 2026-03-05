;; doom.d/config.el
;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets. It is optional.
(setq user-full-name "Xin IronShark"
      user-mail-address "xin@ironshark.org")

(setq confirm-kill-emacs nil)
(setq ispell-program-name "hunspell")

(map! :i "C-S-v" #'clipboard-yank)
(map! :nvi "<f4>" #'+vterm/toggle)

;; Doom exposes five (optional) variables for controlling fonts in Doom:
;; `doom-font', `doom-variable-pitch-font', `doom-serif-font', `doom-symbol-font',
;; and `doom-big-font'.
(setq doom-font (font-spec :family "JetBrains Mono" :size 23))

;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:
(setq doom-theme 'doom-city-lights)


;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
(setq display-line-numbers-type t)

(use-package! exec-path-from-shell
  :config
  (when (memq window-system '(mac ns x pgtk))
    (exec-path-from-shell-initialize)))

(use-package! fcitx
  :after evil
  :config
  (setq fcitx-use-dbus nil)
  (setq fcitx-remote-command "fcitx5-remote")
  
  (fcitx-aggressive-setup))

(use-package! aidermacs

  :config
  (setq aidermacs-backend 'vterm)
  (setq aidermacs-default-model "ollama/qwen2.5-coder:14b")
  
  (map! :leader
        :desc "Aidermacs Menu" "o a" #'aidermacs-transient-menu))


 (use-package! minuet
  :demand t
  :config
  (setq minuet-provider 'openai-fim-compatible)
  (setq minuet-n-completions 1)
  
  ;; Use plist-put to safely inject your Ollama settings
  (plist-put minuet-openai-fim-compatible-options :end-point "http://localhost:11434/v1/completions")
  (plist-put minuet-openai-fim-compatible-options :name "Ollama")
  (plist-put minuet-openai-fim-compatible-options :model "qwen2.5-coder:1.5b")
  
  ;; THE FIX: Tell Minuet to look at the $TERM environment variable to bypass the key check
  (plist-put minuet-openai-fim-compatible-options :api-key "TERM") 

  ;; Enable auto-suggestions for all programming modes
  (add-hook 'prog-mode-hook #'minuet-auto-suggestion-mode)

  ;; Keybindings for the ghost text
  (map! :map minuet-active-mode-map
        :i "TAB" #'minuet-accept-suggestion
        :i "M-n" #'minuet-next-suggestion
        :i "M-p" #'minuet-previous-suggestion
        :i "M-e" #'minuet-dismiss-suggestion))

(defun my/save-buffer-if-file ()
  "Save the current buffer if it's visiting a file and has been modified."
  (when (and (buffer-file-name) (buffer-modified-p))
    (save-buffer)))

(add-hook 'evil-normal-state-entry-hook #'my/save-buffer-if-file)
(add-hook 'evil-insert-state-entry-hook #'my/save-buffer-if-file)
(add-hook 'doom-switch-buffer-hook #'my/save-buffer-if-file)
(add-hook 'doom-switch-window-hook #'my/save-buffer-if-file)
(add-hook 'focus-out-hook #'my/save-buffer-if-file)

(use-package! bqn-mode
  :mode "\\.bqn$")

(use-package! forth-mode
  :mode "\\.\\(fs\\|fth\\)$")

(add-to-list 'auto-mode-alist '("\\.asm\\'" . asm-mode))

(add-hook 'verilog-mode-hook #'lsp!)
(add-hook 'vhdl-mode-hook #'lsp!)

(after! eww
  (setq eww-auto-rename-buffer t)
  (setq shr-use-fonts nil))

(after! org
  (setq org-directory "~/Grimoire/")
  (setq org-roam-directory "~/Grimoire/Notes/"))

(use-package! websocket
    :after org-roam)

(use-package! org-roam-ui
  :after org-roam
  :config
  (setq org-roam-ui-sync-theme t      
        org-roam-ui-follow t         
        org-roam-ui-update-on-save t
        org-roam-ui-open-on-start t)) 

(after! org-roam
  (setq org-roam-dailies-directory "Journal/")
  
  (setq org-roam-dailies-capture-templates
        '(("d" "default" entry
           "* %?" 
           :target (file+head "%<%Y-%m-%d>.org"
                              "#+title: %<%Y-%m-%d>\n")))))

(use-package! org-modern
  :hook (org-mode . org-modern-mode)
  :hook (org-agenda-finalize . org-modern-agenda)
  :config
  (setq org-modern-todo nil)
  (setq org-modern-tag nil)               ;; Let SVG handle tags
  (setq org-modern-statistics nil)        ;; THE FIX: Let SVG handle progress bars!
  
  (setq org-modern-star '("◉" "○" "●" "◦" "•")
        org-modern-list '((?- . "•"))
        org-modern-hide-stars t
        org-modern-checkbox '((?\s . "󰄱") (?- . "󰄗") (?X . ""))
        org-modern-todo-faces
        '(("TODO" :inverse-video t :weight bold)
          ("DONE" :inverse-video t :weight bold))))


(use-package! svg-tag-mode
  :hook (org-mode . svg-tag-mode)
  :config
  
  ;; --- 1. Regex definitions for Dates (From example-2.el) ---
  (defconst date-re "[0-9]\\{4\\}-[0-9]\\{2\\}-[0-9]\\{2\\}")
  (defconst time-re "[0-9]\\{2\\}:[0-9]\\{2\\}")
  (defconst day-re "[A-Za-z]\\{3\\}")
  (defconst day-time-re (format "\\(%s\\)? ?\\(%s\\)?" day-re time-re))

  ;; --- 2. Custom Progress Bar Generators (From example-2.el) ---
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

  ;; --- 3. The Master Tag List ---
  (setq svg-tag-tags
        `(
          ;; Standard Tags (:PROJECT:)
          (":\\([A-Za-z0-9]+\\):" . ((lambda (tag) (svg-tag-make tag :margin 0 :padding 0 :face 'info))))
          
          ;; Task Priorities ([#A], [#B])
          ("\\[#[A-Z]\\]" . ( (lambda (tag)
                                (svg-tag-make tag :face 'error :beg 2 :end -1 :margin 0 :padding 0))))

          ;; TODO / DONE
          ("TODO" . ((lambda (tag) (svg-tag-make "TODO" :face 'warning :inverse t :margin 0 :padding 0))))
          ("DONE" . ((lambda (tag) (svg-tag-make "DONE" :face 'success :inverse t :margin 0 :padding 0))))

          ;; Progress Bars (Using the custom concat functions!)
          ("\\(\\[[0-9]\\{1,3\\}%\\]\\)" . ((lambda (tag)
                                              (svg-progress-percent (substring tag 1 -2)))))
          ("\\(\\[[0-9]+/[0-9]+\\]\\)" . ((lambda (tag)
                                            (svg-progress-count (substring tag 1 -1)))))

          ;; Active Dates (<2026-03-03>)
          (,(format "\\(<%s>\\)" date-re) .
           ((lambda (tag)
              (svg-tag-make tag :beg 1 :end -1 :margin 0 :face 'success))))
          
          ;; Inactive Dates ([2026-03-03])
          (,(format "\\(\\[%s\\]\\)" date-re) .
           ((lambda (tag)
              (svg-tag-make tag :beg 1 :end -1 :margin 0 :face 'shadow))))
          ))

  ;; --- 4. Org Agenda Integration ---
  (defun org-agenda-show-svg ()
    (let* ((case-fold-search nil)
           (keywords (mapcar #'svg-tag--build-keywords svg-tag--active-tags))
           (keyword (car keywords)))
      (while keyword
        (save-excursion
          (while (re-search-forward (nth 0 keyword) nil t)
            (overlay-put (make-overlay
                          (match-beginning 0) (match-end 0))
                         'display  (nth 3 (eval (nth 2 keyword)))) ))
        (pop keywords)
        (setq keyword (car keywords)))))
        
  (add-hook 'org-agenda-finalize-hook #'org-agenda-show-svg))

(use-package! org-kanban
  :after org)

(after! org
  (setq org-hide-emphasis-markers t))

(after! org
  (require 'org-mouse))

(use-package! org-appear
  :hook (org-mode . org-appear-mode)
  :config
  (setq org-appear-autoemphasis t   
        org-appear-autolinks t     
        org-appear-autosubmarkers t))

(use-package! org-autolist
  :hook (org-mode . org-autolist-mode))

(after! corfu
  (add-to-list 'completion-at-point-functions #'cape-dabbrev)
  (add-to-list 'completion-at-point-functions #'cape-file))

(use-package! which-key-posframe
  :after which-key
  :config
  (setq which-key-posframe-poshandler 'posframe-poshandler-frame-center)
  (which-key-posframe-mode 1))

(plist-put +ligatures-extra-symbols :modes '(prog-mode text-mode org-mode markdown-mode))

(defun my/org-checkbox-smart-space ()
  "When pressing space inside `[]`, insert space, jump out, and add a trailing space."
  (interactive)
  (if (and (eq (char-before) ?\[) (eq (char-after) ?\]))
      (progn
        (insert " ")     
        (forward-char 1)  
        (insert " "))      
    (insert " ")))

(map! :after org
      :map org-mode-map
      :i "SPC" #'my/org-checkbox-smart-space)

(use-package! ox-hugo
  :after ox
  :config
  (setq org-hugo-auto-export-mode t)
  
  (setq org-hugo-base-dir "~/Projects/Personal-Blog"))

(use-package! highlight-parentheses
  :hook (prog-mode . highlight-parentheses-mode)
  :config
  (setq hl-paren-colors '("#00FFFF"   ; 1. Neon Cyan (Innermost)
                          "#39FF14"   ; 2. Radioactive Lime
                          "#FF00FF"   ; 3. Shocking Magenta
                          "#FFD700"   ; 4. Cyber Gold
                          "#FF9F43"   ; 5. Blazing Orange
                          "#00FA9A"   ; 6. Spring Green
                          "#1E90FF"   ; 7. Dodger Blue
                          "#FF5370"   ; 8. Neon Coral
                          "#B24CFF"   ; 9. Electric Purple
                          "#FF1493")) ; 10. Deep Pink 
  (set-face-attribute 'hl-paren-face nil :weight 'bold))

(custom-set-faces!
  ;; 1. Base Text & Punctuation (Makes standard "dark grey" code a crisp, legible grey-white)
  '(default :foreground "#CFDFDF")
  '(font-lock-comment-face :foreground "#8C98A6" :slant italic)
  '(font-lock-constant-face :foreground "#FFD700" :weight bold)   ; Bright Gold
  '(font-lock-type-face :foreground "#FFCB6B")                     ; Warm Yellow
  '(font-lock-number-face :foreground "#FF9F43")                   ; Neon Orange
  '(font-lock-string-face :foreground "#FF5370")
  '(font-lock-keyword-face :foreground "#00FFFF" :weight bold)
  '(font-lock-variable-name-face :foreground "#00FA9A")
  '(font-lock-function-name-face :foreground "#1E90FF" :weight bold)
  '(org-level-1 :foreground "#00FFFF" :weight bold :height 1.5)
  '(org-level-2 :foreground "#00FFFF" :weight bold :height 1.4)
  '(org-level-3 :foreground "#00FFFF" :weight bold :height 1.3)
  '(org-level-4 :foreground "#00FFFF" :weight bold :height 1.2)
  '(org-level-5 :foreground "#00FFFF" :weight bold :height 1.1)
  '(org-level-6 :foreground "#00FFFF" :weight bold :height 1.0)
  )

;; --- Org Capture (Fleeting Notes Inbox) ---
(after! org
  (setq org-capture-templates
        '(("f" "Fleeting Note" entry
           (file "~/Grimoire/Inbox.org")
           "* TODO %?\n%U\n%i"
           :prepend t :empty-lines 1))))

;; --- Standalone Hyprland Launchers ---

(defun my/popup-calc ()
  "Launch calc and maximize it in the floating window."
  (interactive)
  (calc)
  (delete-other-windows))

(defun my/popup-capture ()
  "Wake up org-capture and launch fleeting note."
  (interactive)
  (require 'org-capture)
  
  ;; Tell this standalone Emacs instance to completely quit when capture is done or aborted
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
         ;; THE FIX: Hardcode the exact path so lazy-loading doesn't break it!
         (template-file (expand-file-name "~/Grimoire/Templates/daily.org")))
    
    ;; Create the file if it doesn't exist
    (unless (file-exists-p today-file)
      (make-directory daily-dir t)
      (with-temp-file today-file
        (if (file-exists-p template-file)
            (progn
              (insert-file-contents template-file)
              (goto-char (point-min))
              ;; Replace {{date}} with today's date
              (while (search-forward "{{date}}" nil t)
                (replace-match (format-time-string "%Y-%m-%d"))))
          ;; If it fails, print exactly where it was looking so we can debug
          (insert (format-time-string "#+title: %Y-%m-%d\n\n* Error: Could not find %s") template-file))))
    
    ;; Open the file and ensure it fills the window
    (find-file today-file)
    (delete-other-windows)))



;; --- Floating Quick-Write Scratchpad (Bulletproof Wayland File Handoff) ---
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
                   ;; 1. Delete the prompt lines
                   (goto-char (point-min))
                   (forward-line 2)
                   (delete-region (point-min) (point))
                   
                   ;; 2. Dump the text to a temporary file in RAM
                   (write-region (point-min) (point-max) "/tmp/emacs-quick-write.txt")
                   
                   ;; 3. Launch wl-copy as a completely detached shell command reading the file.
                   ;; The '0' argument is the magic: it tells Emacs NOT to wait for an answer.
                   (call-process-shell-command "wl-copy < /tmp/emacs-quick-write.txt" nil 0)
                   
                   ;; 4. Give CopyQ (your clipboard manager) 0.2 seconds to catch it, then quit
                   (sleep-for 0.2)
                   (kill-emacs)))
  
  (delete-other-windows))

;; doom.d/config.el
;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets. It is optional.
(setq user-full-name "Xin IronShark"
      user-mail-address "xin@ironshark.org")

(setq confirm-kill-emacs nil)
(setq ispell-program-name "hunspell")

(map! :i "C-S-v" #'clipboard-yank)

;; Doom exposes five (optional) variables for controlling fonts in Doom:
;; `doom-font', `doom-variable-pitch-font', `doom-serif-font', `doom-symbol-font',
;; and `doom-big-font'.
(setq doom-font (font-spec :family "iosevka" :size 23))

;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:
(setq doom-theme 'doom-one)

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
                                   nil :margin 0 :stroke 2 :radius 3 :padding 0 :width 10)
                 (svg-lib-tag (concat value "%")
                              nil :stroke 0 :margin 0)) :ascent 'center)))

  (defun svg-progress-count (value)
    (save-match-data
      (let* ((seq (split-string value "/"))           
             (count (if (stringp (car seq)) (float (string-to-number (car seq))) 0))
             (total (if (stringp (cadr seq)) (float (string-to-number (cadr seq))) 1000)))
        (svg-image (svg-lib-concat
                    (svg-lib-progress-bar (/ count total) nil
                                          :margin 0 :stroke 2 :radius 3 :padding 0 :width 10)
                    (svg-lib-tag value nil :stroke 0 :margin 0)) :ascent 'center))))

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

(use-package! org-appear
  :hook (org-mode . org-appear-mode)
  :config
  (setq org-appear-autoemphasis t   
        org-appear-autolinks t     
        org-appear-autosubmarkers t))

(after! corfu
  (add-to-list 'completion-at-point-functions #'cape-dabbrev)
  (add-to-list 'completion-at-point-functions #'cape-file))

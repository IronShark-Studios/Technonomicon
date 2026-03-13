(in-package #:nyxt-user)


;; ==========================================
;; 1. ENABLE VIM MODES & WEB DARK MODE
;; ==========================================

;; Added nyxt/mode/style:dark-mode to force websites into dark mode
(define-configuration web-buffer
  ((default-modes
     (append '(nyxt/mode/vi:vi-normal-mode
               nyxt/mode/blocker:blocker-mode
               nyxt/mode/reduce-tracking:reduce-tracking-mode
               nyxt/mode/style:dark-mode)
             %slot-value%))))

(define-configuration prompt-buffer
  ((default-modes (append '(nyxt/mode/vi:vi-insert-mode) %slot-value%))))


;; ==========================================
;; 2. BROWSER BEHAVIOR
;; ==========================================

;; Removed the session restore and default URL override to prevent
;; the Wayland double-window freeze.
(define-configuration browser
    ((theme theme:+dark-theme+)))
;; ==========================================
;; 3. CUSTOM SEARCH ENGINES
;; ==========================================

(defvar *my-search-engines*
  (list
   (make-instance 'search-engine
                  :name "NixOS Packages"
                  :shortcut "np"
                  :search-url "https://search.nixos.org/packages?channel=unstable&query=~a")
   (make-instance 'search-engine
                  :name "GitHub"
                  :shortcut "gh"
                  :search-url "https://github.com/search?q=~a")))

(define-configuration context-buffer
  ((search-engines (append %slot-value% *my-search-engines*))))

;;; This file must be refrenced from within the user config
;;; section of the main spacemacs file


(global-set-key (kbd "C-s") 'rg-menu)
(global-set-key (kbd "C-x C-s") 'Tn/save-all-buffers)
(global-set-key (kbd "C-c l") 'spacemacs/Tn/org-link-transient-state/body)
(global-set-key (kbd "C-c !")  'spacemacs/Tn/helm-actions-transient-state/body)

(global-set-key (kbd "C-S-c") 'clipboard-kill-ring-save)
(global-set-key (kbd "C-S-x") 'clipboard-kill-region)
(global-set-key (kbd "C-S-v") 'clipboard-yank)

(eval-after-load 'flycheck
                 '(global-set-key (kbd "C-:") 'helm-flyspell-correct))

(eval-after-load 'flyspell
  '(global-set-key (kbd "C-;") 'helm-flycheck))



(define-key evil-normal-state-map (kbd "S-<escape>") 'Tn/evil-normal-and-save)
(define-key evil-hybrid-state-map (kbd "S-<escape>") 'Tn/evil-normal-and-save)

(define-key evil-normal-state-map (kbd "C-h") 'help)


(define-key evil-motion-state-map (kbd "N") 'Tn/evil-pg-down-and-center)
(define-key evil-motion-state-map (kbd "n") 'evil-next-visual-line)
(define-key evil-motion-state-map (kbd "E") 'Tn/evil-pg-up-and-center)
(define-key evil-motion-state-map (kbd "e") 'evil-previous-visual-line)
(define-key evil-motion-state-map (kbd "I") 'Tn/evil-center-page)
(define-key evil-motion-state-map (kbd "i") 'avy-goto-subword-1)
(define-key evil-motion-state-map (kbd "O") 'join-line)


(define-key evil-normal-state-map (kbd "N") 'Tn/evil-pg-down-and-center)
(define-key evil-normal-state-map (kbd "n") 'evil-next-visual-line)
(define-key evil-normal-state-map (kbd "E") 'Tn/evil-pg-up-and-center)
(define-key evil-normal-state-map (kbd "e") 'evil-previous-visual-line)
(define-key evil-normal-state-map (kbd "I") 'Tn/evil-center-page)
(define-key evil-normal-state-map (kbd "i") 'avy-goto-subword-1)
(define-key evil-normal-state-map (kbd "O") 'join-line)
(define-key evil-normal-state-map (kbd "o") 'harpoon-quick-menu-hydra)
(define-key evil-normal-state-map (kbd "/") 'helm-swoop)
(define-key evil-normal-state-map (kbd "?") 'helm-regexp)


(define-key evil-normal-state-map (kbd "<up>") 'evil-previous-visual-line)
(define-key evil-normal-state-map (kbd "<down>") 'evil-next-visual-line)


(define-key evil-normal-state-map (kbd "f") 'evil-snipe-t)
(define-key evil-normal-state-map (kbd "F") 'evil-snipe-T)
(define-key evil-normal-state-map (kbd "t") 'evil-snipe-f)
(define-key evil-normal-state-map (kbd "T") 'evil-snipe-F)


(define-key evil-motion-state-map (kbd "f") 'evil-snipe-t)
(define-key evil-motion-state-map (kbd "F") 'evil-snipe-T)
(define-key evil-motion-state-map (kbd "t") 'evil-snipe-f)
(define-key evil-motion-state-map (kbd "T") 'evil-snipe-F)

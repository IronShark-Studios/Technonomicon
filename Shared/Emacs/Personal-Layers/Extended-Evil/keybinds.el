(global-set-key (kbd "C-s") #'rg-menu)
(global-set-key (kbd "C-x C-s") 'Tn/save-all-buffers)
(global-set-key (kbd "C-c !")  'spacemacs/Tn/helm-actions-transient-state/body)

(eval-after-load 'flycheck
                 '(define-key flycheck-mode-map (kbd "C-:") 'helm-flyspell-correct))

(eval-after-load 'flyspell
                 '(define-key flyspell-mode-map (kbd "C-;") 'helm-flycheck))



(define-key evil-normal-state-map (kbd "S-<escape>") 'Tn/evil-normal-and-save)
(define-key evil-hybrid-state-map (kbd "S-<escape>") 'Tn/evil-normal-and-save)

(define-key evil-normal-state-map (kbd "C-h") 'help)

(define-key evil-normal-state-map (kbd "S-n") 'Tn/evil-pg-down-and-center)
(define-key evil-normal-state-map (kbd "S-e") 'Tn/evil-pg-up-and-center)
(define-key evil-normal-state-map (kbd "n") 'evil-next-visual-line)
(define-key evil-normal-state-map (kbd "e") 'evil-previous-visual-line)
(define-key evil-normal-state-map (kbd "S-i") 'Tn/evil-center-page)
(define-key evil-normal-state-map (kbd "i") 'avy-goto-subword-1)
(define-key evil-motion-state-map (kbd "S-o") 'join-line)
(define-key evil-normal-state-map (kbd "o") 'harpoon-quick-menu-hydra)
(define-key evil-normal-state-map (kbd "/") 'helm-swoop)
(define-key evil-normal-state-map (kbd "?") 'helm-regexp)

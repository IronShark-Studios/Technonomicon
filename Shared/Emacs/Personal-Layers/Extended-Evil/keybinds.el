
(global-set-key (kbd "C-x C-s") 'Tn/save-all-buffers)



(define-key evil-normal-state-map (kbd "S-<escape>") 'Tn/evil-normal-and-save)
(define-key evil-hybrid-state-map (kbd "S-<escape>") 'Tn/evil-normal-and-save)


(define-key evil-normal-state-map (kbd "C-h") 'help)

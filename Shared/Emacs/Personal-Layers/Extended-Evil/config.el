(when (configuration-layer/package-used-p 'evil)


  (global-set-key (kbd "C-x C-s") 'Tn/save-all-buffers)
;; (define-key evil-normal-state-map (kbd "S-<escape>") 'Tn/evil-normal-and-save)
;; (define-key evil-hybrid-state-map (kbd "S-<escape>") 'Tn/evil-normal-and-save)
  ;; (define-key evil-normal-state-map (kbd "C-h") 'help)


  (add-hook 'evil-normal-state-hook
            (lambda ()
              (local-set-key [C-h] 'help)
              (local-set-key [S-<escape>] 'Tn/evil-normal-and-save)))

  (add-hook 'evil-hybrid-state-hook
            (lambda ()
              (local-set-key [S-<escape>] 'Tn/evil-normal-and-save)))



;;; Closing Paren to Eval Statement
  )

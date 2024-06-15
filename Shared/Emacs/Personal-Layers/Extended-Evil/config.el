(when (configuration-layer/package-used-p 'evil)


    (setq evil-cross-lines t evil-respect-visual-line-mode t
          evil-want-fine-undo t)



    (add-hook 'with-editor-mode-hook 'evil-insert-state)




;;; Closing Paren to Eval Statement
  )

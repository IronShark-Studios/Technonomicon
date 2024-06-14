(when (configuration-layer/package-used-p 'citar)

  (add-hook 'LaTeX-mode-hook 'citar-capf-setup)
  (add-hook 'org-mode-hook 'citar-capf-setup)


  (setq org-cite-follow-processor 'citar
        org-cite-insert-processor 'citar
        org-cite-activate-processor 'citar
        citar-org-roam-capture-template-key "s"
        citar-org-roam-subdir (file-truename "~/Grimoire/Reference/")
        citar-bibliography '("~/Apocrypha/Org/bibliography-index.bib")
        org-cite-global-bibliography '("~/Apocrypha/Org/bibliography-index.bib"))

;;; Closing Paren to Eval Statement
  )

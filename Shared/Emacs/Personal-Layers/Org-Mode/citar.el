  (setq org-cite-follow-processor 'citar
        org-cite-insert-processor 'citar
        org-cite-activate-processor 'citar
        org-cite-global-bibliography '("~/Apocrypha/Org/bibliography-index.bib")
        citar-bibliography '("~/Apocrypha/Org/bibliography-index.bib"))

(add-hook 'org-mode-hook 'Tn/org-visual-setup)
(add-hook 'LaTeX-mode-hook 'citar-capf-setup)
(add-hook 'org-mode-hook 'citar-capf-setup)

  (define-key org-mode-map (kbd "C-c b") 'Tn/citar-bibtex-hydra/body)

(define-key helm-comp-read-map (kbd "C-c C-c") 'helm-cr-empty-string)

(defun Tn/bibtex-validate-and-save ()
  "saves file and validates bibtex formatting"
  (interactive)
  (bibtex-clean-entry)
  (bibtex-validate)
  (save-buffer))

(defun Tn/open-bibliography ()
"opens the global bibliography file"
  (interactive)
    (find-file "~/Apocrypha/Org/bibliography-index.bib"))

(setq citar-templates
      '((main . "     ${title:48}")
        (suffix . "${=type=:12}    ${tags keywords:*}")
        (preview . "${author editor:%etal} (${year issued date}) ${title}, ${journal journaltitle publisher container-title collection-title}.\n")
        (note . "Notes on ${author editor:%etal}, ${title}")))

(defhydra Tn/citar-bibtex-hydra (:color blue
                                 :hint nil)
  "
^Citar^                      ^Bibtex^
-----------------------------------------------
_l_: Source Link       _o_: Open Bibtex
_f_: Source File       _n_: New Bibtex Entry
_i_: Citar Link Index  _s_: Bibtex Validate
"
  ("o" Tn/open-bibliography)
  ("s" Tn/bibtex-validate-and-save)
  ("n" bibtex-entry)
  ("i" citar-open)
  ("f" citar-open-files)
  ("l" citar-open-links)
  ("r" Tn/org-roam-main-hydra/body "Return" :color blue )
  ("q" nil "Cancel" :color blue))

(setq citar-org-roam-subdir (file-truename "~/Grimoire/Reference/")
      citar-org-roam-capture-template-key "s")

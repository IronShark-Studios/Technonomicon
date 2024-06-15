(when (configuration-layer/package-used-p 'citar)

  (add-hook 'LaTeX-mode-hook 'citar-capf-setup)
  (add-hook 'org-mode-hook 'citar-capf-setup)


  (setq org-cite-follow-processor 'citar
        org-cite-insert-processor 'citar
        org-cite-activate-processor 'citar
        citar-org-roam-capture-template-key "s"
        bibtex-dialect 'biblatex
        bibtex-autokey-year-length 4
        bibtex-autokey-name-year-separator "-"
        bibtex-autokey-year-title-separator "-"
        bibtex-autokey-titleword-separator "-"
        bibtex-autokey-titlewords 2
        bibtex-autokey-titlewords-stretch 1
        bibtex-autokey-titleword-length 5
        bibtex-align-at-equal-sign t
        bibtex-completion-pdf-symbol "⌘"
        bibtex-completion-pdf-field "File"
        bibtex-completion-notes-symbol "✎"
        bibtex-completion-additional-search-fields '(Tags)
        bibtex-completion-notes-extension ".org"
        bibtex-completion-pdf-extension '(".pdf" ".djvu", ".jpg")
        citar-org-roam-subdir (file-truename "~/Grimoire/Reference/")
        citar-bibliography '("~/Apocrypha/Org/bibliography-index.bib")
        org-cite-global-bibliography '("~/Apocrypha/Org/bibliography-index.bib")
        bibtex-completion-bibliography '("~/Apocrypha/Org/bibliography-index.bib")
        bibtex-completion-browser-function
        (lambda (url _) (start-process "firefox" "*firefox*" "firefox" url))
        bibtex-user-optional-fields '(("tags" "Tags to describe the entry" "")
                                      ("file" "Link to a document file." "" ))
        )




(with-eval-after-load 'bibtex

(add-to-list 'bibtex-biblatex-entry-alist '("Movie" "Feature length video"
                                    (("title")
                                     ("author")
                                     ("date"))
                                    nil
                                    (("writer")
                                     ("cast")
                                     ("genre")
                                     ("tags")
                                     ("file")
                                     ("url")
                                     ("notes"))))

(add-to-list 'bibtex-biblatex-entry-alist '("Video" "Short form video"
                                    (("title")
                                     ("author")
                                     ("date"))
                                    nil
                                    (("publisher")
                                     ("series")
                                     ("episode")
                                     ("guests")
                                     ("notes")
                                     ("url")
                                     ("file")
                                     ("tags"))))

(add-to-list 'bibtex-biblatex-entry-alist '("Image" "Painting, Illustration, Photography"
                                    (("title")
                                     ("author")
                                     ("date"))
                                    nil
                                    (("publisher")
                                     ("series")
                                     ("episode")
                                     ("guests")
                                     ("notes")
                                     ("url")
                                     ("file")
                                     ("tags"))))

(add-to-list 'bibtex-biblatex-entry-alist '("Object" "Sculpture, Architecture, Invention"
                                    (("title")
                                     ("author")
                                     ("date"))
                                    nil
                                    (("publisher")
                                     ("series")
                                     ("episode")
                                     ("guests")
                                     ("notes")
                                     ("url")
                                     ("file")
                                     ("tags"))))

(add-to-list 'bibtex-biblatex-entry-alist '("Music" "Music or Sound of any kind"
                                    (("title")
                                     ("author")
                                     ("date"))
                                    nil
                                    (("publisher")
                                     ("series")
                                     ("episode")
                                     ("guests")
                                     ("notes")
                                     ("url")
                                     ("file")
                                     ("tags"))))

(add-to-list 'bibtex-biblatex-entry-alist '("Web-Page" "General Web Pages"
                                            (("title")
                                             ("author")
                                             ("url")
                                             ("date"))
                                            nil
                                           (("publisher")
                                            ("series")
                                            ("episode")
                                            ("notes")
                                            ("guests")
                                            ("file")
                                            ("tags"))))

(add-to-list 'bibtex-biblatex-entry-alist '("Class" "Classes and instuctional courses"
                                            (("title")
                                             ("author")
                                             ("date"))
                                            nil
                                           (("publisher")
                                            ("url")
                                            ("series")
                                            ("episode")
                                            ("guests")
                                            ("notes")
                                            ("file")
                                            ("tags"))))

(add-to-list 'bibtex-biblatex-entry-alist '("Artist" "Favorite Artist"
                                    (("title")
                                     ("author")
                                     ("date"))
                                    nil
                                    (("genre")
                                     ("tags")
                                     ("file")
                                     ("url")
                                     ("notes"))))

(add-to-list 'bibtex-biblatex-entry-alist '("Game" "Video or Board Game"
                                    (("title")
                                     ("author")
                                     ("date"))
                                    nil
                                    (("writer")
                                     ("cast")
                                     ("genre")
                                     ("tags")
                                     ("file")
                                     ("url")
                                     ("notes"))))
)









;;; Closing Paren to Eval Statement
  )

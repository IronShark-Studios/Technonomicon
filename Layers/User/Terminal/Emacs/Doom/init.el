;; doom.d/init.el
(doom! :input
       ;;bidi              ; (tfel ot) thgir etirw uoy pleh
       ;;chinese
       ;;japanese
       ;;layout            ; auie,ctsrnm is the superior home row

       :completion
       company             ; the ultimate code completion backend
       vertico             ; the search engine of the future

       :ui
       doom                ; what makes DOOM look the way it does
       doom-dashboard      ; a nifty splash screen for Emacs
       hl-todo             ; highlight TODO/FIXME/NOTE/DEPRECATED/HACK/REVIEW
       modeline            ; snazzy, Atom-inspired modeline, plus API
       ophints             ; highlight the region an operation acts on
       (popup +defaults)   ; tame sudden yet inevitable temporary windows
       treemacs            ; a project drawer, like neotree but cooler
       vc-gutter           ; vcs diff in the fringe
       vi-tilde-fringe     ; fringe tildes to mark beyond EOB
       workspaces          ; tab emulation, persistence & separate workspaces

       :editor
       (evil +everywhere)  ; come to the dark side, we have cookies
       file-templates      ; auto-snippets for empty files
       fold                ; (nigh) universal code folding
       snippets            ; my elves. They type so I don't have to

       :emacs
       dired               ; making dired pretty [functional]
       undo                ; persistent, smarter undo for your inevitable mistakes
       vc                  ; version-control and tools, magit

       :term
       vterm               ; the best terminal emulation in Emacs

       :checkers
       syntax              ; tasing you for every semicolon you forget
       spell             ; tasing you for misspelling mispelling
       grammar           ; tasing grammar mistake every you make

       :tools
       eval                ; run code, run (also, repls)
       lookup              ; navigate your code and its documentation
       magit               ; a git porcelain to manage your version-control
       make                ; run make tasks from Emacs
       lsp

       :lang
       (cc +lsp)
       (haskell +lsp)
       (nix +lsp)                 ; I hereby declare "nix geht mehr!"
       (python +lsp +pyright)
       (racket +lsp)
       (zig +lsp)
       scheme
       emacs-lisp          ; drown in parentheses
       markdown            ; writing docs for people to ignore
       org                 ; organize your plain life in plain text
       sh                  ; she sells {ba,z,fi}sh shells on the C xor

       :config
       literate
       (default +bindings +smartparens))

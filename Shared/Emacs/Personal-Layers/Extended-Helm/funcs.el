(when (configuration-layer/package-used-p 'helm)

  (spacemacs|define-transient-state Tn/helm-actions
    :title "Helm Actions"
    :foreign-keys run
    :doc "
              ^Helm^
    ----------------------------
    _s_: Spell    _e_: Syntax
    _c_: Company  _o_: Org-Query
            _q_:  Quit"
    :bindings
    ("q" nil :exit t)
    ("e" helm-flyspell-correct)
    ("o" helm-org-ql)
    ("c" helm-company)
    ("s" helm-flycheck))
)

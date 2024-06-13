(when (configuration-layer/package-used-p 'helm)

;;; Check Hydras
(eval '(defhydra Tn/helm-check-hydra (:color blue
                               :hint nil)
  "
           ^Helm^
----------------------------
_s_: Spell    _e_: Syntax
_c_: Company  _o_: Org-Query
^ ^
^ ^

"
  ("s" helm-flyspell-correct)
  ("e" helm-flycheck)
  ("c" helm-company)
  ("q" nil "Cancel" :color blue)))

)

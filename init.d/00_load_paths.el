;; Add my personal elisp directory to the load path
(add-to-list 'load-path sa-elisp-dir)

; Add external projects to the load path
(dolist (project (directory-files sa-elisp-external-dir t "\\w+"))
  (when (file-directory-p project)
    (add-to-list 'load-path project)))

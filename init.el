;; Directories and file names
(setq sa-emacs-init-file (or load-file-name buffer-file-name))
(setq sa-emacs-config-dir
      (file-name-directory sa-emacs-init-file))
(setq user-emacs-directory sa-emacs-config-dir)
(setq sa-elisp-dir (expand-file-name "elisp" sa-emacs-config-dir))
(setq sa-elisp-external-dir
      (expand-file-name "external" sa-elisp-dir))
(setq sa-init-dir
      (expand-file-name "init.d" sa-emacs-config-dir))

;; Load all elisp files in ./init.d
(if (file-exists-p sa-init-dir)
    (dolist (file (directory-files sa-init-dir t "\\.el$"))
      (load file)))

;; Set up 'custom' system
(setq custom-file (expand-file-name "emacs-customizations.el" sa-emacs-config-dir))
(load custom-file)

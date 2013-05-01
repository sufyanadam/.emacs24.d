(setq sa-code-modes-hook nil)

;; Color-code matching delimiters
(el-get 'sync '(rainbow-delimiters))
(add-hook 'sa-code-modes-hook
	  (lambda () (rainbow-delimiters-mode 1)))

(autoload 'fci-mode "fill-column-indicator"
  "Toggle fill column indicator"
  t)

;; Line numbers
(add-hook 'sa-code-modes-hook
	  (lambda () (linum-mode 1)))

;; Show whitespace
(add-hook 'sa-code-modes-hook
	  (lambda () (whitespace-mode 1)))

;; Truncate lines
(add-hook 'sa-code-modes-hook
	  (lambda () (setq truncate-lines t)))

;; Clean up whitespace on save
(add-hook 'sa-code-modes-hook
          (lambda ()
            (add-hook 'before-save-hook 'whitespace-cleanup nil t)))

;; Show an indicator of the fill column
(add-hook 'sa-code-modes-hook
          (lambda () (fci-mode 1)))            

;; This interacts badly with org-mode HTML export

(add-hook 'org-export-preprocess-hook
          (lambda () (fci-mode -1)))

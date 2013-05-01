(add-hook 'ruby-mode-hook
	  (lambda () (run-hooks 'sa-code-modes-hook)))

;(add-hook 'ruby-mode-hook
;	  (lambda () (rvm-activate-corresponding-ruby)))


;; Load rcodetools
(rvm-use-default)

(eval-after-load 'ruby-mode
  '(progn 
     (rvm-use-default)

     (require 'rcodetools)
     (define-key ruby-mode-map (kbd "C-c C-c") 'xmp)))

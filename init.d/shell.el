(require 'ansi-color)
(require 'multi-term)

(defun sa-shell-init ()
  (local-set-key (kbd "C-z") 'self-insert-command)
  (local-set-key (kbd "<f2>") 'rename-buffer))

(add-hook 'shell-mode-hook
          'sa-shell-init)

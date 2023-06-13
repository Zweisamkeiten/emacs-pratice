(defun find-config ()
  "Edit config.org"
  (interactive)
  (find-file "~/p/emacs/config.org"))
(global-set-key (kbd "C-c I") 'find-config)

(defun reload-config ()
  "Reload config"
  (interactive)
  (delete-file "~/p/emacs/config.el")
  (org-babel-load-file (expand-file-name "~/p/emacs/config.org")))
(global-set-key (kbd "C-c R") 'reload-config)

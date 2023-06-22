(require 'f)

(defvar pratice-emacs-support-path
  (f-dirname load-file-name))

(defvar pratice-emacs-features-path
  (f-parent pratice-emacs-support-path))

(defvar pratice-emacs-root-path
  (f-parent pratice-emacs-features-path))

(add-to-list 'load-path pratice-emacs-root-path)

;; Ensure that we don't load old byte-compiled versions
(let ((load-prefer-newer t))
  (require 'pratice-emacs)
  (require 'espuds)
  (require 'ert))

(Setup
 ;; Before anything has run
 )

(Before
 ;; Before each scenario is run
 )

(After
 ;; After each scenario is run
 )

(Teardown
 ;; After when everything has been run
 )

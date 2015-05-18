;; (menu-bar-mode 0)

(define-coding-system-alias 'utf8 'utf-8)

(load-file "~/.emacs.d/py-autopep8.el/py-autopep8.el")
(require 'py-autopep8)
(add-hook 'python-mode-hook 'py-autopep8-enable-on-save)
(setq py-autopep8-options '("--max-line-length=100"))


;; emacs for python
;; Source: https://github.com/gabrielelanaro/emacs-for-python
(add-to-list 'load-path "~/.emacs.d/emacs-for-python/") ;; tell where to load the various files
(require 'epy-setup)      ;; It will setup other loads, it is required!
(require 'epy-python)     ;; If you want the python facilities [optional]
(require 'epy-completion) ;; If you want the autocompletion settings [optional]
(require 'epy-editing)    ;; For configurations related to editing [optional]
(require 'epy-bindings)   ;; For my suggested keybindings [optional]
(require 'epy-nose)       ;; For nose integration

;; Disable pairing parenthesis
(setq skeleton-pair nil)

;; Autocompletion
(load-file "/home/jose/.emacs.d/emacs-jedi/jedi-core.el")
(load-file "/home/jose/.emacs.d/emacs-jedi/jedi.el")



;; ;; Tell emacs where is your personal elisp lib dir
;; (add-to-list 'load-path "~/.emacs.d/lisp/")

;; ;; load the packaged named xyz.
;; 					;(load "xyz") ;; best not to include the ending “.el” or “.elc”

;; ;; load the packaged named xyz.
;; 					;(load "arduino-mode") ;; 

;; ;; setup files ending in “.js” to open in arduino-mode
;; ;;(add-to-list 'auto-mode-alist '("\\.ino\\'" . arduino-mode))
;; ;; UNCOMMENT TO GET ARDUINO MODE.
;; ;(require 'arduino-mode)
;; ;;(require 'arduino-mode/arduino-mode.el)
;; (require 'paredit)
;; (require 'slime)

;; ;;;;;;;;;;;;;;;;;;;;;,
;; ;; Linus' kernel formatting
;; (defun linux-c-mode ()
;;   "C mode with adjusted defaults for use with the Linux kernel."
;;   (interactive)
;;   (c-mode)
;;   (c-set-style "K&R")
;;   (setq tab-width 4)
;;   (setq indent-tabs-mode t)
;;   (setq c-basic-offset 4))

;; ;;; uncomment this line to disable loading of "default.el" at startup
;; ;; (setq inhibit-default-init t)

;; ;; turn on font-lock mode
;; (when (fboundp 'global-font-lock-mode)
;;   (global-font-lock-mode t)
;;   )

;; ;; enable visual feedback on selections
;; (setq transient-mark-mode t)

;; ;; default to better frame titles
;; (setq frame-title-format
;;       (concat "%b - emacs@" system-name))

;; ;; default to unified diffs
;; (setq diff-switches "-u")

;; ;; always end a file with a newline
;; (setq require-final-newline 'query)

;; (setq c-default-style "k&r")
;; (setq c-basic-offset 4)

;; (setq ring-bell-function 'ignore)
;; (setq visible-bell t)

(message "Happy hacking!! ")

;; My own keybindings

;global-set-key (kbd "C-x C-\\") 'next-line)



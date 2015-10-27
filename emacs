
;; Elpy repository
(require 'package)
(add-to-list 'package-archives
             '("elpy" . "https://jorgenschaefer.github.io/packages/"))

;; Elpy initialization
(package-initialize)
(elpy-enable)


;; (menu-bar-mode 0)

(define-coding-system-alias 'utf8 'utf-8)

; Auto-Pep8
(load-file "~/.emacs.d/py-autopep8.el/py-autopep8.el")
(require 'py-autopep8)
(add-hook 'python-mode-hook 'py-autopep8-enable-on-save)
(setq py-autopep8-options '("--max-line-length=100"))


(load-file "/home/jose/.emacs.d/popup-el/popup.el")
(require 'popup)
;(load-file "/home/jose/.emacs.d/auto-complete/auto-complete-config.el")
(load-file "/home/jose/.emacs.d/auto-complete/auto-complete.el")
(require 'auto-complete)

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


(load-file "~/.emacs.d/emacs-ctable/ctable.el")
(load-file "~/.emacs.d/emacs-deferred/deferred.el")
(load-file "~/.emacs.d/emacs-deferred/concurrent.el")
(load-file "~/.emacs.d/emacs-epc/epc.el")
(load-file "~/.emacs.d/emacs-python-environment/python-environment.el")
					;(require 'epc)
;(add-hook 'python-mode-hook 'jedi:setup)
;; Autocompletion
(load-file "/home/jose/.emacs.d/emacs-jedi/jedi-core.el")
(load-file "/home/jose/.emacs.d/emacs-jedi/jedi.el")

(setq jedi:setup-keys t)                      ; optional(
(setq jedi:complete-on-dot t)                 ; optional

; TBD: RUN M-x jedi:setup
; at the beginning of any emacs instance for python.
;(M-x:jedi:setup)


;; Ropemacs configuration
;; Source: http://wikemacs.org/index.php/Python#Refactoring

(setq emacs-config-path "~/.emacs.d/") 
(setq base-lisp-path "~/.emacs.d/site-lisp/")
(setq site-lisp-path (concat emacs-config-path "/site-lisp"))
(defun add-path (p)
  (add-to-list 'load-path (concat base-lisp-path p)))
(add-path "")
(add-to-list 'load-path "~/.emacs.d")

; Load ropemacs
(defun load-ropemacs ()
  "Load pymacs and ropemacs"
  (interactive)
  (require 'pymacs)
  (pymacs-load "ropemacs" "rope-")
  ;; Automatically save project python buffers before refactorings
  (setq ropemacs-confirm-saving 'nil)
)
(global-set-key "\C-xpl" 'load-ropemacs)

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



(epy-setup-ipython)

; MELPA
(require 'package) ;; You might already have this line
(add-to-list 'package-archives
	     '("melpa" . "http://melpa.org/packages/") t)
(when (< emacs-major-version 24)
  ;; For important compatibility libraries like cl-lib
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))
(package-initialize) ;; You might already have this line


(message "Happy hacking!! ")

;; My own keybindings

;global-set-key (kbd "C-x C-\\") 'next-line)





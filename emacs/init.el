;; Dont show startup message
(setq inhibit-startup-message t)

;; Use Macbook Cmd key as meta
(setq mac-command-modifier 'meta)

;; Show line numbers
(column-number-mode)
(global-display-line-numbers-mode t)

;; Set my favourite monospace font
(set-frame-font "JetBrains Mono 15" nil t)

;; Dont blink cursor
(blink-cursor-mode 0)

;; Allow to resize emacs window by pixel not by line
(setq frame-resize-pixelwise window-system)

;; Hide tool-bar and scroll-bar
(tool-bar-mode -1)
(scroll-bar-mode -1)

;; Show additional paddings on left/right side
;; for helpful info like line-break chars etc
(set-fringe-mode 10)

;; Keep emacs dir clean
(setq emacs-tmp-dir "/tmp")
(setq create-lockfiles nil)
(setq make-backup-files nil)
(setq backup-inhibited nil)

;; Use Melpa packages repo
(require 'package)
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/") t)
;;(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)
(package-refresh-contents)

(load-theme 'dracula t)

;; (use-package fzf
;;   :bind
;;     ;; Don't forget to set keybinds!
;;   :config
;;   (setq fzf/args "-x --color bw --print-query --margin=1,0 --no-hscroll"
;;         fzf/executable "fzf"
;;         fzf/git-grep-args "-i --line-number %s"
;;         ;; command used for `fzf-grep-*` functions
;;         ;; example usage for ripgrep:
;;         ;; fzf/grep-command "rg --no-heading -nH"
;;         fzf/grep-command "grep -nrH"
;;         ;; If nil, the fzf buffer will appear at the top of the window
;;         fzf/position-bottom t
;;         fzf/window-height 15))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(cider clojure-mode dracula-theme orderless rust-mode vertico)))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(use-package vertico
  :ensure
  t
  :hook (after-init . vertico-mode))

(add-hook 'rust-mode-hook
	  'eglot-ensure
	  (lambda () (setq indent-tabs-mode nil))
	  ; (lambda () (setq eglot-inlay-hints-mode t)))
	  )
(setq rust-format-on-save t)

(use-package orderless
  :ensure
  t
  :defer t
  :custom
  (completion-styles '(orderless basic))
  (completion-category-defaults nil)
  (completion-category-overrides
   '((buffer (styles basic orderless))
     (file (styles basic orderless))
     (project-file (styles basic orderless)))))

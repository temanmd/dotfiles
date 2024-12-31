;; Dont show startup message
(setq inhibit-startup-message t)

;; Use Macbook Cmd key as meta
(setq mac-command-modifier 'meta)

;; Show line numbers
(column-number-mode)
(global-display-line-numbers-mode t)

;; Set my favourite monospace font
(set-frame-font "JetBrains Mono Medium 15" nil t)

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

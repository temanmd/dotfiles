(setq inhibit-startup-message t)
(setq mac-command-modifier 'meta)

(column-number-mode)
(global-display-line-numbers-mode t)

(set-frame-font "JetBrains Mono Medium 15" nil t)
(blink-cursor-mode 0)

(setq frame-resize-pixelwise window-system)

(tool-bar-mode -1)
(scroll-bar-mode -1)

(set-fringe-mode 10)

(setq emacs-tmp-dir "/tmp")
(setq create-lockfiles nil)
(setq make-backup-files nil)
(setq backup-inhibited nil)

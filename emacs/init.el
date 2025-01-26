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

;; Use Melpa packages repo
(require 'package)
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/") t)
;;(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)
(package-refresh-contents)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("0a2168af143fb09b67e4ea2a7cef857e8a7dad0ba3726b500c6a579775129635"
     "b41d0a9413fb0034cea34eb8c9f89f6e243bdd76bccecf8292eb1fefa42eaf0a"
     "2551f2b4bc12993e9b8560144fb072b785d4cddbef2b6ec880c602839227b8c7"
     "a0e9bc5696ce581f09f7f3e7228b949988d76da5a8376e1f2da39d1d026af386"
     "da69584c7fe6c0acadd7d4ce3314d5da8c2a85c5c9d0867c67f7924d413f4436"
     "541282f66e5cc83918994002667d2268f0a563205117860e71b7cb823c1a11e9"
     "3d9938bbef24ecee9f2632cb25339bf2312d062b398f0dfb99b918f8f11e11b1"
     "71b688e7ef7c844512fa7c4de7e99e623de99a2a8b3ac3df4d02f2cd2c3215e7"
     "b3ba955a30f22fe444831d7bc89f6466b23db8ce87530076d1f1c30505a4c23b"
     "fae5872ff90462502b3bedfe689c02d2fa281bc63d33cb007b94a199af6ccf24"
     "19b62f442479efd3ca4c1cef81c2311579a98bbc0f3684b49cdf9321bd5dfdbf"
     "b9c002dc827fb75b825da3311935c9f505d48d7ee48f470f0aa7ac5d2a595ab2"
     "cee5c56dc8b95b345bfe1c88d82d48f89e0f23008b0c2154ef452b2ce348da37"
     "ffa78fc746f85d1c88a2d1691b1e37d21832e9a44a0eeee114a00816eabcdaf9"
     "90185f1d8362727f2aeac7a3d67d3aec789f55c10bb47dada4eefb2e14aa5d01"
     "4c16a8be2f20a68f0b63979722676a176c4f77e2216cc8fe0ea200f597ceb22e"
     "aff0396925324838889f011fd3f5a0b91652b88f5fd0611f7b10021cc76f9e09"
     "c038d994d271ebf2d50fa76db7ed0f288f17b9ad01b425efec09519fa873af53"
     "6af300029805f10970ebec4cea3134f381cd02f04c96acba083c76e2da23f3ec"
     "ac893acecb0f1cf2b6ccea5c70ea97516c13c2b80c07f3292c21d6eb0cb45239"
     "b1791a921c4f38cb966c6f78633364ad880ad9cf36eef01c60982c54ec9dd088"
     "d609d9aaf89d935677b04d34e4449ba3f8bbfdcaaeeaab3d21ee035f43321ff1"
     "e85a354f77ae6c2e47667370a8beddf02e8772a02e1f7edb7089e793f4762a45"
     "df39cc8ecf022613fc2515bccde55df40cb604d7568cb96cd7fe1eff806b863b"
     "d6b369a3f09f34cdbaed93eeefcc6a0e05e135d187252e01b0031559b1671e97"
     "59c36051a521e3ea68dc530ded1c7be169cd19e8873b7994bfc02a216041bf3b"
     "296dcaeb2582e7f759e813407ff1facfd979faa071cf27ef54100202c45ae7d4"
     "211621592803ada9c81ec8f8ba0659df185f9dc06183fcd0e40fbf646c995f23"
     "ea4dd126d72d30805c083421a50544e235176d9698c8c541b824b60912275ba1"
     "1ad12cda71588cc82e74f1cabeed99705c6a60d23ee1bb355c293ba9c000d4ac"
     "cd5f8f91cc2560c017cc9ec24a9ab637451e36afd22e00a03e08d7b1b87c29ca"
     "a3a71b922fb6cbf9283884ac8a9109935e04550bcc5d2a05414a58c52a8ffc47"
     "ae20535e46a88faea5d65775ca5510c7385cbf334dfa7dde93c0cd22ed663ba0"
     "36c5acdaf85dda0dad1dd3ad643aacd478fb967960ee1f83981d160c52b3c8ac"
     "00d7122017db83578ef6fba39c131efdcb59910f0fac0defbe726da8072a0729"
     "11819dd7a24f40a766c0b632d11f60aaf520cf96bd6d8f35bae3399880937970"
     default))
 '(package-selected-packages
   '(catppuccin-theme cider company-quickhelp dracula-theme ef-themes f
		      go-mode ht lv markdown-mode orderless rust-mode
		      ultra-scroll vertico zig-mode))
 '(package-vc-selected-packages
   '((ultra-scroll :vc-backend Git :url
		   "https://github.com/jdtsmith/ultra-scroll"))))

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
	  (lambda () (setq indent-tabs-mode nil)))
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

(dolist (char/ligature-re
         `((?-  . ,(rx (or (or "-->" "-<<" "->>" "-|" "-~" "-<" "->") (+ "-"))))
           (?/  . ,(rx (or (or "/==" "/=" "/>" "/**" "/*") (+ "/"))))
           (?*  . ,(rx (or (or "*>" "*/") (+ "*"))))
           (?<  . ,(rx (or (or "<<=" "<<-" "<|||" "<==>" "<!--" "<=>" "<||" "<|>" "<-<"
                               "<==" "<=<" "<-|" "<~>" "<=|" "<~~" "<$>" "<+>" "</>"
                               "<*>" "<->" "<=" "<|" "<:" "<>"  "<$" "<-" "<~" "<+"
                               "</" "<*")
                           (+ "<"))))
           (?:  . ,(rx (or (or ":?>" "::=" ":>" ":<" ":?" ":=") (+ ":"))))
           (?=  . ,(rx (or (or "=>>" "==>" "=/=" "=!=" "=>" "=:=") (+ "="))))
           (?!  . ,(rx (or (or "!==" "!=") (+ "!"))))
           (?>  . ,(rx (or (or ">>-" ">>=" ">=>" ">]" ">:" ">-" ">=") (+ ">"))))
           (?&  . ,(rx (+ "&")))
           (?|  . ,(rx (or (or "|->" "|||>" "||>" "|=>" "||-" "||=" "|-" "|>"
                               "|]" "|}" "|=")
                           (+ "|"))))
           (?.  . ,(rx (or (or ".?" ".=" ".-" "..<") (+ "."))))
           (?+  . ,(rx (or "+>" (+ "+"))))
           (?\[ . ,(rx (or "[<" "[|")))
           (?\{ . ,(rx "{|"))
           (?\? . ,(rx (or (or "?." "?=" "?:") (+ "?"))))
           (?#  . ,(rx (or (or "#_(" "#[" "#{" "#=" "#!" "#:" "#_" "#?" "#(")
                           (+ "#"))))
           (?\; . ,(rx (+ ";")))
           (?_  . ,(rx (or "_|_" "__")))
           (?~  . ,(rx (or "~~>" "~~" "~>" "~-" "~@")))
           (?$  . ,(rx "$>"))
           (?^  . ,(rx "^="))
           (?\] . ,(rx "]#"))))
  (let ((char (car char/ligature-re))
        (ligature-re (cdr char/ligature-re)))
    (set-char-table-range composition-function-table char
                          `([,ligature-re 0 font-shape-gstring]))))

(use-package composite
    :hook (prog-mode . auto-composition-mode)
    :init (global-auto-composition-mode t))

(setq eglot-ignored-server-capabilities '(:inlayHintProvider))

(add-hook 'go-mode-hook
	  (lambda ()
	    (setq tab-width 4)
	    (add-hook 'before-save-hook 'gofmt-before-save)))

(use-package company
  :ensure t
  :delight
  :bind
  (:map company-active-map
        ("C-n" . company-select-next-or-abort)
        ("C-p" . company-select-previous-or-abort))
  :hook
  (after-init . global-company-mode))

(use-package company-quickhelp
  :ensure t
  :custom
  (company-quickhelp-delay 3)
  :config
  (company-quickhelp-mode 1))

(use-package project
  :custom
  (project-vc-ignores '("*/.*/")))

(use-package ultra-scroll
  :init
  (setq scroll-conservatively 101 ; important!
        scroll-margin 0) 
  :config
  (ultra-scroll-mode 1))

(global-set-key (kbd "<pinch>") 'ignore)
(global-set-key (kbd "<C-wheel-up>") 'ignore)
(global-set-key (kbd "<C-wheel-down>") 'ignore)

(use-package catppuccin-theme
  :ensure t
  :config
  (load-theme 'catppuccin t)
  (setq catppuccin-flavor 'macchiato) ;; or 'latte, 'macchiato, or 'mocha
  (catppuccin-reload))

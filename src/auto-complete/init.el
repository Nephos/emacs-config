;; Auto-complete setup

(conf:add-to-path "auto-complete")
(conf:add-to-path "popup")
(conf:add-to-path)

(require 'custom-sources)
(require 'auto-complete)
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories (format "%s/%s" (file-name-directory load-file-name) "/auto-complete/dict"))
(setq ac-comphist-file (format "%s/%s" (file-name-directory load-file-name) "ac-comphist.dat"))
(setq ac-auto-show-menu t)

(defun my-ac-setup-makefile()
  (setq ac-sources '(ac-source-dictionary ac-source-makefile-rules
  					  ac-source-makefile-current-dir)))

(setq ac-ignore-case nil)
(setq ac-disable-faces (remq 'font-lock-string-face ac-disable-faces))
(setq-default ac-sources '(ac-source-abbrev ac-source-dictionary ac-source-words-in-same-mode-buffers))  
(setq ac-delay 0)
(add-hook 'makefile-mode-hook 'my-ac-setup-makefile)
(add-hook 'auto-complete-mode-hook 'ac-common-setup)
(global-auto-complete-mode t)
(global-set-key (kbd "M-SPC") 'ac-complete)

(defun c-electric-esperluette ()
  (interactive)
  (insert "&"))

(global-set-key "&" 'c-electric-esperluette)

(defun c-electric-space ()
  (interactive)
  (insert " "))

(global-set-key " " 'c-electric-space)

(defun c-electric-equal ()
  (interactive)
  (insert "="))

(global-set-key "=" 'c-electric-equal)

(defun c-electric-minus ()
  (interactive)
  (insert "-"))

(global-set-key "-" 'c-electric-minus)

(add-to-list 'ac-non-trigger-commands 'c-electric-esperluette)
(add-to-list 'ac-non-trigger-commands 'c-electric-space)
(add-to-list 'ac-non-trigger-commands 'c-electric-star)
(add-to-list 'ac-non-trigger-commands 'c-electric-semi&comma)
(add-to-list 'ac-non-trigger-commands 'c-electric-lt-gt)
(add-to-list 'ac-non-trigger-commands 'c-electric-paren)
(add-to-list 'ac-non-trigger-commands 'c-electric-slash)
(add-to-list 'ac-non-trigger-commands 'c-electric-colon)
(add-to-list 'ac-non-trigger-commands 'c-electric-brace)
(add-to-list 'ac-non-trigger-commands 'autopair-backspace)
(add-to-list 'ac-non-trigger-commands 'autopair-skip-close-maybe)
(add-to-list 'ac-non-trigger-commands 'ac-clang-async-autocomplete-autotrigger)
(add-to-list 'ac-non-trigger-commands 'c-electric-equal)
(add-to-list 'ac-non-trigger-commands 'c-electric-minus)

;;; 
;;; auctex-setup.el
;;; 

(require 'tex-site)

(japanese-latex-mode)
(add-to-list 'auto-mode-alist
             (cons "\\.tex" 'japanese-latex-mode))
(setq TeX-printer-list '(("xerox")))

(provide 'auctex-setup)

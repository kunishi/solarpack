(require 'tex-site)
(japanese-latex-mode)
(setq TeX-command-list
      (append
       (list (list "LaTeX2e" "platex '\\nonstopmode\\input{%t}'"
		   'TeX-run-LaTeX nil t)
	     (list "LaTeX" "platex209 '\\nonstopmode\\input{%t}'"
		   'TeX-run-LaTeX nil t))
       TeX-command-list))
(setq auto-mode-alist
      (cons (cons "\\.tex" 'japanese-latex-mode) auto-mode-alist))
(setq TeX-printer-list '(("copy") ("ps")))

(provide 'auctex-setup)

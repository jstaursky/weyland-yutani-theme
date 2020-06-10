

;;; weyland-yutani-theme.el --- Emacs theme with a dark background.

;; Copyright (C) 2020 , Joe Staursky 

;; Author: Joe Staursky
;;
;; Version: 0.1
;; Package-Requires: ((emacs "24"))
;; Created (with the help of) emacs-theme-generator,
;; https://github.com/mswift42/theme-creator.


;; This program is free software: you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program. If not, see <http://www.gnu.org/licenses/>.

;; This file is not part of Emacs.

;;; Commentary: Vanilla emacs may need first to (require 'color) before loading
;;; theme.

;;; Code:.

(defcustom weyland-yutani-theme-comment-bg nil
  "Use a background for comment lines."
  :type 'boolean
  :group 'weyland-yutani-theme)

(deftheme weyland-yutani)
(let*
    ((class '((class color) (min-colors 89)))
     (fg1        "#b5b8d9")             ;#949dc1 #9ea5ce #9aa2cc #949cc1 #969cbc #999cb8
     (fg2        (color-lighten-name fg1 3))
     (fg3        (color-darken-name  fg1 3))
     (fg4        (color-darken-name  fg1 6))

     (bg1        "#23262b")             ;#1e2126
     (bg2        (color-lighten-name bg1 3))
     (bg3        (color-lighten-name bg2 2))
     (bg4        "#3c3a50")
     (key2       "#bbe074")             ;         WHITE             MUNSELL  WHITE
     (key3       "#b3f35c")             ;ORIGINAL BALANCED MUNSELL  TWEAKS   BALANCED
     (keyword    "#7cbc50")             ;#95bb62  #89ac5a  #75A24C           #7baa50
                                        ;                          *redesign*
     (type       "#a696ff")             ;#9683f2  #a48fff  #9787ED  #8a7cda  #8d7fdf
     (func       "#d191f8")             ;#b27cd4 #ca95ed  #c08ee1  #CD9CF0 *redesign*
     (var        "#c6b27a")             ;#a59d71  #a8a073  #9E9666  #a69e6b *rebalance*
                                        ;; #a89866
     (builtin    "#9386ff")         ;#8a7ced
     (const      "#6eb8ee")             ;#54b2f2  #50aae7  #6BB7EE  #62a8db  #5693c0
     (negate     "#c5b159")
     (str        "#53c0c9")             ;#29a1ae  #2dafbe  #46A2AA  #39858b  #41979d
     (num        "#e974c7")
     (err        "#f70108")
     (comment    "#4d5b71")             ;#595d75 #686c81 #555970
     (doc-comments   "#62779a")         ;#686c81 #9C9C9C
     (region-bg  "#30374c")
     (region-fg  "#a59ef3")
     (warning    "#ee78e8")

     ;; ["#699f44", "#9386ff", "#b17bd2", "#58a2ee", "#02b72e", "#35afa6"]

     ;; #7c9fd4
     ;; Colors Generic
     (wy-Blue      const)
     (wy-Purple    func)
     (wy-Magenta   warning)
     (wy-Magenta1  (color-lighten-name  wy-Magenta  3))
     (wy-Violet    region-fg)
     (wy-Violet1   (color-lighten-name  wy-Violet   3))
     (wy-Green     keyword)

     (wy-green-02    "#b3f35c")

     (wy-red         "#fe5d62")
     (wy-yellow      "#f5f891")
     (wy-orange      "#f2a652")

     (wy-diff-change "#bf83ff")                ;#f29742
     (wy-diff-insert wy-green-02)                         ;"#bed856"
     (wy-diff-delete wy-red)                           ;#fe5d62

     (wy-window-border "#9d71ce")

     (ttip             "#9a9aba")
     (ttip-bg          "#34323e")
     (red-bg           "#3c2a2c")
     (red-bg-s         "#512e31")
     (green-bg         "#293235")
     (green-bg-s       "#29422d")
     (blue-bg          "#293239")
     (blue-bg-s        "#2d4252")

     (Purple-Dimm  "#413a43")

     )
   (custom-theme-set-faces 'weyland-yutani
   ;; Essentials
   `(default                       ((,class  (:background  ,bg1 :foreground ,fg1))))
   `(cursor                        ((,class  (:background  ,fg1))))
   `(font-lock-warning-face        ((,class  (:foreground  ,warning))))
   `(font-lock-function-name-face  ((,class  (:foreground  ,func ))))
   `(font-lock-variable-name-face  ((,class  (:foreground  ,var))))
   `(font-lock-keyword-face        ((,class  (:foreground  ,keyword))))
   `(font-lock-comment-face        ((,class  (:foreground  ,comment))))
   `(font-lock-doc-face            ((,class  (:foreground  ,doc-comments))))

   
   `(font-lock-type-face           ((,class  (:foreground  ,type))))
   `(font-lock-constant-face       ((,class  (:foreground  ,const))))
   `(font-lock-builtin-face        ((,class  (:foreground  ,builtin))))
   ;; `(font-lock-preprocessor-face ((,class (:foreground ,builtin))))  ;TODO
   `(font-lock-string-face         ((,class  (:foreground  ,str))))
   `(font-lock-doc-face            ((,class  (:foreground  ,comment)))) ;TODO
   `(font-lock-negation-char-face  ((,class  (:foreground  ,negate))))
   `(fringe                        ((,class  (:background  ,bg2 :foreground ,fg4))))
   `(highlight-numbers-number      ((,class  (:foreground  ,num :bold t))))
   `(highlight                     ((,class  (:foreground  ,region-fg :background ,region-bg))))
   `(hl-line                       ((,class  (:background  ,bg2))))
   `(region                        ((,class  (:background  ,region-bg :foreground ,region-fg))))

   `(whitespace-space ((,class ( :foreground ,(color-lighten-name bg1 10)))))
   `(whitespace-trailing ((,class ( :foreground ,keyword))))



   ;; Magit
   `(magit-section-heading        ((,class (:foreground ,keyword :weight bold))))
   `(magit-section-highlight      ((,class (:background ,bg2))))

   `(magit-diff-context-highlight ((,class (:background "#434156" :foreground "#b0adc6"))))

;  `(magit-diff-context-highlight ((,class (:background ,bg3 :foreground ,fg3))))

   `(magit-diff-added-highlight
     ((,class (:background "#2f4436"  :foreground "#80c544" :bold nil))))

   `(magit-diffstat-added   ((,class (:foreground ,type))))

   `(magit-diff-removed-highlight
     ((,class (:background "#372726"  :foreground "#f47073" :bold nil)))) ;#372726 #fe5d62

   `(magit-diffstat-removed ((,class (:foreground ,var))))

   `(magit-diff-hunk-heading-highlight ((,class (:foreground ,bg1 :background "#6f6d8f" ))))

   `(magit-diff-hunk-heading ((,class (:foreground ,bg1 :background "#a59ef3" ))))

   `(diff-header ((,class (:foreground "#46D9FF" ))))

   `(diff-indicator-added ((,class (:foreground "#22aa22" ))))
   
   `(diff-added ((,class (:background ,bg1 :foreground ,keyword))))

   `(magit-diff-whitespace-warning ((,class (:inherit font-lock-warning-face))))

   
   

   ;; `(magit-process-ng ((,class (:foreground ,warning :weight bold))))



   ;; `(magit-process-ok ((,class (:foreground ,func :weight bold))))
   ;; `(magit-branch ((,class (:foreground ,const :weight bold))))
   ;; `(magit-log-author ((,class (:foreground ,fg3))))
   ;; `(magit-hash ((,class (:foreground ,fg2))))
   ;; `(magit-diff-file-header ((,class (:foreground ,fg2 :background ,bg3))))



   ;; Flycheck
   `(flycheck-warning ((,class (:underline (:color ,wy-orange :style line) ))))

   `(flycheck-error
     ((,(append '((supports :underline (:style line))) class)
       (:underline (:style line :color ,err)))
      (,class (:foreground ,bg4 :background ,err :inherit bold :underline t))))
   `(flycheck-fringe-error ((,class (:foreground ,wy-red))))








   `(lsp-face-highlight-read ((,class (:background nil :underline t :bold t))))
   `(lsp-face-highlight-write ((,class (:background nil :underline t :bold t))))
   `(lsp-face-highlight-textual ((,class (:background nil :underline t :bold t))))





   `(success ((,class (:foreground "#80C617" :bold t))))


   `(which-key-command-description-face ((,class (:foreground ,func :background nil))))




   `(vertical-border ((,class (:foreground ,wy-window-border))))

   `(dired-perm-write ((,class (:foreground ,wy-Purple))))








    `(which-func ((,class (:foreground ,wy-green-02))))


    `(evil-ex-lazy-highlight ((,class
                (:foreground "#20242D" :background "Violet"))))

    `(org-document-title ((,class (:inherit font-lock-constant-face))))
    `(org-document-info ((,class (:inherit font-lock-variable-name-face))))
    `(org-ref-cite-face ((,class (:inherit font-lock-function-name-face))))


;;;;; Company
    `(tooltip ((,class
        (:foreground ,fg1 :background ,bg3))))

    `(company-tooltip-annotation-selection ((,class
        (:foreground ,func))))

    `(company-tooltip-annotation ((,class
        (:foreground ,const))))

    ;; Colors that fill the body the tooltip (main bg and fg)
    `(company-tooltip ((,class
        (:foreground "#a59ef3" :background "#30374c" ))))

    ;; Color that match as you type
    `(company-tooltip-common ((,class
        (:foreground "#92b75c"))))

    ;; Color for matching text in the completion selection
    `(company-tooltip-common-selection ((,class
        (:foreground "#98be65" :bold t :underline t))))

    ;; hl-line for company popup
    `(company-tooltip-selection ((,class
        (:background ,(color-darken-name "#575f8c" 11) :foreground ,fg3)))) ;,bg3

    `(company-tooltip-mouse ((,class
        (:inherit highlight))))

    `(company-echo ((,class
        (:foreground ,bg1 :background ,fg1))))

    `(company-preview ((,class
        (:background ,bg1 :foreground ,key2))))

    `(company-scrollbar-fg ((,class
        (:background "#bb6dd1"))))

    `(company-scrollbar-bg ((,class
        (:background "#4e4e4e"))))

    `(company-echo-common ((,class
        (:foreground ,bg1 :background ,fg1))))

    `(company-preview-common ((,class
        (:foreground ,bg2 :foreground ,fg3))))

    `(company-template-field ((,class
        (:inherit region))))

    `(company-tooltop-search ((,class
        (:inherit region))))

    `(company-preview-search ((,class
        (:foreground ,type :background ,bg1))))

    `(company-tooltop-annotation ((,class
        (:foreground ,const))))

    `(company-tooltop-search-selection ((,class
        (:foreground ,const))))

    `(company-tooltop-annotation-selection ((,class
        (:foreground ,const))))



;;;;; merge
    `(smerge-base ((,class (:background ,wy-yellow :extend t))))
    `(smerge-markers ((,class (:background ,ttip-bg :foreground ,ttip :extend t))))

;   `(smerge-mine ((,class (:background ,red-bg))))
;   `(smerge-other ((,class (:background ,green-bg))))
    `(smerge-refined-added ((,class (:background ,green-bg-s :foreground ,wy-Green))))
    `(smerge-refined-changed ((,class (:background ,blue-bg-s :foreground ,wy-Blue))))
    `(smerge-refined-removed ((,class (:background ,red-bg-s :foreground ,wy-red))))

    `(smerge-upper ((,class (:background  ,red-bg)))) ;"#5f2c2e" ,red-bg-s "#331e3b"
    `(smerge-lower ((,class (:background ,green-bg))))  ;,green-bg-s #26402b "#003812"


    `(show-paren-match-face ((,class (:background ,warning))))
    `(isearch ((,class (:bold t :foreground ,warning :background ,bg3))))
    `(mode-line ((,class (:box (:line-width 1 :color nil) :bold t :foreground ,fg4 :background ,bg2))))
    `(mode-line-inactive ((,class (:box (:line-width 1 :color nil :style pressed-button) :foreground ,key3 :background ,bg1 :weight normal))))
        `(mode-line-buffer-id ((,class (:bold t :foreground ,func :background nil))))
    `(mode-line-highlight ((,class (:foreground ,keyword :box nil :weight bold))))
        `(mode-line-emphasis ((,class (:foreground ,fg1))))
    `(vertical-border ((,class (:foreground ,fg3))))
        `(minibuffer-prompt ((,class (:bold t :foreground ,keyword))))
        `(default-italic ((,class (:italic t))))
    `(link ((,class (:foreground ,const :underline t))))
    `(org-code ((,class (:foreground ,fg2))))
    `(org-verbatim ((,class (:foreground "#96c457"))))
    `(org-hide ((,class (:foreground ,fg4))))
    `(org-level-1 ((,class (:bold t :foreground ,wy-Violet :height 1.3))))
    `(org-level-2 ((,class (:bold nil :foreground ,wy-Violet1 :height 1.2))))
        `(org-level-3 ((,class (:bold t :foreground ,wy-Magenta :height 1.1))))
        `(org-level-4 ((,class (:bold nil :foreground ,wy-Magenta1 :height 1.0))))
        `(org-date ((,class (:underline t :foreground ,var) )))
        `(org-footnote  ((,class (:underline t :foreground ,fg4))))
        `(org-link ((,class (:underline t :foreground ,type ))))
        `(org-special-keyword ((,class (:foreground ,func))))
        `(org-block ((,class (:foreground ,fg3))))
        `(org-quote ((,class (:inherit org-block :slant italic))))
        `(org-verse ((,class (:inherit org-block :slant italic))))
        `(org-todo ((,class (:box (:line-width 1 :color ,fg3) :foreground ,keyword :bold t))))
        `(org-done ((,class (:box (:line-width 1 :color ,bg3) :bold t :foreground ,bg4))))
        `(org-warning ((,class (:underline t :foreground ,warning))))
        `(org-agenda-structure ((,class (:weight bold :foreground ,fg3 :box (:color ,fg4) :background ,bg3))))
        `(org-agenda-date ((,class (:foreground ,var :height 1.1 ))))
        `(org-agenda-date-weekend ((,class (:weight normal :foreground ,fg4))))
        `(org-agenda-date-today ((,class (:weight bold :foreground ,keyword :height 1.4))))
        `(org-agenda-done ((,class (:foreground ,bg4))))
    `(org-scheduled ((,class (:foreground ,type))))
        `(org-scheduled-today ((,class (:foreground ,func :weight bold :height 1.2))))
    `(org-ellipsis ((,class (:foreground ,builtin))))
    `(org-verbatim ((,class (:foreground ,fg4))))
        `(org-document-info-keyword ((,class (:foreground ,func))))
    `(font-latex-bold-face ((,class (:foreground ,type))))
    `(font-latex-italic-face ((,class (:foreground ,key3 :italic t))))
    `(font-latex-string-face ((,class (:foreground ,str))))
    `(font-latex-match-reference-keywords ((,class (:foreground ,const))))
    `(font-latex-match-variable-keywords ((,class (:foreground ,var))))
    `(ido-only-match ((,class (:foreground ,warning))))
    `(org-sexp-date ((,class (:foreground ,fg4))))
    `(ido-first-match ((,class (:foreground ,keyword :bold t))))
    `(gnus-header-content ((,class (:foreground ,keyword))))
    `(gnus-header-from ((,class (:foreground ,var))))
    `(gnus-header-name ((,class (:foreground ,type))))
    `(gnus-header-subject ((,class (:foreground ,func :bold t))))
    `(mu4e-view-url-number-face ((,class (:foreground ,type))))
    `(mu4e-cited-1-face ((,class (:foreground ,fg2))))
    `(mu4e-cited-7-face ((,class (:foreground ,fg3))))
    `(mu4e-header-marks-face ((,class (:foreground ,type))))
    `(ffap ((,class (:foreground ,fg4))))
    `(js2-private-function-call ((,class (:foreground ,const))))
    `(js2-jsdoc-html-tag-delimiter ((,class (:foreground ,str))))
    `(js2-jsdoc-html-tag-name ((,class (:foreground ,key2))))
    `(js2-external-variable ((,class (:foreground ,type  ))))
        `(js2-function-param ((,class (:foreground ,const))))
        `(js2-jsdoc-value ((,class (:foreground ,str))))
        `(js2-private-member ((,class (:foreground ,fg3))))
        `(js3-warning-face ((,class (:underline ,keyword))))
        `(js3-error-face ((,class (:underline ,warning))))
        `(js3-external-variable-face ((,class (:foreground ,var))))
        `(js3-function-param-face ((,class (:foreground ,key3))))
        `(js3-jsdoc-tag-face ((,class (:foreground ,keyword))))
        `(js3-instance-member-face ((,class (:foreground ,const))))
    `(warning ((,class (:foreground ,warning :bold t)))) 
    `(ac-completion-face ((,class (:underline t :foreground ,keyword))))
    `(info-quoted-name ((,class (:foreground ,builtin))))
    `(info-string ((,class (:foreground ,str))))
    `(icompletep-determined ((,class :foreground ,builtin)))
        `(undo-tree-visualizer-current-face ((,class :foreground ,builtin)))
        `(undo-tree-visualizer-default-face ((,class :foreground ,fg2)))
        `(undo-tree-visualizer-unmodified-face ((,class :foreground ,var)))
        `(undo-tree-visualizer-register-face ((,class :foreground ,type)))
    `(slime-repl-inputed-output-face ((,class (:foreground ,type))))
        `(trailing-whitespace ((,class :foreground nil :background ,wy-Green)))
        `(rainbow-delimiters-depth-1-face ((,class :foreground ,fg1)))
        `(rainbow-delimiters-depth-2-face ((,class :foreground ,type)))
        `(rainbow-delimiters-depth-3-face ((,class :foreground ,var)))
        `(rainbow-delimiters-depth-4-face ((,class :foreground ,const)))
        `(rainbow-delimiters-depth-5-face ((,class :foreground ,keyword)))
        `(rainbow-delimiters-depth-6-face ((,class :foreground ,fg1)))
        `(rainbow-delimiters-depth-7-face ((,class :foreground ,type)))
        `(rainbow-delimiters-depth-8-face ((,class :foreground ,var)))


    ;; MODE SUPPORT: git-gutter
    `(git-gutter:added               ((,class (:foreground ,wy-Green      ))))
    `(git-gutter:deleted             ((,class (:foreground ,wy-red   ))))
    `(git-gutter:modified            ((,class (:foreground ,wy-yellow       ))))
    ;; `(git-gutter:separator           ((,class (:foreground ,dp_background ))))
    ;; `(git-gutter:unchanged           ((,class (:foreground ,dp_background ))))
    ;; ;; MODE SUPPORT: git-gutter-fr
    `(git-gutter-fr:added            ((,class (:foreground ,wy-Green))))
    `(git-gutter-fr:deleted          ((,class (:foreground ,wy-red))))
    `(git-gutter-fr:modified         ((,class (:foreground ,wy-yellow))))
    ;; ;; MODE SUPPORT: git-gutter+
    ;; `(git-gutter+-commit-header-face ((,class (:foreground ,dp_foreground ))))
    `(git-gutter+-added              ((,class (:foreground ,wy-Green      ))))
    `(git-gutter+-deleted            ((,class (:foreground ,wy-red   ))))
    `(git-gutter+-modified           ((,class (:foreground ,wy-yellow       ))))
    ;; `(git-gutter+-separator          ((,class (:foreground ,dp_foreground ))))
    ;; `(git-gutter+-unchanged          ((,class (:foreground ,dp_foreground ))))
    ;; ;; MODE SUPPORT: git-gutter-fr+
    `(git-gutter-fr+-added           ((,class (:foreground ,wy-Green      ))))
    `(git-gutter-fr+-deleted         ((,class (:foreground ,wy-red   ))))
    `(git-gutter-fr+-modified        ((,class (:foreground ,wy-yellow       ))))

    ;; #d19a66 #e5c07b
    ; diff-hl-change
    `(diff-hl-change        ((,class (:foreground ,wy-diff-change :background ,wy-diff-change))))
    `(diff-hl-insert        ((,class (:foreground ,wy-diff-insert :background ,wy-diff-insert))))
    `(diff-hl-delete        ((,class (:foreground ,wy-diff-delete :background ,wy-diff-delete))))


    ;; ;; MODE LINE
    ;; `(mode-line                    ((,class (:foreground ,fg4           :background ,dp_background :bold t  ))))
    ;; `(mode-line-inactive           ((,class (:foreground ,var           :background nil :weight normal      ))))
    ;; `(mode-line-buffer-id          ((,class (:foreground ,dp_green      :background nil :bold t       ))))
    ;; `(mode-line-buffer-id-inactive ((,class (:foreground ,fg1           :background nil                     ))))
    ;; `(mode-line-highlight          ((,class (:foreground ,keyword       :background nil :weight bold        ))))
    ;; `(mode-line-emphasis           ((,class (:foreground ,fg1           :background nil                     ))))



        `(lazy-highlight ((,class (:foreground ,fg2 :background ,bg3))))
        `(term ((,class (:foreground ,fg1 :background ,bg1))))
        `(term-color-black ((,class (:foreground ,bg3 :background ,bg3))))
        `(term-color-blue ((,class (:foreground ,func :background ,func))))
        `(term-color-red ((,class (:foreground ,keyword :background ,bg3))))
        `(term-color-green ((,class (:foreground ,type :background ,bg3))))
        `(term-color-yellow ((,class (:foreground ,var :background ,var))))
        `(term-color-magenta ((,class (:foreground ,builtin :background ,builtin))))
        `(term-color-cyan ((,class (:foreground ,str :background ,str))))
        `(term-color-white ((,class (:foreground ,fg2 :background ,fg2))))
        `(rainbow-delimiters-unmatched-face ((,class :foreground ,warning)))


        ;;; helm
        `(helm-M-x-key ((,class (:foreground ,wy-Purple))))
        `(helm-match ((,class (:foreground ,wy-Magenta))))
        `(helm-header ((,class (:foreground ,fg2 :background ,bg1 :underline nil :box nil))))
        `(helm-source-header ((,class (:foreground ,keyword :background ,bg1 :underline nil :weight bold))))
        `(helm-selection ((,class (:background ,bg4 :underline nil))))
        `(helm-selection-line ((,class (:background ,bg4))))
        `(helm-visible-mark ((,class (:foreground ,bg1 :background ,bg3))))
        `(helm-candidate-number ((,class (:foreground ,bg1 :background ,fg1))))
        `(helm-separator ((,class (:foreground ,type :background ,bg1))))
        `(helm-time-zone-current ((,class (:foreground ,builtin :background ,bg1))))
        `(helm-time-zone-home ((,class (:foreground ,type :background ,bg1))))
        `(helm-buffer-not-saved ((,class (:foreground ,type :background ,bg1))))
        `(helm-buffer-process ((,class (:foreground ,builtin :background ,bg1))))
        `(helm-buffer-saved-out ((,class (:foreground ,fg1 :background ,bg1))))
        `(helm-buffer-size ((,class (:foreground ,fg1 :background ,bg1))))
        `(helm-ff-directory ((,class (:foreground ,func :background ,bg1 :weight bold))))
        `(helm-ff-file ((,class (:foreground ,fg1 :background ,bg1 :weight normal))))
        `(helm-ff-executable ((,class (:foreground ,key2 :background ,bg1 :weight normal))))
        `(helm-ff-invalid-symlink ((,class (:foreground ,key3 :background ,bg1 :weight bold))))
        `(helm-ff-symlink ((,class (:foreground ,keyword :background ,bg1 :weight bold))))
        `(helm-ff-prefix ((,class (:foreground ,bg1 :background ,keyword :weight normal))))
        `(helm-grep-cmd-line ((,class (:foreground ,fg1 :background ,bg1))))
        `(helm-grep-file ((,class (:foreground ,fg1 :background ,bg1))))
        `(helm-grep-finish ((,class (:foreground ,fg2 :background ,bg1))))
        `(helm-grep-lineno ((,class (:foreground ,fg1 :background ,bg1))))
        `(helm-grep-match ((,class (:foreground nil :background nil :inherit helm-match))))
        `(helm-grep-running ((,class (:foreground ,func :background ,bg1))))
        `(helm-moccur-buffer ((,class (:foreground ,func :background ,bg1))))
        `(helm-source-go-package-godoc-description ((,class (:foreground ,str))))
        `(helm-bookmark-w3m ((,class (:foreground ,type))))

        `(web-mode-builtin-face ((,class (:inherit ,font-lock-builtin-face))))
        `(web-mode-comment-face ((,class (:inherit ,font-lock-comment-face))))
        `(web-mode-constant-face ((,class (:inherit ,font-lock-constant-face))))
        `(web-mode-keyword-face ((,class (:foreground ,keyword))))
        `(web-mode-doctype-face ((,class (:inherit ,font-lock-comment-face))))
        `(web-mode-function-name-face ((,class (:inherit ,font-lock-function-name-face))))
        `(web-mode-string-face ((,class (:foreground ,str))))
        `(web-mode-type-face ((,class (:inherit ,font-lock-type-face))))
        `(web-mode-html-attr-name-face ((,class (:foreground ,func))))
        `(web-mode-html-attr-value-face ((,class (:foreground ,keyword))))
        `(web-mode-warning-face ((,class (:inherit ,font-lock-warning-face))))
        `(web-mode-html-tag-face ((,class (:foreground ,builtin))))
        `(jde-java-font-lock-package-face ((t (:foreground ,var))))
        `(jde-java-font-lock-public-face ((t (:foreground ,keyword))))
        `(jde-java-font-lock-private-face ((t (:foreground ,keyword))))
        `(jde-java-font-lock-constant-face ((t (:foreground ,const))))
        `(jde-java-font-lock-modifier-face ((t (:foreground ,key3))))
        `(jde-jave-font-lock-protected-face ((t (:foreground ,keyword))))
        `(jde-java-font-lock-number-face ((t (:foreground ,var))))


        ))


;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'weyland-yutani)

;; Local Variables:
;; no-byte-compile: t
;; End:

;;; weyland-yutani-theme.el ends here

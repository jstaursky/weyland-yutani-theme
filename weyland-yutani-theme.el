

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

;;; Code:

(defcustom weyland-yutani-theme-comment-bg nil
  "Use a background for comment lines."
  :type 'boolean
  :group 'weyland-yutani-theme)


(deftheme weyland-yutani)
(let*
    ((class '((class color) (min-colors 89)))
                                        ;; Alternatives
     (fg1        "#A9B4C1")             ; #a2b0bc #98a6b2 #9aa9b5 #9fadb9
     (fg2        "#b3c1c9")             ;#a0aeba #9fadb9 #b9c0cd #ACB6C3
     (fg3        "#9babb7")
     (fg4        "#8694a5")
     (bg1        "#232830")             ;#222630 #282C34 #282c34 #232830 #252B3C
     (bg2        (color-lighten-name bg1 3)) ;#4b2332 #222732
     (bg3        (color-lighten-name bg2 3))
     (bg4        "#3c3a50")
     (key2       "#c8ef62")
     (key3       "#b3f35c")

     (keyword    "#95bb62")             ;#8EB45B #8eb45d
     (type       "#9683f2")                    ;#9d8aff
     (func       "#ca95ed")                    ;#ca92eb #cc78e1 #c794e6 "#ba62ce"
     (var        "#cb6bdf")                    ;#c169dc #c46ede #c792ea #cb74e0
                                        ;#cd69e1 #cd69e1
     (builtin    "#9683f2")                    ;#9b88f7 "#959df0"
     (const      "#54b2f2")                    ;#54b2f2
     ;; #008ed2
     (str        "#29a1ae")
     (str-bg        bg1)

     ;; Gold #A4A460
     ;; Red  #E56399
     ;; Yellow #F2B880
     ;; Orange #E08D79

;; "#95bb62", "#b6a1ff", "#d19bf4", "#ef88ff", "#5db9fa", "#51c0cd", \
;; "#9683f2",
;; "#ca95ed"
;; "#29a1ae", "#8b929e", "#8fb45c", "#af9aff", , "#e782fb", \
;; "#55b3f3", "#49b9c6", "#a3aab6", "#779c46", "#9683f2", "#b17dd3", \
;; "#cd69e1", "#369bd9", "#29a1ae", "#8b929e", "#8eb35b", "#ae99ff", \
;; "#c994ec", "#e681fa", "#54b2f2", "#48b8c5", "#a2a9b5", "#779c46", \
;; "#9683f2", "#b17dd3", "#cd69e1", "#369bd9", "#29a1ae", "#8b929e", \
;; "#a5cb71", "#c7b1ff", "#e1abff", "#ff98ff", "#70c9ff", "#64d0dd", \
;; "#b9c0cd"}


     ;; "#94ba61", "#b59fff", "#cf9af2", "#ed87ff", "#5cb8f8", "#50becb", \
     ;; "#779c46", "#9683f2", "#b17dd3", "#cd69e1", "#369bd9", "#29a1ae", \
     ;; "#8fb45c", "#af9aff", "#ca95ed", "#e782fb", "#55b3f3", "#49b9c6", \
     ;; "#779c46", "#9683f2", "#b17dd3", "#cd69e1", "#369bd9", "#29a1ae", \
     ;; "#8eb35b", "#ae99ff", "#c994ec", "#e681fa", "#54b2f2", "#48b8c5", \
     ;; "#779c46", "#9683f2", "#b17dd3", "#cd69e1", "#369bd9", "#29a1ae"}



     ;; ;; "#90b65d", "#b09cff", "#cb96ee", "#e983fd", "#58b4f4", "#4cbac7", \
     ;;    "#779d46", "#9683f2", "#b17dd4", "#ce6ae2", "#379bda", "#2aa1ae", \
     ;;    "#8eb45b", "#af9aff", "#c994ec", "#e781fb", "#55b2f2", "#49b8c5", \
     ;;    "#779c45", "#9683f2", "#b17dd3", "#cd69e1", "#369ad9", "#29a0ad", \
     ;;    "#8eb45c", "#af9aff", "#c994ed", "#e781fb", "#56b2f2", "#4ab9c6", \
     ;;    "#779d46", "#9683f2", "#b17dd4", "#ce6ae2", "#379bd9", "#2aa1ae"}


     (err        "#f70108")
     (comment    "#5e7188")
     (comment-bg bg1)
     ;; {"#9c90e1", "#c794e6"}
     (region-bg  "#30374c")
     (region-fg  "#a59ef3")
     (warning    "#ee78e8")             ;#ed73e7
     ;; #E0C240  ;#c8b46a #c5b159 #c8b46a

     ;; Colors Generic
     (wy-blue        "#69a#caa64c8d8")
     (wy-light-blue  "#54c2cf")


     (wy-pink        "#ed73e7")

     (wy-purple      "#bf83ff")

     (wy-violet       "#c789ed")

     (wy-light-violet-01 "#bcaeff")
     (wy-violet-02       "#AC8DE5")
     (wy-violet-03       "#d196f5")
     (wy-violet-04       "#bb70e0")


     (wy-violet-red   "#f33380")
     (wy-violet-dark  "#BB6DD1")



     (wy-green-01    "#9ccc65")
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
   `(default ((,class (:background ,bg1 :foreground ,fg1))))

   `(lsp-face-highlight-read ((,class (:background nil :underline t :bold t))))
   `(lsp-face-highlight-write ((,class (:background nil :underline t :bold t))))
   `(lsp-face-highlight-textual ((,class (:background nil :underline t :bold t))))





   `(success ((,class (:foreground "#80C617" :bold t))))


   `(font-lock-comment-face
     ((,class (:foreground ,comment
               :background
               ,(when weyland-yutani-theme-comment-bg comment-bg)))))

   `(which-key-command-description-face ((,class (:foreground ,func :background nil))))


   `(font-lock-string-face ((,class (:foreground ,str :background ,str-bg))))

   `(vertical-border ((,class (:foreground ,wy-window-border))))

   `(dired-perm-write ((,class (:foreground ,wy-purple))))




   `(highlight-numbers-number ((,class (:foreground "#e974c7" :bold t)))) ;#e58241 #FA572A
                                        ;#859B09 #048B5C #859B09 #B3D723 #C9D41E #87b61c
                                        ;#F35C5A #E66343 #cbd415 #B9CE1B #bbcc56

                                        ; #EE8EF7
;;;;; flycheck
   `(flycheck-warning ((,class (:underline (:color ,wy-orange :style line) ))))


   `(flycheck-error
     ((,(append '((supports :underline (:style line))) class)
       (:underline (:style line :color ,err)))
      (,class (:foreground ,bg4 :background ,err :inherit bold :underline t))))
   `(flycheck-fringe-error ((,class (:foreground ,wy-red))))


   `(font-lock-builtin-face ((,class (:foreground ,builtin))))
    `(font-lock-negation-char-face ((,class (:foreground ,wy-yellow))))
    `(font-lock-reference-face ((,class (:foreground ,const))))
    `(font-lock-constant-face ((,class (:foreground ,const ))))
        `(font-lock-doc-face ((,class (:foreground ,comment))))
        `(font-lock-function-name-face ((,class (:foreground ,func
                    ;                                        :italic t
                                                           ;:bold t
                                                             ))))                                                   ;:bold t
        `(font-lock-keyword-face ((,class (:foreground ,keyword )))) ;:bold t
        `(font-lock-type-face ((,class (:foreground ,type ))))
        `(font-lock-variable-name-face ((,class (:foreground ,var ;:italic t
                                                             ))))
        `(font-lock-warning-face ((,class (:foreground ,warning :bold t))))


        `(region ((,class (:background ,region-bg :foreground ,region-fg))))

        `(highlight ((,class (:foreground "#a59ef3" :background "#2d324c"))))
    `(hl-line ((,class (:background  ,bg2))))
    `(fringe ((,class (:background ,bg2 :foreground ,fg4))))
    `(cursor ((,class (:background ,fg1))))

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
    `(smerge-refined-added ((,class (:background ,green-bg-s :foreground ,wy-green-01))))
    `(smerge-refined-changed ((,class (:background ,blue-bg-s :foreground ,wy-blue))))
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
    `(org-level-1 ((,class (:bold t :foreground ,wy-light-violet-01 :height 1.3))))
    `(org-level-2 ((,class (:bold nil :foreground ,wy-violet-02 :height 1.2))))
        `(org-level-3 ((,class (:bold t :foreground ,wy-violet-03 :height 1.1))))
        `(org-level-4 ((,class (:bold nil :foreground ,wy-violet-04 :height 1.0))))
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
        `(trailing-whitespace ((,class :foreground nil :background ,wy-green-01)))
        `(rainbow-delimiters-depth-1-face ((,class :foreground ,fg1)))
        `(rainbow-delimiters-depth-2-face ((,class :foreground ,type)))
        `(rainbow-delimiters-depth-3-face ((,class :foreground ,var)))
        `(rainbow-delimiters-depth-4-face ((,class :foreground ,const)))
        `(rainbow-delimiters-depth-5-face ((,class :foreground ,keyword)))
        `(rainbow-delimiters-depth-6-face ((,class :foreground ,fg1)))
        `(rainbow-delimiters-depth-7-face ((,class :foreground ,type)))
        `(rainbow-delimiters-depth-8-face ((,class :foreground ,var)))


    ;; MODE SUPPORT: git-gutter
    `(git-gutter:added               ((,class (:foreground ,wy-green-01      ))))
    `(git-gutter:deleted             ((,class (:foreground ,wy-red   ))))
    `(git-gutter:modified            ((,class (:foreground ,wy-yellow       ))))
    ;; `(git-gutter:separator           ((,class (:foreground ,dp_background ))))
    ;; `(git-gutter:unchanged           ((,class (:foreground ,dp_background ))))
    ;; ;; MODE SUPPORT: git-gutter-fr
    `(git-gutter-fr:added            ((,class (:foreground ,wy-green-01))))
    `(git-gutter-fr:deleted          ((,class (:foreground ,wy-red))))
    `(git-gutter-fr:modified         ((,class (:foreground ,wy-yellow))))
    ;; ;; MODE SUPPORT: git-gutter+
    ;; `(git-gutter+-commit-header-face ((,class (:foreground ,dp_foreground ))))
    `(git-gutter+-added              ((,class (:foreground ,wy-green-01      ))))
    `(git-gutter+-deleted            ((,class (:foreground ,wy-red   ))))
    `(git-gutter+-modified           ((,class (:foreground ,wy-yellow       ))))
    ;; `(git-gutter+-separator          ((,class (:foreground ,dp_foreground ))))
    ;; `(git-gutter+-unchanged          ((,class (:foreground ,dp_foreground ))))
    ;; ;; MODE SUPPORT: git-gutter-fr+
    `(git-gutter-fr+-added           ((,class (:foreground ,wy-green-01      ))))
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




        `(magit-item-highlight ((,class :background ,bg3)))
        `(magit-section-heading        ((,class (:foreground ,keyword :weight bold))))
        `(magit-hunk-heading           ((,class (:background ,bg3))))
        `(magit-section-highlight      ((,class (:background ,bg2))))
        `(magit-hunk-heading-highlight ((,class (:background ,bg3))))
        `(magit-diff-context-highlight ((,class (:background ,bg3 :foreground ,fg3))))
        `(magit-diffstat-added   ((,class (:foreground ,type))))
        `(magit-diffstat-removed ((,class (:foreground ,var))))
        `(magit-process-ok ((,class (:foreground ,func :weight bold))))
        `(magit-process-ng ((,class (:foreground ,warning :weight bold))))
        `(magit-branch ((,class (:foreground ,const :weight bold))))
        `(magit-log-author ((,class (:foreground ,fg3))))
        `(magit-hash ((,class (:foreground ,fg2))))
        `(magit-diff-file-header ((,class (:foreground ,fg2 :background ,bg3))))
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
        `(helm-M-x-key ((,class (:foreground ,wy-purple))))
        `(helm-match ((,class (:foreground ,wy-violet))))
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

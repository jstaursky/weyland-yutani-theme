;;; weyland-yutani-theme.el --- Emacs theme based off Alien movie franchise -*- lexical-binding:t -*-

;; Copyright (C) 2020 , Joe Staursky

;; Author: Joe Staursky
;; Homepage: https://github.com/jstaursky/weyland-yutani-theme
;; Version: 0.1
;; Package-Requires: ((emacs "24.1"))

;; SPECIAL THANKS goes to emacs-theme-generator
;; was a huge help in getting started.
;; (goto https://github.com/mswift42/theme-creator).


;; This program is free software: you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program. If not, see <https://www.gnu.org/licenses/>.

;; This file is not part of Emacs.

;;; Commentary:
;;; Theme based off of the Alien Movie Franchise. Regardless of opinion on the
;;; movies' storyline, the use colors has always been gorgeous.

;;; Code:

(deftheme weyland-yutani)

(defun weyland-yutani-theme-face-specifier (&rest L)
  "Simplifies face specifications.
Encloses each list element inside list 'L' with the appropriate
boilerplate to achieve the standard '(face (( (class
color) (min-colors 89)) . plist))' face specification without all
the parenthetical noise."
  (let (res)
    (dolist (item L res)
      (push `(,(car item)
              (( ((class color)
                  (min-colors 89))
                 ,(cdr item) ))) res))))


(let (
      (fg              "#a9b7ca")
      (fg-alt          "#4a5059")
      (hl              "#26282c")

      (White           "#C3D0DF")

      (base0           "#9ca4b7")
      (base1           "#8c97a7")
      (base2           "#717ea5")
      (base3           "#8f8e9a")
      (base4           "#3e4044")
      (base5           "#4e5054")

      (bg              "#202226")
      (bg-alt          "#26282c")
      (bg-Black        "#2b2f37")
      (bg-darker       "#1c1f1a")

      (_bg-light-Black  "#2E2F2F")

      (bg-Blue         "#272c3b")
      (bg-CharlesGreen "#272D2D")
      (bg-Green        "#3a4f34")
      (bg-Grey         "#434157")
      (bg-Grey-alt     "#343a4f")
      (bg-Orchid       "#3b3559")
      (bg-Red          "#4f343a")
      (bg-Violet       "#504361")

      (_very-dark-bg    "#18191c")

      (key2            "#93cd6d")
      (key3            "#6aa454")

      ;; Main Palette
      (HarlequinGreen        "#77ba5e")
      (Indigo                "#877CEB")
      (Violet                "#c291eb")
      (Magenta               "#C264C6")
      (IcebergBlue           "#4F9FD2")
      (ArcticBlue            "#31a5ae")
      (Gold                  "#bab171")
      (Orchid                "#e372dd")

      ;; ACCENT COLORS
      (Crimson               "#d06985")
      (Mustard               "#90b55b")
      (Purple                "#AD83EB")

      ;; DIMM VARIANTS
      (dimm-Crimson          "#cc5655")

      ;; PALE VARIANTS
      (pale-Indigo           "#9497d3")

      ;; LIGHT VARIANTS
      (_light-ArcticBlue     "#60bec6")
      (light-Crimson         "#f78a7a")
      (light-IcebergBlue     "#4FAED9")
      (light-Indigo          "#A28BE7")
      (light-Orchid          "#ee78e8")
      (light-Purple          "#ba86f4")

      ;; DARK VARIANTS
      (dark-Gold             "#7e784c")
      (dark-Purple           "#7c73cc")
      (very-dark-Purple      "#443f63")
      (bg-dark-Black         "#242733")

      ;; VIBRANT VARIANTS
      (vibrant-Green         "#86dc2f")
      (vibrant-Red           "#ff6c6b")
      (vibrant-Purple        "#AD83EB")

      ;; VERSION CONTROL
      (wylnyut-diff-changed  "#ca84ff")
      (wylnyut-diff-deleted  "#FF6135")
      (wylnyut-diff-added    "#3ABC56"))


  (apply
   'custom-theme-set-faces
   'weyland-yutani
   (weyland-yutani-theme-face-specifier
    ;; FACE                                    :foreground                       :background  :MISC
    `(default                                  :foreground ,fg                   :background ,bg)
    `(default-italic
       :italic t)
    `(header-line                              :foreground ,HarlequinGreen       :background ,bg-Grey-alt
      :height 1.2
      :box (:color ,bg :line-width 1)
      :distant-foreground ,bg)

    `(cursor                                                                     :background ,White)
    `(fringe                                   :foreground ,Purple               :background ,bg)
    `(hl-line                                                                    :background ,hl)
    `(region                                   :foreground ,light-Indigo         :background ,bg-Blue)
    `(vertical-border                          :foreground ,Purple)
    `(highlight                                :foreground ,bg                   :background ,vibrant-Green)
    `(minibuffer-prompt                        :foreground ,HarlequinGreen
      :bold t)

    `(font-lock-builtin-face                   :foreground ,Indigo)
    `(font-lock-comment-face                   :foreground ,fg-alt)
    `(font-lock-constant-face                  :foreground ,IcebergBlue)
    `(font-lock-doc-face                       :foreground ,base2)
    `(font-lock-function-name-face             :foreground ,Violet)
    `(font-lock-keyword-face                   :foreground ,HarlequinGreen)
    `(font-lock-negation-char-face             :foreground ,IcebergBlue)
    `(font-lock-reference-face                 :foreground ,IcebergBlue)
    `(font-lock-string-face                    :foreground ,ArcticBlue)
    `(font-lock-type-face                      :foreground ,Indigo)
    `(font-lock-variable-name-face             :foreground ,Magenta)
    `(font-lock-warning-face                   :foreground ,Crimson)

    `(highlight-numbers-number                 :foreground ,Orchid)

    ;; MODELINE
    `(mode-line                                :foreground ,fg                   :background ,very-dark-Purple
      :box (:color ,very-dark-Purple :line-width 1))
    `(mode-line-buffer-id                      :foreground ,Gold                 :background nil
      :bold nil)
    `(mode-line-inactive                       :foreground ,fg-alt               :background ,bg
      :box (:color ,dark-Purple :line-width 1))
    `(mode-line-buffer-id-inactive             :foreground ,dark-Gold)
    `(mode-line-emphasis                       :foreground ,fg                   :background nil
                                               :bold nil)
    `(mode-line-highlight                      :foreground ,HarlequinGreen
                                               :bold t)


    ;; MODE SUPPORT: powerline
    `(powerline-active0
      :inherit mode-line)
    `(powerline-active1                                                          :background ,very-dark-Purple)
    `(powerline-active2                                                          :background ,very-dark-Purple
      :inherit mode-line)

    `(powerline-inactive0
      :inherit mode-line-inactive)
    `(powerline-inactive1
      :inherit mode-line-inactive)
    `(powerline-inactive2
      :inherit mode-line-inactive)

    `(which-func                               :foreground ,light-IcebergBlue
      :italic t)

    ;; MISC BUILTIN
    `(custom-group-tag                         :foreground ,HarlequinGreen
      :height 1.2)
    `(custom-variable-tag                      :foreground ,Gold)

    `(link                                     :foreground ,IcebergBlue
      :underline t)
    `(show-paren-match                         :foreground ,Violet               :background ,bg-Violet
      :bold t)
    `(shadow                                   :foreground ,base5)
    `(isearch                                  :foreground ,Crimson              :background ,base4
      :bold t)
    ;; NOTE emacs built with gtk cannot customize this.
    `(scroll-bar                               :foreground ,Orchid               :background ,dark-Purple)

    `(completions-first-difference             :foreground ,Magenta)
    `(completions-common-part                  :foreground ,Violet)

    `(spacemacs-micro-state-binding-face
      :inherit modeline)

    `(spacemacs-transient-state-title-face     :foreground ,vibrant-Green)

    ;; MODE SUPPORT: Ebrowse
    `(ebrowse-root-class                       :foreground ,HarlequinGreen)
    `(ebrowse-default                          :foreground ,Indigo)
    `(ebrowse-member-class                     :foreground ,IcebergBlue
      :height 1.2)
    `(ebrowse-member-attribute                 :foreground ,vibrant-Purple)
    `(ebrowse-progress                                                           :background ,vibrant-Green)

    ;; MODE SUPPORT: git-gutter
    `(git-gutter:added                         :foreground ,wylnyut-diff-added)
    `(git-gutter:deleted                       :foreground ,wylnyut-diff-deleted)
    `(git-gutter:modified                      :foreground ,wylnyut-diff-changed)
    `(git-gutter:separator                     :foreground ,bg)
    `(git-gutter:unchanged                     :foreground ,bg)
    ;; MODE SUPPORT: git-gutter-fr
    `(git-gutter-fr:added                      :foreground ,wylnyut-diff-added)
    `(git-gutter-fr:deleted                    :foreground ,wylnyut-diff-deleted)
    `(git-gutter-fr:modified                   :foreground ,wylnyut-diff-changed)
    ;; MODE SUPPORT: git-gutter+
    `(git-gutter+-commit-header-face           :foreground ,fg)
    `(git-gutter+-added                        :foreground ,wylnyut-diff-added)
    `(git-gutter+-deleted                      :foreground ,wylnyut-diff-deleted)
    `(git-gutter+-modified                     :foreground ,wylnyut-diff-changed)
    `(git-gutter+-separator                    :foreground ,fg)
    `(git-gutter+-unchanged                    :foreground ,fg)
    ;; MODE SUPPORT: git-gutter-fr+
    `(git-gutter-fr+-added                     :foreground ,wylnyut-diff-added)
    `(git-gutter-fr+-deleted                   :foreground ,wylnyut-diff-deleted)
    `(git-gutter-fr+-modified                  :foreground ,wylnyut-diff-changed)
    ;; MODE SUPPORT: diff-hl
    `(diff-hl-change                           :foreground ,wylnyut-diff-changed :background ,wylnyut-diff-changed)
    `(diff-hl-insert                           :foreground ,wylnyut-diff-added   :background ,wylnyut-diff-added)
    `(diff-hl-delete                           :foreground ,wylnyut-diff-deleted :background ,wylnyut-diff-deleted)

    ;; MODE SUPPORT auto-dimm-other-buffers
    `(auto-dim-other-buffers-face                                                :background ,bg-darker)

    ;; MODE SUPPORT: lsp
    `(lsp-face-highlight-textual :bolt t)

    ;; MODE SUPPORT: org-mode
    ;; TODO
    `(org-time-grid                            :foreground ,dark-Gold)
    `(org-hide                                 :foreground ,base3)
    `(org-footnote
      :underline t
                                               :foreground ,base3)
    `(org-special-keyword                      :foreground ,Violet)
    `(org-date                                 :foreground ,Magenta
      :underline t)
    `(org-agenda-structure                     :foreground ,base1
      :weight bold
      :box (:color ,base3))
    `(org-agenda-date :height 1.1              :foreground ,Magenta)
    `(org-agenda-date-weekend                  :foreground ,base3
      :bold nil
      :weight normal)
    `(org-agenda-date-today                    :foreground ,HarlequinGreen
      :weight bold
      :height 1.4)
    `(org-scheduled                            :foreground ,Indigo)
    `(org-scheduled-today                      :foreground ,Violet
      :weight bold
      :height 1.2)
    `(org-document-info-keyword                :foreground ,Violet)
    `(org-sexp-date                            :foreground ,base3)
    ;; DONE
    `(org-level-1                              :foreground ,HarlequinGreen
      :bold t
      :height 1.5)
    `(org-level-2                              :foreground ,IcebergBlue
      :bold t
      :height 1.4)
    `(org-level-3                              :foreground ,ArcticBlue
      :bold t
      :height 1.3)
    `(org-level-4                              :foreground ,Violet
      :bold t
      :height 1.1)
    `(org-level-5                              :foreground ,Indigo
      :bold t
      :height 1.0)
    `(org-level-6                              :foreground ,Magenta
      :bold t
      :height 1.0)
    `(org-level-7                              :foreground ,Gold
      :bold t
      :height 1.0)


    `(org-block                                                                  :background ,bg-Black
     :extend t)
    `(org-block-begin-line                                                       :background ,bg-Grey
      :extend t)
    `(org-block-end-line
      :inherit org-block-begin-line)
    `(org-quote
      :inherit org-block
      :slant italic)
    `(org-verse
      :inherit org-block
      :slant italic)

    `(org-code                                 :foreground ,light-Crimson)
    `(org-verbatim                             :foreground ,HarlequinGreen)
    `(org-link
      :inherit link)
    `(org-todo
      :box (:line-width 1 :color ,Crimson))
    `(org-done
      :box (:line-width 1 :color ,base4))
    `(org-agenda-done
      :inherit org-done)
    `(org-ellipsis                             :foreground ,Indigo)
    `(org-warning :underline t                 :foreground ,Crimson)

    ;; MOVE SUPPORT: avy, ace
    `(avy-lead-face                            :foreground ,vibrant-Green        :background ,bg
      :bold t)
    `(avy-lead-face-0                          :foreground ,White                :background ,bg)
    `(avy-background-face                      :foreground ,fg-alt)

    ;; MODE SUPPORT: rainbow-delimiters
    `(rainbow-delimiters-unmatched-face        :foreground ,Crimson)
    `(rainbow-delimiters-depth-1-face          :foreground ,Purple)
    `(rainbow-delimiters-depth-2-face          :foreground ,Indigo)
    `(rainbow-delimiters-depth-3-face          :foreground ,Magenta)
    `(rainbow-delimiters-depth-4-face          :foreground ,ArcticBlue)
    `(rainbow-delimiters-depth-5-face          :foreground ,HarlequinGreen)
    `(rainbow-delimiters-depth-6-face          :foreground ,fg)
    `(rainbow-delimiters-depth-7-face          :foreground ,Indigo)
    `(rainbow-delimiters-depth-8-face          :foreground ,Magenta)

    ;; MODE SUPPORT: company
    `(company-tooltip-annotation-selection     :foreground ,bg :italic t)
    `(company-tooltip-annotation               :foreground ,ArcticBlue)
    ; Colors that fill the body the toolti      (main bg and fg)
    `(company-tooltip                          :foreground ,pale-Indigo          :background ,bg-alt)
    ; Color that match as you type
    `(company-tooltip-common                   :foreground ,key2)
    ; Color for matching text in the completion selection
    `(company-tooltip-common-selection         :foreground ,bg :bold t)
    ; hl-line for company popup
    `(company-tooltip-selection                :foreground ,bg                   :background ,light-Indigo)
    `(company-echo                             :foreground ,bg                   :background ,fg)
    `(company-scrollbar-fg                                                       :background ,Magenta)
    `(company-scrollbar-bg                                                       :background ,base4)
    `(company-echo-common                      :foreground ,bg                   :background ,fg)
    `(company-preview                          :foreground ,key2                 :background ,bg)
    `(company-preview-common                   :foreground ,base1                :background ,bg-alt)
    `(company-preview-search                   :foreground ,Indigo               :background ,bg)
    `(company-tooltip-mouse :inherit highlight)
    `(company-template-field :inherit region)


    `(font-latex-bold-face                     :foreground ,Indigo)
    `(font-latex-italic-face                   :foreground ,key3
      :italic t)
    `(font-latex-string-face                   :foreground ,ArcticBlue)
    `(font-latex-match-reference-keywords      :foreground ,IcebergBlue)
    `(font-latex-match-variable-keywords       :foreground ,Magenta)
    `(font-latex-warning-face                  :foreground ,light-Crimson)
    `(ido-only-match                           :foreground ,Crimson)
    `(ido-first-match                          :foreground ,HarlequinGreen
      :bold t)
    `(gnus-header-content                      :foreground ,HarlequinGreen)
    `(gnus-header-from                         :foreground ,Magenta)
    `(gnus-header-name                         :foreground ,Indigo)
    `(gnus-header-subject                      :foreground ,Violet
      :bold t)
    `(mu4e-view-url-number-face                :foreground ,Indigo)
    `(mu4e-cited-1-face                        :foreground ,base0)
    `(mu4e-cited-7-face                        :foreground ,base1)
    `(mu4e-header-marks-face                   :foreground ,Indigo)
    `(ffap                                     :foreground ,base3)
    `(js2-private-function-call                :foreground ,IcebergBlue)
    `(js2-jsdoc-html-tag-delimiter             :foreground ,ArcticBlue)
    `(js2-jsdoc-html-tag-name                  :foreground ,key2)
    `(js2-external-variable                    :foreground ,Indigo  )
    `(js2-function-param                       :foreground ,IcebergBlue)
    `(js2-jsdoc-value                          :foreground ,ArcticBlue)
    `(js2-private-member                       :foreground ,base1)
    `(js3-warning-face
      :underline ,HarlequinGreen)
    `(js3-error-face
      :underline ,Crimson)
    `(js3-external-variable-face               :foreground ,Magenta)
    `(js3-function-param-face                  :foreground ,key3)
    `(js3-jsdoc-tag-face                       :foreground ,HarlequinGreen)
    `(js3-instance-member-face                 :foreground ,IcebergBlue)
    `(ac-completion-face                       :foreground ,HarlequinGreen
      :underline t)
    `(info-quoted-name                         :foreground ,Indigo)
    `(info-string                              :foreground ,ArcticBlue)
    `(icompletep-determined                    :foreground ,Indigo)
    `(undo-tree-visualizer-current-face        :foreground ,Indigo)
    `(undo-tree-visualizer-default-face        :foreground ,base0)
    `(undo-tree-visualizer-unmodified-face     :foreground ,Magenta)
    `(undo-tree-visualizer-register-face       :foreground ,Indigo)
    `(slime-repl-inputed-output-face           :foreground ,Indigo)
    `(trailing-whitespace                      :foreground nil                   :background ,fg-alt)


    `(smerge-markers                                                             :background ,bg-Black
      :underline ,vibrant-Purple
      :overline ,vibrant-Purple)
    `(git-commit-comment-file                  :foreground ,Crimson)

    `(magit-filename                           :foreground ,Violet)
    `(magit-diff-file-heading                  :foreground ,Crimson
      :bold t
      :italic t
      :height 1.15)
    `(magit-item-highlight                                                       :background ,base4)
    `(magit-section-heading                    :foreground ,HarlequinGreen
      :weight bold
      :height 1.3)
    `(magit-hunk-heading                                                         :background ,base4)
    `(magit-section-highlight                                                    :background ,bg-alt)

    `(magit-diff-hunk-heading-highlight        :foreground ,bg                   :background ,Violet
      :weight bold)
    `(magit-diff-hunk-heading                  :foreground ,bg                   :background ,bg-Violet)
    `(magit-section-highlight                                                    :background ,bg-Blue)
    `(magit-diff-added                         :foreground ,key3                 :background ,bg-Green)
    `(magit-diff-added-highlight               :foreground ,Mustard              :background ,bg-Green)
    `(magit-diff-removed-highlight             :foreground ,vibrant-Red          :background ,bg-Red)
    `(magit-diff-removed                       :foreground ,dimm-Crimson         :background ,bg-Red)
    `(magit-dimmed                             :foreground ,base5)


    `(magit-diff-our                           :foreground ,vibrant-Red          :background ,bg-Red)
    `(magit-diff-our-highlight                 :foreground ,vibrant-Red          :background ,bg-Red)
    `(magit-diff-context-highlight             :foreground ,base0                :background ,bg-dark-Black)
    `(magit-diff-context
      :inherit magit-dimmed)
    `(magit-diff-base-highlight                :foreground ,light-Crimson        :background ,bg-Red)
    `(magit-diffstat-added                     :foreground ,Indigo)
    `(magit-diffstat-removed                   :foreground ,Magenta)
    `(magit-process-ok                         :foreground ,Violet
      :weight bold)
    `(magit-process-ng                         :foreground ,Crimson
      :weight bold)
    `(magit-branch                             :foreground ,IcebergBlue
      :weight bold)
    `(magit-branch-remote                      :foreground ,Gold)
    `(magit-branch-local                       :foreground ,Purple)
    `(magit-log-author                         :foreground ,base1)
    `(magit-hash                               :foreground ,base0)
    `(magit-diff-file-header                   :foreground ,base0                :background ,base4)

    `(lazy-highlight
      :inherit highlight)
    `(term                                     :foreground ,fg                   :background ,bg)
    `(term-color-black                         :foreground ,base4                :background ,base4)
    `(term-color-blue                          :foreground ,Violet               :background ,Violet)
    `(term-color-red                           :foreground ,HarlequinGreen       :background ,base4)
    `(term-color-green                         :foreground ,Indigo               :background ,base4)
    `(term-color-yellow                        :foreground ,Magenta              :background ,Magenta)
    `(term-color-magenta                       :foreground ,Indigo               :background ,Indigo)
    `(term-color-cyan                          :foreground ,ArcticBlue           :background ,ArcticBlue)
    `(term-color-white                         :foreground ,base0                :background ,base0)

    `(xref-file-header                         :foreground ,Gold)

    `(ggtags-highlight                         :underline nil)
    `(helm-buffer-modified                     :foreground ,Crimson :italic t)
    `(helm-buffer-directory                    :foreground ,Gold)
    `(helm-header                              :foreground ,base0                :background ,bg
      :underline nil
      :box nil)
    `(helm-header-line-left-margin             :foreground ,bg                   :background ,ArcticBlue)
    `(helm-match                               :foreground ,light-Purple)
    `(helm-source-header                       :foreground ,HarlequinGreen       :background ,bg
      :underline nil
      :weight bold)
    `(helm-selection                           :foreground ,light-Orchid         :background ,bg-Orchid
      :underline nil
      :extend t)
    `(helm-selection-line                                                        :background ,bg-alt)
    `(helm-M-x-key                             :foreground ,light-Purple)
    `(helm-candidate-number                    :foreground ,bg                   :background ,fg)
    `(helm-separator                           :foreground ,Indigo               :background ,bg)
    `(helm-time-zone-current                   :foreground ,Indigo               :background ,bg)
    `(helm-time-zone-home                      :foreground ,Indigo               :background ,bg)
    `(helm-buffer-not-saved                    :foreground ,Indigo               :background ,bg)
    `(helm-buffer-process                      :foreground ,Indigo               :background ,bg)
    `(helm-buffer-saved-out                    :foreground ,fg                   :background ,bg)
    `(helm-buffer-size                         :foreground ,fg                   :background ,bg)
    `(helm-ff-directory                        :foreground ,Violet               :background ,bg
      :weight bold)

    `(helm-ff-dotted-directory                 :foreground ,fg-alt               :background ,bg)

    `(helm-ff-file                             :foreground ,fg                   :background ,bg
      :weight normal)
    `(helm-ff-executable                       :foreground ,key2                 :background ,bg
      :weight normal)
    `(helm-ff-invalid-symlink                  :foreground ,key3                 :background ,bg
      :weight bold)
    `(helm-ff-symlink                          :foreground ,HarlequinGreen       :background ,bg
      :weight bold)
    `(helm-ff-prefix                           :foreground ,bg                   :background ,HarlequinGreen
      :weight normal)
    `(helm-grep-cmd-line                       :foreground ,fg                   :background ,bg)
    `(helm-grep-file                           :foreground ,fg                   :background ,bg)
    `(helm-grep-finish                         :foreground ,base0                :background ,bg)
    `(helm-grep-lineno                         :foreground ,fg                   :background ,bg)
    `(helm-grep-match                          :foreground nil                   :background nil
      :inherit helm-match)
    `(helm-grep-running                        :foreground ,Violet               :background ,bg)
    `(helm-moccur-buffer                       :foreground ,Violet               :background ,bg)
    `(helm-source-go-package-godoc-description :foreground ,ArcticBlue)
    `(helm-bookmark-w3m                        :foreground ,Indigo)
    `(helm-visible-mark                        :foreground ,ArcticBlue           :background ,bg-Blue
      :extend t)
    `(helm-swoop-target-line-face              :foreground ,vibrant-Green        :background ,bg-CharlesGreen
      :extend t)
    `(helm-swoop-target-word-face
      :inherit highlight)

    `(web-mode-builtin-face
      :inherit ,font-lock-builtin-face)
    `(web-mode-comment-face
      :inherit ,font-lock-comment-face)
    `(web-mode-constant-face
      :inherit ,font-lock-constant-face)
    `(web-mode-keyword-face                    :foreground ,HarlequinGreen)
    `(web-mode-doctype-face
      :inherit ,font-lock-comment-face)
    `(web-mode-function-name-face
      :inherit ,font-lock-function-name-face)
    `(web-mode-string-face                     :foreground ,ArcticBlue)
    `(web-mode-type-face
      :inherit ,font-lock-type-face)
    `(web-mode-html-attr-name-face             :foreground ,Violet)
    `(web-mode-html-attr-value-face            :foreground ,HarlequinGreen)
    `(web-mode-warning-face
      :inherit ,font-lock-warning-face)
    `(web-mode-html-tag-face                   :foreground ,Indigo)
    `(jde-java-font-lock-package-face          :foreground ,Magenta)
    `(jde-java-font-lock-public-face           :foreground ,HarlequinGreen)
    `(jde-java-font-lock-private-face          :foreground ,HarlequinGreen)
    `(jde-java-font-lock-constant-face         :foreground ,IcebergBlue)
    `(jde-java-font-lock-modifier-face         :foreground ,key3)
    `(jde-jave-font-lock-protected-face        :foreground ,HarlequinGreen)
    `(jde-java-font-lock-number-face           :foreground ,Magenta))))

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'weyland-yutani)

;; Shuts Package-Lint up.
(provide 'weyland-yutani-theme)

;;; weyland-yutani-theme.el ends here

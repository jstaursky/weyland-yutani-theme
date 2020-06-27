;;; weyland-yutani-theme.el --- Emacs theme with a dark background.

;; Copyright (C) 2020 , Joe Staursky

;; Author: Joe Staursky
;; https://github.com/jstaursky/weyland-yutani-theme
;; Version: 0.1
;; Package-Requires: ((emacs "24"))

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
;; along with this program. If not, see <http://www.gnu.org/licenses/>.

;; This file is not part of Emacs.

;;; Commentary:

;;; Code:

(require 'color)

(deftheme weyland-yutani)

(defun weyland-yutani-face-specifier (&rest L)
  "Simplifies face specifications."
  (let (res '())
    (dolist (item L res)
      (push `(,(car item)
              (( ((class color)
                  (min-colors 89))
                 ,(cdr item) ))) res))))


(let ((class '((class color) (min-colors 89)))
      (fg              "#a9b7ca")
      (fg-alt          "#4a5059")
      (White           "#C3D0DF")
      (base0           "#9aa7b8")
      (base1           "#8c97a7")
      (base2           "#717ea5")
      (base3           "#7e8895")
      (base4           "#3e4044")
      (base5           "#4e5054")

      (bg              "#202226")
      (bg-alt          "#26282c")
      (bg-Blue         "#272c3b")
      (bg-ArcticBlue   "#1b2526")
      (bg-Green        "#354238")
      (bg-Red          "#4f343a")
      (bg-Violet       "#504361")
      (bg-Orchid       "#3b3559")

      (key2            "#93cd6d")
      (key3            "#6aa454")

      ;; Main Palette
      (Indigo          "#8B8BE7")
      (HarlequinGreen  "#77ba5e")
      (IcebergBlue     "#4F9FD2")
      (Violet          "#c291eb")
      (ArcticBlue      "#31a5ae")
      (lightarcticblue "#60bec6")
      (Magenta         "#C264C6")
      (Crimson         "#d06985")
      (lightCrimson    "#f78a7a")
      (dimmCrimson     "#cc5655")

      (Mustard         "#90b55b")
      (lightIndigo     "#A28BE7")
      (paleIndigo      "#9497d3")
      (Purple          "#AD83EB")
      (lightPurple     "#ba86f4")
      (darkPurple      "#7a628f")
      (Gold            "#bab171")
      (Orchid          "#e372dd")
      (lightOrchid     "#ee78e8")

      (VibrantGreen    "#86dc2f")
      (VibrantRed      "#ff6c6b")


      (weyland-yutani-diff-changed    "#ca84ff")
      (weyland-yutani-diff-deleted    "#FF6135")
      (weyland-yutani-diff-added      "#3ABC56")
      )

  (apply
   'custom-theme-set-faces
   'weyland-yutani
   (weyland-yutani-face-specifier


    `(default :background ,bg :foreground ,fg)
    `(hl-line :background ,(color-lighten-name bg 3))

    `(font-lock-builtin-face :foreground ,Indigo)
    `(font-lock-comment-face :foreground ,fg-alt)
	`(font-lock-constant-face :foreground ,IcebergBlue)
    `(font-lock-doc-face      :foreground ,base2)
    `(font-lock-function-name-face :foreground ,Violet)
    `(font-lock-keyword-face       :foreground ,HarlequinGreen)
	`(font-lock-negation-char-face :foreground ,IcebergBlue)
	`(font-lock-reference-face :foreground ,IcebergBlue)
    `(font-lock-string-face :foreground ,ArcticBlue :background ,bg-ArcticBlue)
    `(font-lock-type-face   :foreground ,Indigo )
    `(font-lock-variable-name-face :foreground ,Magenta)
    `(font-lock-warning-face       :foreground ,Crimson)

    `(region    :background ,bg-Blue :foreground ,lightIndigo)
    `(highlight :foreground ,bg :background ,VibrantGreen)
	`(hl-line   :background  ,bg-alt)

	`(cursor :background ,White)
    `(show-paren-match-face :background ,Crimson)
    `(isearch :bold t :foreground ,Crimson :background ,base4)
    `(mode-line :foreground ,base3 :background ,bg :bold t)
    `(mode-line-inactive :foreground ,IcebergBlue :background nil)
    `(mode-line-buffer-id :bold t :foreground ,Violet :background nil)
	`(mode-line-highlight :foreground ,HarlequinGreen :box nil :weight bold)
    `(mode-line-emphasis :foreground ,fg)

    ;; MODE SUPPORT: powerline
    `(powerline-active0 :background ,bg)
    `(powerline-active1 :background ,bg-alt)
    `(powerline-active2 :foreground ,White :background ,base4)
    `(powerline-inactive0 :background ,base3)

	`(vertical-border :foreground ,Purple)
	`(fringe :background ,bg :foreground ,Purple)
    `(minibuffer-prompt :bold t :foreground ,HarlequinGreen)
    `(default-italic :italic t)

    `(which-func :foreground ,Purple)

    `(highlight-numbers-number :foreground ,Orchid)

    ;; MODE SUPPORT: Ebrowse
    `(ebrowse-root-class :foreground ,HarlequinGreen)
    `(ebrowse-default :foreground ,Indigo)

    ;; MODE SUPPORT: git-gutter
    `(git-gutter:added               :foreground ,weyland-yutani-diff-added)
    `(git-gutter:deleted             :foreground ,weyland-yutani-diff-deleted)
    `(git-gutter:modified            :foreground ,weyland-yutani-diff-changed)
    `(git-gutter:separator           :foreground ,bg)
    `(git-gutter:unchanged           :foreground ,bg)
    ;; MODE SUPPORT: git-gutter-fr
    `(git-gutter-fr:added            :foreground ,weyland-yutani-diff-added)
    `(git-gutter-fr:deleted          :foreground ,weyland-yutani-diff-deleted)
    `(git-gutter-fr:modified         :foreground ,weyland-yutani-diff-changed)
    ;; MODE SUPPORT: git-gutter+
    `(git-gutter+-commit-header-face :foreground ,fg)
    `(git-gutter+-added              :foreground ,weyland-yutani-diff-added)
    `(git-gutter+-deleted            :foreground ,weyland-yutani-diff-deleted)
    `(git-gutter+-modified           :foreground ,weyland-yutani-diff-changed)
    `(git-gutter+-separator          :foreground ,fg)
    `(git-gutter+-unchanged          :foreground ,fg)
    ;; MODE SUPPORT: git-gutter-fr+
    `(git-gutter-fr+-added           :foreground ,weyland-yutani-diff-added)
    `(git-gutter-fr+-deleted         :foreground ,weyland-yutani-diff-deleted)
    `(git-gutter-fr+-modified        :foreground ,weyland-yutani-diff-changed)

    ;; MODE SUPPORT: diff-hl
    `(diff-hl-change :background ,weyland-yutani-diff-changed :foreground ,weyland-yutani-diff-changed)
    `(diff-hl-insert :background ,weyland-yutani-diff-added :foreground ,weyland-yutani-diff-added)
    `(diff-hl-delete :background ,weyland-yutani-diff-deleted :foreground ,weyland-yutani-diff-deleted)

    ;; MODE SUPPORT: lsp
    `(lsp-face-highlight-textual :bolt t :underline t)
 
    `(completions-first-difference :foreground ,Magenta)
    `(completions-common-part :foreground ,Violet)
	`(link :foreground ,IcebergBlue :underline t)
	`(org-code :foreground ,base0)
	`(org-hide :foreground ,base3)
    `(org-level-1 :bold t :foreground ,base0 :height 1.1)
    `(org-level-2 :bold nil :foreground ,base1)
    `(org-level-3 :bold t :foreground ,base3)
    `(org-level-4 :bold nil :foreground ,base5)
    `(org-date    :underline t :foreground ,Magenta)
    `(org-footnote :underline t :foreground ,base3)
    `(org-link     :underline t :foreground ,Indigo )
    `(org-special-keyword :foreground ,Violet)
    `(org-block :foreground ,base1)
    `(org-quote :inherit org-block :slant italic)
    `(org-verse :inherit org-block :slant italic)
    `(org-todo :box (:line-width 1 :color ,base1))
    `(org-done :box (:line-width 1 :color ,base4))
    `(org-warning :underline t :foreground ,Crimson)
    `(org-agenda-structure :weight bold :foreground ,base1 :box (:color ,base3))
    `(org-agenda-date :foreground ,Magenta :height 1.1 )
    `(org-agenda-date-weekend :weight normal :foreground ,base3)
    `(org-agenda-date-today :weight bold :foreground ,HarlequinGreen :height 1.4)
    `(org-agenda-done :foreground ,base5)
	`(org-scheduled   :foreground ,Indigo)
    `(org-scheduled-today :foreground ,Violet :weight bold :height 1.2)
	`(org-ellipsis :foreground ,Indigo)
	`(org-verbatim :foreground ,base3)
    `(org-document-info-keyword :foreground ,Violet)
	`(font-latex-bold-face :foreground ,Indigo)
	`(font-latex-italic-face :foreground ,key3 :italic t)
	`(font-latex-string-face :foreground ,ArcticBlue)
	`(font-latex-match-reference-keywords :foreground ,IcebergBlue)
	`(font-latex-match-variable-keywords :foreground ,Magenta)
	`(ido-only-match  :foreground ,Crimson)
	`(org-sexp-date   :foreground ,base3)
	`(ido-first-match :foreground ,HarlequinGreen :bold t)
	`(gnus-header-content :foreground ,HarlequinGreen)
	`(gnus-header-from :foreground ,Magenta)
	`(gnus-header-name :foreground ,Indigo)
	`(gnus-header-subject :foreground ,Violet :bold t)
	`(mu4e-view-url-number-face :foreground ,Indigo)
	`(mu4e-cited-1-face :foreground ,base0)
	`(mu4e-cited-7-face :foreground ,base1)
	`(mu4e-header-marks-face :foreground ,Indigo)
	`(ffap :foreground ,base3)
	`(js2-private-function-call    :foreground ,IcebergBlue)
	`(js2-jsdoc-html-tag-delimiter :foreground ,ArcticBlue)
	`(js2-jsdoc-html-tag-name :foreground ,key2)
	`(js2-external-variable   :foreground ,Indigo  )
    `(js2-function-param :foreground ,IcebergBlue)
    `(js2-jsdoc-value    :foreground ,ArcticBlue)
    `(js2-private-member :foreground ,base1)
    `(js3-warning-face   :underline ,HarlequinGreen)
    `(js3-error-face     :underline ,Crimson)
    `(js3-external-variable-face :foreground ,Magenta)
    `(js3-function-param-face    :foreground ,key3)
    `(js3-jsdoc-tag-face         :foreground ,HarlequinGreen)
    `(js3-instance-member-face   :foreground ,IcebergBlue)
	`(ac-completion-face :underline t :foreground ,HarlequinGreen)
	`(info-quoted-name :foreground ,Indigo)
	`(info-string      :foreground ,ArcticBlue)
	`(icompletep-determined :foreground ,Indigo)
    `(undo-tree-visualizer-current-face :foreground ,Indigo)
    `(undo-tree-visualizer-default-face :foreground ,base0)
    `(undo-tree-visualizer-unmodified-face :foreground ,Magenta)
    `(undo-tree-visualizer-register-face   :foreground ,Indigo)
	`(slime-repl-inputed-output-face       :foreground ,Indigo)
    `(trailing-whitespace :foreground nil :background ,fg-alt)
    `(rainbow-delimiters-depth-1-face :foreground ,fg)
    `(rainbow-delimiters-depth-2-face :foreground ,Indigo)
    `(rainbow-delimiters-depth-3-face :foreground ,Magenta)
    `(rainbow-delimiters-depth-4-face :foreground ,IcebergBlue)
    `(rainbow-delimiters-depth-5-face :foreground ,HarlequinGreen)
    `(rainbow-delimiters-depth-6-face :foreground ,fg)
    `(rainbow-delimiters-depth-7-face :foreground ,Indigo)
    `(rainbow-delimiters-depth-8-face :foreground ,Magenta)
    `(magit-item-highlight  :background ,base4)
    `(magit-section-heading :foreground ,HarlequinGreen :weight bold)
    `(magit-hunk-heading      :background ,base4)
    `(magit-section-highlight :background ,bg-alt)

    `(magit-diff-hunk-heading-highlight :foreground ,bg :background ,Violet :weight bold)
    `(magit-diff-hunk-heading :foreground ,bg :background ,bg-Violet)
    `(magit-section-highlight :background ,bg-Blue)
    `(magit-diff-added :foreground ,key3 :background ,bg-Green)
    `(magit-diff-added-highlight :foreground ,Mustard :background ,bg-Green)
    `(magit-diff-removed-highlight :foreground ,VibrantRed :background ,bg-Red)
    `(magit-diff-removed :foreground ,dimmCrimson :background ,bg-Red)
    `(magit-dimmed :foreground ,base5)


    `(magit-diff-our :foreground ,VibrantRed :background ,bg-Red)
    `(magit-diff-our-highlight :foreground ,VibrantRed :background ,bg-Red)
    `(magit-diff-context-highlight :background ,bg-Blue)
    `(magit-diff-context :inherit magit-dimmed)
    `(magit-diff-base-highlight :foreground ,lightCrimson :background ,bg-Red)
    `(magit-diffstat-added   :foreground ,Indigo)
    `(magit-diffstat-removed :foreground ,Magenta)
    `(magit-process-ok :foreground ,Violet :weight bold)
    `(magit-process-ng :foreground ,Crimson :weight bold)
    `(magit-branch     :foreground ,IcebergBlue :weight bold)
    `(magit-branch-remote :foreground ,ArcticBlue)
    `(magit-branch-local  :foreground ,lightIndigo)
    `(magit-log-author    :foreground ,base1)
    `(magit-hash :foreground ,base0)
    `(magit-diff-file-header :foreground ,base0 :background ,base4)

    `(lazy-highlight     :inherit highlight)
    `(term               :foreground ,fg     :background ,bg)
    `(term-color-black   :foreground ,base4  :background ,base4)
    `(term-color-blue    :foreground ,Violet :background ,Violet)
    `(term-color-red     :foreground ,HarlequinGreen :background ,base4)
    `(term-color-green   :foreground ,Indigo  :background ,base4)
    `(term-color-yellow  :foreground ,Magenta :background ,Magenta)
    `(term-color-magenta :foreground ,Indigo  :background ,Indigo)
    `(term-color-cyan    :foreground ,ArcticBlue :background ,ArcticBlue)
    `(term-color-white   :foreground ,base0      :background ,base0)
    `(rainbow-delimiters-unmatched-face :foreground ,Crimson)

    `(header-line :foreground ,fg :background ,bg :distant-foreground ,bg)

    `(helm-buffer-modified  :foreground ,Crimson :italic t)
    `(helm-buffer-directory :foreground ,Gold)
    `(helm-header :foreground ,base0 :background ,bg :underline nil :box nil)
    `(helm-header-line-left-margin   :background ,ArcticBlue :foreground ,bg)
    `(helm-match :foreground ,lightPurple)
    `(helm-source-header :foreground ,HarlequinGreen
                         :background ,bg :underline nil :weight bold)
    `(helm-selection :background ,bg-Orchid :foreground ,lightOrchid
                     :underline nil :extend t)
    `(helm-selection-line :background ,bg-alt)
    `(helm-M-x-key        :foreground ,lightPurple)
    `(helm-visible-mark   :foreground ,fg :background ,bg)
    `(helm-candidate-number :foreground ,bg :background ,fg)
    `(helm-separator        :foreground ,Indigo :background ,bg)
    `(helm-time-zone-current :foreground ,Indigo :background ,bg)
    `(helm-time-zone-home    :foreground ,Indigo :background ,bg)
    `(helm-buffer-not-saved  :foreground ,Indigo :background ,bg)
    `(helm-buffer-process    :foreground ,Indigo :background ,bg)
    `(helm-buffer-saved-out  :foreground ,fg     :background ,bg)
    `(helm-buffer-size       :foreground ,fg     :background ,bg)
    `(helm-ff-directory      :foreground ,Violet :background ,bg :weight bold)

    `(helm-ff-dotted-directory :background ,bg :foreground ,fg-alt)

    `(helm-ff-file           :foreground ,fg     :background ,bg :weight normal)
    `(helm-ff-executable     :foreground ,key2   :background ,bg :weight normal)
    `(helm-ff-invalid-symlink :foreground ,key3  :background ,bg :weight bold)
    `(helm-ff-symlink    :foreground ,HarlequinGreen :background ,bg :weight bold)
    `(helm-ff-prefix     :foreground ,bg :background ,HarlequinGreen :weight normal)
    `(helm-grep-cmd-line :foreground ,fg :background ,bg)
    `(helm-grep-file     :foreground ,fg :background ,bg)
    `(helm-grep-finish   :foreground ,base0 :background ,bg)
    `(helm-grep-lineno   :foreground ,fg :background ,bg)
    `(helm-grep-match    :foreground nil :background nil :inherit helm-match)
    `(helm-grep-running  :foreground ,Violet :background ,bg)
    `(helm-moccur-buffer :foreground ,Violet :background ,bg)
    `(helm-source-go-package-godoc-description :foreground ,ArcticBlue)
    `(helm-bookmark-w3m :foreground ,Indigo)

    ;; MODE SUPPORT                        : company
    `(company-tooltip-annotation-selection :foreground ,bg :italic t)
    `(company-tooltip-annotation           :foreground ,ArcticBlue)
    ; Colors that fill the body the tooltip (main bg and fg)
    `(company-tooltip                      :foreground ,paleIndigo :background ,bg-alt)
    ; Color that match as you type
    `(company-tooltip-common               :foreground ,key2)
    ; Color for matching text in the completion selection
    `(company-tooltip-common-selection     :foreground ,bg :bold t)
    ; hl-line for company popup
    `(company-tooltip-selection :background ,lightIndigo :foreground ,bg)
    `(company-echo              :foreground ,bg          :background ,fg)
    `(company-scrollbar-fg      :background ,Magenta)
    `(company-scrollbar-bg      :background ,base4)
    `(company-echo-common       :foreground ,bg :background ,fg)
    `(company-preview           :background ,bg :foreground ,key2)
    `(company-preview-common    :foreground ,bg-alt :foreground ,base1)
    `(company-preview-search    :foreground ,Indigo :background ,bg)
    `(company-tooltip-mouse     :inherit highlight)
    `(company-template-field    :inherit region)

    `(web-mode-builtin-face  :inherit ,font-lock-builtin-face)
    `(web-mode-comment-face  :inherit ,font-lock-comment-face)
    `(web-mode-constant-face :inherit ,font-lock-constant-face)
    `(web-mode-keyword-face  :foreground ,HarlequinGreen)
    `(web-mode-doctype-face  :inherit ,font-lock-comment-face)
    `(web-mode-function-name-face :inherit ,font-lock-function-name-face)
    `(web-mode-string-face        :foreground ,ArcticBlue)
    `(web-mode-type-face          :inherit ,font-lock-type-face)
    `(web-mode-html-attr-name-face  :foreground ,Violet)
    `(web-mode-html-attr-value-face :foreground ,HarlequinGreen)
    `(web-mode-warning-face         :inherit ,font-lock-warning-face)
    `(web-mode-html-tag-face        :foreground ,Indigo)
    `(jde-java-font-lock-package-face :foreground ,Magenta)
    `(jde-java-font-lock-public-face  :foreground ,HarlequinGreen)
    `(jde-java-font-lock-private-face :foreground ,HarlequinGreen)
    `(jde-java-font-lock-constant-face :foreground ,IcebergBlue)
    `(jde-java-font-lock-modifier-face :foreground ,key3)
    `(jde-jave-font-lock-protected-face :foreground ,HarlequinGreen)
    `(jde-java-font-lock-number-face    :foreground ,Magenta)

    )
   )

  )

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'weyland-yutani)

;; Local Variables:
;; no-byte-compile: t
;; End:

;;; weyland-yutani-theme.el ends here

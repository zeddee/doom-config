;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!


;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets.
(setq user-full-name "zed tan"
      user-mail-address "zed@shootbird.work")

;; Doom exposes five (optional) variables for controlling fonts in Doom. Here
;; are the three important ones:
;;
;; + `doom-font'
;; + `doom-variable-pitch-font'
;; + `doom-big-font' -- used for `doom-big-font-mode'; use this for
;;   presentations or streaming.
;;
;; They all accept either a font-spec, font string ("Input Mono-12"), or xlfd
;; font string. You generally only need these two:
;; (setq doom-font (font-spec :family "monospace" :size 12 :weight 'semi-light)
;;       doom-variable-pitch-font (font-spec :family "sans" :size 13))

;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:
(setq doom-theme 'doom-sourcerer)

;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
(setq org-directory "~/working/standups/org")

;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
(setq display-line-numbers-type t)


;; Here are some additional functions/macros that could help you configure Doom:
;;
;; - `load!' for loading external *.el files relative to this one
;; - `use-package!' for configuring packages
;; - `after!' for running code after a package has loaded
;; - `add-load-path!' for adding directories to the `load-path', relative to
;;   this file. Emacs searches the `load-path' when you load packages with
;;   `require' or `use-package'.
;; - `map!' for binding new keys
;;
;; To get information about any of these functions/macros, move the cursor over
;; the highlighted symbol at press 'K' (non-evil users must press 'C-c c k').
;; This will open documentation for it, including demos of how they are used.
;;
;; You can also try 'gd' (or 'C-c c d') to jump to their definition and see how
;; they are implemented.

;; sets default tab indent to 2 spaces
(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)
(setq indent-line-function 'insert-tab)

;; sets hard wrap to 60 chars
(setq-default fill-column 60)

;; elfeed feed list
(setq elfeed-feeds '("https://www.kdnuggets.com/feed"
                     "https://www.aldaily.com/feed/"
                     "https://www.sciencedaily.com/rss/all.xml"
                     "https://www.bldgblog.com/feed/"
                     ("https://us2.campaign-archive.com/feed?u=0e91f8e7df61da4bff2bd9b1f&id=8c5d27370d", Boingboing rss feed)
                     "https://rust-gamedev.github.io/rss.xml"
                     "https://www.bleepingcomputer.com/feed/"
                     "https://www.wordfence.com/feed/"
                     "https://www.zdnet.com/topic/security/rss.xml"
                     "https://nvd.nist.gov/feeds/xml/cve/misc/nvd-rss-analyzed.xml"
                     "https://hackaday.com/blog/feed/"
                     "https://mozilla-spidermonkey.github.io/feed.xml"))

;; elfeed to display all entries by default, read or unread
(setq-default elfeed-search-filter "@2-months-ago")

;; configure pdf-tools
(use-package pdf-view
  :hook (pdf-tools-enabled . pdf-view-midnight-minor-mode)
  :hook (pdf-tools-enabled . hide-mode-line-mode)
  :config
  (setq pdf-view-midnight-colors '("#ABB2BF" . "#282C35")))

;; configure org-roam
(use-package org-roam
  :after org
  :ensure t
  :custom
  (setq org-roam-directory (file-truename "~/org-roam"))
  (setq find-file-visit-truename t) ;; tells emacs to resolve symlinks
  (org-roam-db-autosync-mode) ;; automatically sync org-roam cache
  (setq org-roam-node-display-template
      (concat "${title:*} "
              (propertize "${tags:10}" 'face 'org-tag)))
  :config
  (org-roam-setup)
  :bind (:map org-mode-map
         ("C-M-i" . completion-at-point))
)


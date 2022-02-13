(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#282c34" "#ff6c6b" "#98be65" "#ECBE7B" "#51afef" "#c678dd" "#46D9FF" "#bbc2cf"])
 '(custom-safe-themes
   '("9b54ba84f245a59af31f90bc78ed1240fca2f5a93f667ed54bbf6c6d71f664ac" "9687f29504a36c0b6b46cf654117f2f2ab3e73b909476ccb14cdde2bf990fa3e" "f646b802c8a8b977732c21e6d82ef70952af35a5a8d96670c30ae303ec8aa568" "2c49d6ac8c0bf19648c9d2eabec9b246d46cb94d83713eaae4f26b49a8183fc4" "0e2a7e1e632dd38a8e0227d2227cb8849f877dd878afb8219cb6bcdd02068a52" "6b80b5b0762a814c62ce858e9d72745a05dd5fc66f821a1c5023b4f2a76bc910" "6c3b5f4391572c4176908bb30eddc1718344b8eaff50e162e36f271f6de015ca" "f2927d7d87e8207fa9a0a003c0f222d45c948845de162c885bf6ad2a255babfd" "01cf34eca93938925143f402c2e6141f03abb341f27d1c2dba3d50af9357ce70" "4bca89c1004e24981c840d3a32755bf859a6910c65b829d9441814000cf6c3d0" default))
 '(elfeed-feeds
   '("https://www.oodaloop.com/feed/" "http://atom.cpanel.net/changelog/cpanel-changelog.atom" "https://portswigger.net/blog/rss" "https://portswigger.net/daily-swig/rss" "https://www.niemanlab.org/feed/" "https://googleprojectzero.blogspot.com/feeds/posts/default" "https://blog.google/threat-analysis-group/rss" "https://www.technologyreview.com/feed" "https://links.threatpost.com/c/2GO/EvB/yqP2ndZuED8V2cUAm1YT33/i/6Bl/F/5b9a4bc8" "https://smashingmagazine.com/feed" "https://www.kdnuggets.com/feed" "https://www.aldaily.com/feed/" "https://www.sciencedaily.com/rss/all.xml" "https://www.bldgblog.com/feed/" "https://us2.campaign-archive.com/feed?u=0e91f8e7df61da4bff2bd9b1f&id=8c5d27370d" "https://rust-gamedev.github.io/rss.xml" "https://www.bleepingcomputer.com/feed/" "https://www.wordfence.com/feed/" "https://www.zdnet.com/topic/security/rss.xml" "https://nvd.nist.gov/feeds/xml/cve/misc/nvd-rss-analyzed.xml" "https://hackaday.com/blog/feed/" "https://mozilla-spidermonkey.github.io/feed.xml"))
 '(exwm-floating-border-color "#191b20")
 '(fci-rule-color "#5B6268")
 '(global-whitespace-mode t)
 '(highlight-tail-colors
   ((("#333a38" "#99bb66" "green")
     . 0)
    (("#2b3d48" "#46D9FF" "brightcyan")
     . 20)))
 '(jdee-db-active-breakpoint-face-colors (cons "#1B2229" "#51afef"))
 '(jdee-db-requested-breakpoint-face-colors (cons "#1B2229" "#98be65"))
 '(jdee-db-spec-breakpoint-face-colors (cons "#1B2229" "#3f444a"))
 '(objed-cursor-color "#ff6c6b")
 '(org-agenda-files
   '("~/working/eiq/eiq-standups/org/jul2021.org" "/Users/zeddee/working/standups-2021/org/2021.org" "/Users/zeddee/working/standups-2021/org/for-hendric.org" "/Users/zeddee/working/standups-2021/org/mar2021-reading-list.org" "/Users/zeddee/working/standups-2021/org/portswigger-notes.org" "/Users/zeddee/working/standups-2021/org/postgres-notes.org" "/Users/zeddee/working/standups-2021/org/reading-list-jul2021.org" "/Users/zeddee/working/standups-2021/org/tti-worklog-2021.org" "/Users/zeddee/org-roam/daily"))
 '(package-selected-packages
   '(org-roam rustic jinja2-mode python-environment pdf-tools image+ vterm rust-mode auto-complete-rst adoc-mode))
 '(pdf-view-midnight-colors (cons "#bbc2cf" "#282c34"))
 '(rustic-ansi-faces
   ["#282c34" "#ff6c6b" "#98be65" "#ECBE7B" "#51afef" "#c678dd" "#46D9FF" "#bbc2cf"])
 '(vc-annotate-background "#282c34")
 '(vc-annotate-color-map
   (list
    (cons 20 "#98be65")
    (cons 40 "#b4be6c")
    (cons 60 "#d0be73")
    (cons 80 "#ECBE7B")
    (cons 100 "#e6ab6a")
    (cons 120 "#e09859")
    (cons 140 "#da8548")
    (cons 160 "#d38079")
    (cons 180 "#cc7cab")
    (cons 200 "#c678dd")
    (cons 220 "#d974b7")
    (cons 240 "#ec7091")
    (cons 260 "#ff6c6b")
    (cons 280 "#cf6162")
    (cons 300 "#9f585a")
    (cons 320 "#6f4e52")
    (cons 340 "#5B6268")
    (cons 360 "#5B6268")))
 '(vc-annotate-very-old-color nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )


(defun org-insert-source-block (language)
  "Asks language.
Inserts org-mode source code snippet"
  (interactive "slanguage?")
  (insert
   (format "
#+BEGIN_SRC %s :exports both

#+END_SRC" language
)
)
  (forward-line -1)
  (goto-char (line-end-position))
  )


(defun org-insert-example-block (language)
  "Asks language.
Inserts org-mode example snippet"
  (interactive "slanguage?")
  (insert
   (format "
#+BEGIN_EXAMPLE %s

#+END_EXAMPLE" language
)
)
  (forward-line -1)
  (goto-char (line-end-position))
  )

(defun org-insert-graphviz-diagram (output_filename)
  "Insert a graphviz snippet"
  (interactive "soutput_filename")
  (insert
    (format "
#+BEGIN_SRC dot :file _%s.png :cmdline -Kdot -Tpng
digraph G {
  my_start -> one_branch;
  my_start -> another_branch;
}
#+END_SRC" output_filename
))
  (forward-line -1)
  (goto-char (line-end-position))
  )


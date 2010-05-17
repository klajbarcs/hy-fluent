(define hy-panel
  (let ((panel #f)(hy-value))
    (define (update-cb)
        ()
    )
    (define (hello-cb)
      (display  "")
      (newline)
    )
    (lambda ()
      (if (not panel)
        (let ((table) (tframe) (ttab1) (ttab2))
          ;
          (set! panel (cx-create-panel "Hello Panel" 'update-callback update-cb 'apply-callback hello-cb))
          ;
          (set! tframe (cx-create-frame-tabbed panel "Tabs" 'border #t 'below 0 'right-of 0))
          (set! ttab1 (cx-create-tab tframe "tab1"))
          (set! ttab2 (cx-create-tab tframe "tab2"))
          ;
          (cx-add-check-buttons ttab1 "ccc" (list "jeee" 1 "jecc" 2 "jvvecc" 3) (list (cons "www" 22) (cons "jvvecc" 3)))
          ;
          (cx-add-radio-buttons ttab2 "ccc" (list "jeee" 1 "jecc" 2 "jvvecc" 3) (list (cons "www" 22) (cons "jvvecc" 3)))
          ;
          (cx-create-button panel "hide" 'panel-button #t 'activate-callback 
            (lambda () 
              () 
            )
          )
          (cx-create-button panel "show" 'panel-button #t 'activate-callback
            (lambda ()
              () 
            )
          )
          ;
        )
      )
      (cx-show-panel panel) 
    )
  )
)

(cx-add-menu "HyLab" #\H)
(cx-add-item "HyLab" "hello" #\H #f cx-client? hy-panel)


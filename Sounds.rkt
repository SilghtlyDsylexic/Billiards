;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname Sounds) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp")))))
(require racket/base)
(require 2htdp/image
         (only-in racket/gui/base play-sound))

(provide play-stick-hit)
(provide play-ball-collide)
(provide play-ball-pocket)
(provide play-p1-win)
(provide play-p2-win)
(provide play-ball-collide-soft)

;;Sound provided from Sounddogs.com (see metadata for details)
(define (play-stick-hit)
  (play-sound "sounds/cue-hit.wav" #true))

;;Sound provided from Sounddogs.com (see metadata for details)
(define (play-ball-collide)
  (play-sound "sounds/ball-hit.wav" #true))

;;Sound provided from Sounddogs.com (see metadata for details)
(define (play-ball-collide-soft)
  (play-sound "sounds/ball-hit-soft.wav" #true))

;;Sound provided from Sounddogs.com (see metadata for details)
(define (play-ball-pocket)
  (play-sound "sounds/ball-pocketed.wav" #true))

(define (play-p1-win)
  (play-sound "sounds/p1-win.wav" #true))

(define (play-p2-win)
  (play-sound "sounds/p2-win.wav" #true))
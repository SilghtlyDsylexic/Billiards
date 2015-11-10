;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname Billiards) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp")))))
;; Project 2
;; Mark Redman
;; Abigail Sawyer

;; -------------------------------------------------------------
;; VECTORS (Used for positions, velocities and accelerations)

(define-struct Vector (xVal yVal))
;; A Vector is a structure which represents a 2 dimensional
;; spatial translation; it has the following fields:
;; -- xVal (Number)
;; -- yVal (Number)

;; CONSTRUCTOR
;;  make-Vector : Number Number --> Vector
;; SELECTORS
;;  Vector-xVal : Vector --> Number
;;  Vector-yVal : Vector --> Number
;; PREDICATE
;;  Vector? : Any --> Boolean

;; TEMPLATE
#;
(define (vector-fun v)
  (... (Vector-xVal v)
   ... (Vector-yVal v)))

;; EXAMPLE
(define STANDARD_VECTOR (make-Vector 5 5))
;; RELATED CONSTANTS
(define ZERO_VECTOR (make-Vector 0 0))
(define UNIT_X (make-Vector 1 0))
(define UNIT_Y (make-Vector 0 1))

;; VECTOR FUNCTIONS

;; vector-add serves many purposes, including changing positions
;;  and velocities. For example, add a velocity vector to a
;;  position vector in order to get a new position vector.

;; vector-add : Vector Vector --> Vector
;; Consumes : Vector v1
;;            Vector v2
;; Produces : a Vector with a x value equal to the x-sum of v1 and v2 and a y value equal to the y-sum
;;            of v1 and v2.

(check-expect (vector-add UNIT_X UNIT_Y) (make-Vector 1 1))

(define (vector-add v1 v2)
  (make-Vector (+ (Vector-xVal v1) (Vector-xVal v2))
               (+ (Vector-yVal v1) (Vector-yVal v2))))

;; vector-mult-scalar : Vector Number --> Vector
;; Consumes : Vector v
;;            Number mult
;; Produces : a Vector with x and y equal to mult times the x and y values of v respecitively.

(check-expect (vector-mult-scalar UNIT_X 2)(make-Vector 2 0))

(define (vector-mult-scalar v mult)
  (make-Vector (* (Vector-xVal v) mult)
               (* (Vector-yVal v) mult)))

;; bounce? : Vector Number Vector --> Boolean
;; Consumes : Vector pos, Number width, Vector vel
;; Produces : a Boolean that is true in the event that a object with a pos, width, and vel will
;;            be out of the bounds of the background on the next tick. Specifically used to signal
;;            that the object should switch direction.
#;(define (bounce? pos width vel)
  (cond [...]))
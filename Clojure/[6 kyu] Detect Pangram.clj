(ns Pangram
  (:require [clojure.string :refer [lower-case replace]]))

(defn pangram? [s]
  (->>
    (replace (lower-case s) #"\W" "")
    (frequencies)
    (count)
    (== 26)))
(ns katas.counting-duplicates)

(defn duplicate-count [text]
  (->>
    (clojure.string/lower-case text)
    (frequencies)
    (filter #(> (second %) 1))
    (count)))
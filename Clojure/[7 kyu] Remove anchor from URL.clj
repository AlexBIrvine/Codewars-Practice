(ns kata)

(defn remove-url-anchor [url]
  (clojure.string/replace url #"[#].*" ""))
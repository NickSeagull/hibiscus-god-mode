;; Wox layer
class g {
  static doc := { n: "Search duckduckgo"
                , p: "Default wox search"
                , q: "Expand with espanso"
                , y: "Search with youtube" }

  n() {
    hs.wox.search("duckduckgo ")
  }

  p() {
    hs.wox.search("")
  }

  q() {
    hs.wox.search("espanso ")
  }

  y() {
    hs.wox.search("youtube ")
  }
}
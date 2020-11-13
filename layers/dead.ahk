;;
;; Dead layer - Enabled with Space
;;
;; Used for inserting symbols and numbers
;;
class space {

  static doc := { q: "%"
                , w: "&"
                , e: "?"
                , r: "+"
                , t: "@"
                , y: "$"
                , u: "_"
                , i: "["
                , o: "]"
                , p: "!"
                , a: "/"
                , s: "("
                , d: "="
                , f: "0"
                , g: "{"
                , h: "}"
                , j: "1"
                , k: "*"
                , l: ")"
                , semicolon: "-"
                , quote: "#"
                , z: "6"
                , x: "7"
                , c: "8"
                , v: "9"
                , b: "|"
                , n: "\"
                , m: "2"
                , comma: "3"
                , period: "4"
                , slash: "5"
                , rightshift: "^" }

  q(){
    send {`%}
  }
  w(){
    send &
  }
  e(){
    send ?
  }
  r(){
    send {`+}
  }
  t(){
    send @
  }
  y(){
    send $
  }
  u(){
    send _
  }
  i(){
    send [
  }
  o(){
    send ]
  }
  p(){
    send {`!}
  }
  a(){
    send /
  }
  s(){
    send (
  }
  d(){
    send {=}
  }
  f(){
    send 0
  }
  g(){
    send {{}
  }
  h(){
    send {}}
  }
  j(){
    send 1
  }
  k(){
    send *
  }
  l(){
    send )
  }
  semicolon(){
    send -
  }
  quote(){
    send #
  }
  z(){
    send 6
  }
  x(){
    send 7
  }
  c(){
    send 8
  }
  v(){
    send 9
  }
  b(){
    send |
  }
  n(){
    send \
  }
  m(){
    send 2
  }
  comma(){
    send 3
  }
  period(){
    send 4
  }
  slash(){
    send 5
  }
  rightshift(){
    send {`^}
  }
}
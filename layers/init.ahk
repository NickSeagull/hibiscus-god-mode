class Layers {
  #include layers/dead.ahk
  #include layers/test.ahk
  #include layers/window-management.ahk
  #include layers/wox.ahk

  class a {
    static doc := { hold: "Shift" }
    hold(isDown){
      hs.hold("Shift", isDown)
    }
  }

  class d {
    static doc := { hold: "Alt" }
    hold(isDown){
      hs.hold("Alt", isDown)
    }
  }

  class f {
    static doc := { hold: "Ctrl" }
    hold(isDown){
      hs.hold("Ctrl", isDown)
    }
  }


  class j {
    static doc := { hold: "Ctrl" }
    hold(isDown){
      hs.hold("Ctrl", isDown)
    }
  }

  class k {
    static doc := { hold: "Alt"  }
    hold(isDown){
      hs.hold("Alt", isDown)
    }
  }

  class l {
    static doc := { hold: "Win" }
    hold(isDown){
      hs.hold("RWin", isDown)
    }
  }

  class s {
    static doc := { hold: "Win" }
    hold(isDown){
      hs.hold("LWin", isDown)
    }
  }

  class semicolon {
    static doc := { hold: "Shift" }
    hold(isDown){
      hs.hold("Shift", isDown)
    }
  }

  ;; Lower accents
  class p {
    a() {
      hs.rawPress("á")
    }

    e() {
      hs.rawPress("é")
    }

    i() {
      hs.rawPress("í")
    }

    n(){
      hs.rawPress("ñ")
    }

    o() {
      hs.rawPress("ó")
    }

    s(){
      hs.rawPress("^+!s")
    }

    u(){
      hs.rawPress("ú")
    }
  }

  ;; upper accents
  class q {
    a(){
      hs.rawPress("Á")
    }

    e() {
      hs.rawPress("É")
    }

    i() {
      hs.rawPress("Í")
    }

    n() {
      hs.rawPress("Ñ")
    }

    o() {
      hs.rawPress("Ó")
    }

    u() {
      hs.rawPress("Ú")
    }
  }


  ;; Clipboard hacks
  class t {
    static doc := {}
  }

  class v {
    static doc := { h: "Previous song"
                  , j: "Mute"
                  , k: "Play/Pause"
                  , l: "Next song"
                  , m: "Volume up"
                  , n: "Volume down"
                  , s: "Activate Spotify" }
    h() {
      hs.rawPress("{Media_Prev}")
    }

    j() {
      hs.rawPress("{Volume_Mute}")
    }

    k() {
      hs.rawPress("{Media_Play_Pause}")
    }

    l() {
      hs.rawPress("{Media_Next}")
    }

    m() {
      hs.rawPress("{Volume_Up}")
    }

    n() {
      hs.rawPress("{Volume_Down}")
    }

    s() {
      macro.open.spotify()
    }
  }

  class w {
    static doc := { e: "Activate Edge"
                  , g: "Activate Tower"
                  , n: "Activate Notion"
                  , t: "Activate Terminal"
                  , v: "Activate VSCode"
                  , u: "Activate Sublime Text 3"
                  , l: "Activate Slack" }

    e() {
      macro.open.edge()
    }

    g() {
      macro.open.tower()
    }

    n() {
      macro.open.notion()
    }

    t() {
      macro.open.terminal()
    }

    v() {
      macro.open.vscode()
    }

    u() {
      macro.open.sublime()
    }

    l(){
      macro.open.slack()
    }
  }

  class x {
    e() {
      hs.rawPress("^{Right}")
    }

    h() {
      hs.press("{Left}")
    }

    j() {
      hs.press("{Down}")
    }

    k() {
      hs.press("{Up}")
    }

    l() {
      hs.press("{Right}")
    }

    m() {
      hs.rawPress("{Delete}")
    }

    n() {
      hs.rawPress("{BackSpace}")
    }

    p() {
      hs.rawPress("{Tab}")
    }

    w() {
      hs.rawPress("^{Left}")
    }

    semicolon() {
      hs.rawPress("{Enter}")
    }

    comma() {
      hs.rawPress("^{BackSpace}")
    }

    period() {
      hs.rawPress("^{Delete}")
    }

    four() {
      hs.rawPress("{End}")
    }

    zero() {
      hs.rawPress("{Home}")
    }

  }

  class n {
    a(){
      if (hs.application.isFrontmost("Notion.exe")) {
        macro.notion.goToActionZone()
      } else if (hs.application.isFrontmost("Slack.exe")) {
        macro.slack.sendCallRequest()
      }
    }

    m(){
      if(hs.application.isFrontmost("Zoom.exe")){
        macro.zoom.mute()
      } else if(hs.application.isFrontmost("Slack.exe")){
        macro.slack.mute()
      } else if(hs.application.isFrontmost("Notion.exe")){
        macro.notion.createPageLink()
      }
    }

    z(){
      if (hs.application.isFrontmost("Notion.exe")) {
        macro.notion.back()
      }
    }

    x(){
      if (hs.application.isFrontmost("Notion.exe")) {
        macro.notion.forward()
      }
    }
  }

  class z {
    static doc := { t: "Activate Telegram" }
    t() {
      macro.open.unigram()
    }
  }

  ;; FIXME: Make this a hyper key
  class esc {
    static doc := { hold: "Hyper" }
    hold(isDown){
      hs.hold("LWin", isDown)
      hs.hold("LCtrl", isDown)
      hs.hold("LAlt", isDown)
      hs.hold("Shift", isDown)
    }
  }
}

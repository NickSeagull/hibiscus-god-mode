class y {
  a() {
    caller := Exception("a", -1).what
    MsgBox, called at %caller%
  }

  e(){
  	Run, espanso restart
  }
}

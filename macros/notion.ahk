class notion {

  goToActionZone(){
    hs.rawPress("^p")
    Sleep, 1000
    Send, Action Zone
    hs.rawPress("{Enter}")
  }

  back(){
  	hs.rawPress("^[")
  }

  forward(){
  	hs.rawPress("^[")
  }

  createPageLink(){
    hs.rawPress("^c")
    Sleep, 1000
    hs.rawPress("^n")
    Sleep, 1000
    hs.rawPress("^v")
    Sleep, 1000
    hs.rawPress("^{Enter}")
    Sleep, 1000
    hs.rawPress("^l")
    Sleep, 1000
    hs.rawPress("^[")
    Sleep, 1000
    hs.rawPress("^[")
  }

}

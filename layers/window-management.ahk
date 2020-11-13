;;
;; Window management
;;
class b {
  static doc := { d: "Toggle dark mode"
                , h: "Resize window to left half"
                , l: "Resize window to right half"
                , m: "Maximize window"
                , o: "Send window to left screen"
                , p: "Send window to right screen" }
  d(){
    darkModeEnabled := "0"
    tmpPath := ""
    Run, powershell -command "(Get-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize -Name SystemUsesLightTheme).SystemUsesLightTheme > $env:TMP\darkmode.txt", , Hide
    EnvGet, tmpPath, TMP
    FileReadLine, darkModeEnabled, %tmpPath%\darkmode.txt, 1
    if (darkModeEnabled == "0") {
      darkModeEnabled := "1"
    } else {
      darkModeEnabled := "0"
    }
    command := "New-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize -Name SystemUsesLightTheme -Value " . darkModeEnabled . " -Type Dword -Force; New-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize -Name AppsUseLightTheme -Value " . darkModeEnabled . " -Type Dword -Force"
    Run, powershell -command "%command%", , Hide
  }

  h(){
    hs.rawPress("#{Left}")
  }

  l() {
    hs.rawPress("#{Right}")
  }

  m() {
    hs.rawPress("#{Up}")
  }

  o() {
    hs.rawPress("#+{Left}")
  }

  p() {
    hs.rawPress("#+{Right}")
  }
}
class open {

  edge() {
    hs.application.open("C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe")
  }

  notion() {
    hs.application.open("C:\Users\nikit\AppData\Local\Programs\Notion\Notion.exe")
  }

  slack(){
    hs.application.open("C:\Program Files\Slack\Slack.exe")
  }

  spotify() {
    hs.application.open("C:\Users\" . A_UserName . "\AppData\Roaming\Spotify\Spotify.exe")
  }

  sublime() {
    hs.application.open("C:\Program Files\Sublime Text 3\sublime_text.exe")
  }

  terminal(){
    hs.application.open("C:\Program Files\WindowsApps\Microsoft.WindowsTerminal_1.0.1401.0_x64__8wekyb3d8bbwe\WindowsTerminal.exe")
  }

  tower(){
    hs.application.open("C:\Program Files (x86)\fournova\Tower\Tower.exe")
  }

  unigram(){
    hs.application.open("C:\Program Files\WindowsApps\38833FF26BA1D.UnigramPreview_3.15.4756.0_x64__g9c9v27vpyspw\Unigram.exe")
  }

  vscode(){
    hs.application.open("C:\Program Files\Microsoft VS Code\Code.exe", "Visual Studio Code")
  }

}

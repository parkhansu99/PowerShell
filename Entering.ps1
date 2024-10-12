# [System.Windows.Forms.SendKeys] 클래스를 사용하기 위해 어셈블리를 추가합니다.
Add-Type -AssemblyName System.Windows.Forms  # SendKeys 사용을 위한 어셈블리 추가


# 무한 루프를 시작합니다.
while ($true) {
    # Enter 키를 누릅니다.
    [System.Windows.Forms.SendKeys]::SendWait("{ENTER}")  # Enter 키 누름

    # 10초 동안 대기합니다.
    Start-Sleep -Seconds 10
}

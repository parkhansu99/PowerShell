Add-Type -AssemblyName System.Windows.Forms  # 어셈블리 추가

# 새로운 폼 생성
$form = New-Object System.Windows.Forms.Form
$form.Text = "간단한 Windows Forms 예시"  # 폼 제목 설정

# 버튼 생성
$button = New-Object System.Windows.Forms.Button
$button.Text = "클릭하세요"
$button.Location = New-Object System.Drawing.Point(50, 50)  # 위치 설정
$button.Add_Click({
    [System.Windows.Forms.MessageBox]::Show("버튼이 클릭되었습니다!")  # 메시지 박스 표시
})

# 폼에 버튼 추가
$form.Controls.Add($button)

# 폼 표시
$form.ShowDialog()  # 모달 대화 상자로 표시

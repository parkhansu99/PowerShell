﻿# 관리자 권한으로 실행하기
Set-ExecutionPolicy RemoteSigned -Scope CurrentUser

# Selenium 모듈 불러오기
Import-Module Selenium

# ChromeDriver 경로 설정
$chromeDriverPath = "C:\tools\chromedriver"

# ChromeDriver 실행
$chromeOptions = New-Object OpenQA.Selenium.Chrome.ChromeOptions

# ChromeDriverService 생성 (경로를 직접 사용)
$chromeDriverService = [OpenQA.Selenium.Chrome.ChromeDriverService]::CreateDefaultService($chromeDriverPath)

# ChromeDriver 객체 생성
$chromeDriver = New-Object OpenQA.Selenium.Chrome.ChromeDriver($chromeDriverService, $chromeOptions)

# 구글 웹사이트 열기
$chromeDriver.Navigate().GoToUrl("https://www.google.com")

# 구글 검색창에 텍스트 입력
$searchBox = $chromeDriver.FindElementByName("q")
$searchBox.SendKeys("PowerShell Web Automation")

# 검색 버튼 클릭
Start-Sleep -Seconds 1 # 검색 버튼이 로드될 때까지 대기
$searchButton = $chromeDriver.FindElementByName("btnK")
$searchButton.Click() # Submit 대신 Click으로 수정

# 5초 대기
Start-Sleep -Seconds 5

# 브라우저 종료
$chromeDriver.Quit()

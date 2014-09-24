Name "RobotSexNickels 0.0.3"
OutFile "RobotSexNickels.exe"
InstallDir "$PROGRAMFILES\RobotSexNickels"
RequestExecutionLevel admin
Icon "src\qt\res\icons\bitcoin.ico"

!include "MUI.nsh"

!define MUI_ICON "src\qt\res\icons\bitcoin.ico"
!define MUI_UNICON "src\qt\res\icons\bitcoin.ico"
!define MUI_WELCOMEFINISHPAGE_BITMAP "share\pixmaps\nsis-wizard.bmp"
!define MUI_UNWELCOMEFINISHPAGE_BITMAP "share\pixmaps\nsis-wizard.bmp"
!define MUI_FINISHPAGE_TEXT "Thank you for installing RobotSexNickels."

!insertmacro MUI_PAGE_WELCOME
;!insertmacro MUI_PAGE_COMPONENTS
!insertmacro MUI_PAGE_DIRECTORY
!insertmacro MUI_PAGE_INSTFILES
!insertmacro MUI_PAGE_FINISH
!insertmacro MUI_UNPAGE_WELCOME
!insertmacro MUI_UNPAGE_CONFIRM
!insertmacro MUI_UNPAGE_INSTFILES
!insertmacro MUI_UNPAGE_FINISH
!insertmacro MUI_LANGUAGE "English"

Section
    SetOutPath $INSTDIR
    WriteUninstaller "$INSTDIR\uninstall.exe"
    CreateShortCut "$SMPROGRAMS\RobotSexNickels.lnk" "$INSTDIR\RobotSexNickels.exe"
    File "/oname=RobotSexNickels.exe" "release\robotsexnickels-qt.exe"
SectionEnd

Section "uninstall"
    Delete "$INSTDIR\RobotSexNickels.exe"
    Delete "$INSTDIR\uninstall.exe"
    Delete "$SMPROGRAMS\RobotSexNickels.lnk"
SectionEnd

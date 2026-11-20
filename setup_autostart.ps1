<#
.SYNOPSIS
Configure Medical Platform auto-start on Windows using Registry
#>

param(
    [Parameter(Mandatory=$false)]
    [string]$Action = "install"
)

$regPath = "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Run"
$regName = "MedicalPlatformAutoStart"
$scriptPath = (Get-Item -Path ".\start_services.bat").FullName
$logPath = "d:\医疗平台\logs\autostart.log"

New-Item -ItemType Directory -Path "d:\医疗平台\logs" -Force | Out-Null

function Write-Log {
    param([string]$Message)
    $timestamp = Get-Date -Format "yyyy-MM-dd HH:mm:ss"
    $logEntry = "[$timestamp] $Message"
    Add-Content -Path $logPath -Value $logEntry -Encoding UTF8
    Write-Host $logEntry
}

Write-Log "=========================================="
Write-Log "Medical Platform Auto-Start Configuration"
Write-Log "=========================================="

switch ($Action) {
    "install" {
        Write-Log "Installing auto-start via Registry..."
        Write-Log "Startup script: $scriptPath"
        
        if (-not (Test-Path $scriptPath)) {
            Write-Log "ERROR: Startup script not found"
            exit 1
        }
        
        try {
            $value = "cmd.exe /c `"$scriptPath`""
            Set-ItemProperty -Path $regPath -Name $regName -Value $value -Type String
            Write-Log "SUCCESS: Auto-start configured successfully"
            Write-Log "Registry key: $regPath\$regName"
        } catch {
            Write-Log "ERROR: Failed to configure auto-start: $_"
            Write-Log "Hint: Please run PowerShell as Administrator"
            exit 1
        }
        break
    }
    
    "uninstall" {
        Write-Log "Uninstalling auto-start..."
        
        try {
            if (Get-ItemProperty -Path $regPath -Name $regName -ErrorAction SilentlyContinue) {
                Remove-ItemProperty -Path $regPath -Name $regName
                Write-Log "SUCCESS: Auto-start removed"
            } else {
                Write-Log "WARNING: Auto-start not configured"
            }
        } catch {
            Write-Log "ERROR: Failed to remove auto-start: $_"
            exit 1
        }
        break
    }
    
    "status" {
        Write-Log "Checking auto-start status..."
        
        try {
            $value = Get-ItemProperty -Path $regPath -Name $regName -ErrorAction SilentlyContinue
            if ($value) {
                Write-Log "Status: Configured"
                Write-Log "Registry key: $regPath\$regName"
                Write-Log "Value: $($value.$regName)"
            } else {
                Write-Log "Status: Not configured"
            }
        } catch {
            Write-Log "ERROR: Failed to check status: $_"
            exit 1
        }
        break
    }
    
    default {
        Write-Log "ERROR: Invalid action: $Action"
        Write-Log "Valid actions: install, uninstall, status"
        exit 1
    }
}

Write-Log "=========================================="
Write-Log "Operation completed"
Write-Log "=========================================="
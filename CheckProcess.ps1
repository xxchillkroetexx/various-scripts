# TITLE Check If Process Is Running
#
# Dieses Skript überprüft, ob ein bestimmter Prozess auf dem lokalen Rechner gestartet ist
# Wird der Prozess zum Zeitpunkt der Überprüfung nicht ausgeführt, wird er gestartet

# Prozess und auszuführendes Programm festlegen
# ProcessName = Name des Prozesses im Windows Task Manager
# Program = Aufruf des Programmes in der Windows Eingabeaufforderung / ggfs. Pfad mit angeben


$ProcessName = "poll32"
$Program = "poll32.exe"

# Prüfen ob ein Programm ausgeführt wird
# Wenn nicht, Starte das die in $Program gespeicherte Anwendung

$CheckProcess = Get-Process | Where-Object {$_.ProcessName -eq $ProcessName}
If($CheckProcess -eq $null){
	#start $Program
	echo "nothing running"
}
else {
	echo "Process wird aktuell ausgeführt"
}

pause

# for checking in Task Scheduler use the following line as programm:
# powershell.exe -NoProfile -NoLogo -NonInteractive -ExecutionPolicy Bypass -File \\path\to\script.ps1

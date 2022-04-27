# Suchtext definieren
suchtext = "CheckLicense"

# File öffnen
file = open("XCC telephony.txt")
xphone = file.readlines()
file.close()

def removeLastN(string, n):  # Letzen N Zeichen aus string entfernen
    size = len(string)
    string = string[:size - n]
    return string


# Alle Zeilen durchgehen
for line in xphone:
    
    # Wenn Suchtext in Zeile vorhanden
    if suchtext in line:
        # Text mit Kommas trennen -> Array wird erstellt
        ausgabe = line.split(",")
        # Den Rest hinter dem wichtigen teil löschen
        ausgabe[3] = removeLastN(ausgabe[3], 24)

        # User mit Rechnername in Datei speichern
        savefile = open("XPhoneLines.txt", "a")
        savefile.write(ausgabe[2] + "," + ausgabe[3] + "\n")
        savefile.close()

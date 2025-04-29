codeoceanR::rt_score()

# A1 ----
# Lese beide Birnen Dateien ein und füge sie untereinander zusammen.
birnen1 <- read.table("R34d_Birnen1.txt", header = TRUE)
birnen2 <- read.table("R34d_Birnen2.txt", header = TRUE)

# Zusammenfügen untereinander
birnen <- rbind(birnen1, birnen2)


# A2 ----
# Lies die Alter Datei ein und verknüpfe beide Datensäze. 
# Nur vollständige Einträge (complete records) werden benötigt.
# Setze die Argumente für die DataFrames so, dass die Reihenfolge Alter, birnen ist (nicht umgekehrt).
# Annahme: Die Datei heißt "R33d2_alter.txt"
alter <- read.table("R34d_Alter.txt", header = TRUE, sep = "\t")

# Inner Join - nur vollständige Einträge mit match in beiden Tabellen
# Beachte: Spaltennamen sind unterschiedlich (Name vs Person)
birnenAlter <- merge(alter, birnen, 
                    by.x = "Name", by.y = "Person",
                    all = FALSE)  # all=FALSE ist der Default (Inner Join)


# A3 ----
# Verknüpfe erneut die Altersdaten mit den Birnendaten.
# Behalte diesmal alle Einträge aus Alter.
# Birnenbesitzer mit unbekanntem Alter werden nicht benötigt.
# Left Join (behalte alle Einträge aus Alter)
birnenAlterKomplett <- merge(alter, birnen,
                           by.x = "Name", by.y = "Person",
                           all.x = TRUE)  # behält alle aus alter

# A4 ----
# Zum visuellen Verständnis von merge ist folgende Webseite hilfreich:
if(FALSE) # die nächste Zeile nicht ausführen, wenn das Skript ausgeführt wird:
browseURL("https://www.datasciencemadesimple.com/join-in-r-merge-in-r/")
# Welchem Verknüpfen entspricht merge mit all=TRUE?
# 1. self join
# 2. inner join
# 3. outer join
# 4. cross join
join <- 3



# Wenn du fertig bist, übermittle bitte deinen Punktestand an openHPI mit:
# codeoceanR::rt_submit()

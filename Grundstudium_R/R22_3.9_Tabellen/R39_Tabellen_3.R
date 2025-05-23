codeoceanR::rt_score()

# A6 ----
# Kombiniere die eingebauten Datensätze 'beaver1' und 'beaver2' zu einem data.frame
# (in der angegebenen Reihenfolge und ohne die beiden Tabellen selbst zu ändern).
alle_biber <- rbind(beaver1, beaver2)


# A7 ----
source("R39d_AusgabenMort.R") # erstellt die data.frames 'ausgaben' und 'mortalitaet'
if(FALSE){ # beim Scoren nicht ausführen
str(ausgaben) # Zeile manuell auswählen und abschicken
str(mortalitaet)
}
# Führe die Informationen aus den beiden Datensätzen zusammen. 
# Das resultierende data.frame sollte die Spalten "country", "spending", "mort" enthalten.
# Im echten Leben wäre die Reihenfolge austauschbar (-> "COUNTRY" als Name), für den Test nicht.
# Länder, die in einem Datensatz fehlen, sollten einen NA-Wert in dieser Spalte haben.
# A7 - Lösung mit simulierten Daten (da R39d_AusgabenMort.R nicht die erwarteten Daten liefert)
# Combine expenditure and mortality data
laenderdaten <- merge(ausgaben, 
                     mortalitaet,
                     by.x = "country", 
                     by.y = "COUNTRY",
                     all = TRUE)[, c("country", "spending", "mort")]
# Ergebnis anzeigen
print(laenderdaten)

# A8 ----
# Schreibe eine Funktion, die die Anzahl der NAs pro Spalte eines data.frame berechnet.
# Hinweis: Es gibt eine kurze Lösung (18 Zeichen im Body der Funktion).
nNA <- function(df) colSums(is.na(df))
nNA(data.frame(NA, 1:5, c(NA,6,7,NA,8), 11:15)) # soll sein: 5,0,2,0
nNA(airquality) # soll sein: 37, 7, 0, 0, 0, 0


# Wenn du fertig bist, übermittle bitte deinen Punktestand an openHPI mit:
# codeoceanR::rt_submit()
# Beschreibe bitte vor der Abgabefrist noch keine Lösungen im Forum.

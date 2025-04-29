codeoceanR::rt_score()
codeoceanR::rt_plot1()

# B1 ----
# Lese die Schulnoten aus der Datei "R43d_Noten.txt" ein. 
# Prop Tipp: Die passende read.*-Funktion braucht kein sep-Argument.
# Setze das fileEncoding="UTF-8", damit Umlaute korrekt eingelesen werden.
noten <- read.table("R43d_Noten.txt", header = TRUE, fileEncoding = "UTF-8")


# B2 ----
# Erstelle eine Häufigkeitstabelle (Kreuztabelle)
# mit Noten als Spalten und Geschlecht als Zeilen. (Siehe 2.4 Kategorien)
# Ordne die Zeilen für das Geschlecht in der Reihenfolge weiblich/männlich/divers.
# Tipp: Wähle die 'table()'-Zeilen in umgekehrter Reihenfolge aus.
noten_tabelle <- table(noten$Geschlecht, noten$Note)[c("weiblich", "männlich"), ]


# B3 ----
# Erstelle ein gestapeltes Säulendiagramm mit einer Legende und den Farben
farben <- c("lightcoral","lightblue3","navajowhite2")
# 'Weiblich' ist die oberste Zeile und wird von barplot als erstes (unten) geplottet.
# tb3_start
barplot(noten_tabelle, 
        col = c("lightcoral", "lightblue3", "navajowhite2"),
        legend = rownames(noten_tabelle),
        args.legend = list(x = "topright", title = "Geschlecht"))
# tb3_ende


# B4 ----
# Erstelle ein Säulendiagramm mit denselben Werten, 
# aber mit nebeneinander stehenden, nicht gestapelten Balken.
# tb4_start
balken_mitten <- barplot(noten_tabelle, 
                         beside = TRUE,
                         col = c("lightcoral", "lightblue3", "navajowhite2"),
                         legend.text = rownames(noten_tabelle))
# tb4_ende


codeoceanR::rt_plot2() 

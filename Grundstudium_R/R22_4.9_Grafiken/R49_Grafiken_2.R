codeoceanR::rt_score()
codeoceanR::rt_plot1()

# A6 ----
# Erstelle einen Boxplot der Anzahl der Kontrollen (ncontrols) im eingebauten 
# Krebsdatensatz 'esoph' ohne Ausreißerunterscheidung.
# d.h. die Whisker des Boxplots sollen den gesamten Datenbereich abdecken.
# t6_start
# A6 - Boxplot of controls without outlier distinction
boxplot(esoph$ncontrols, 
        outline = FALSE,  # No outlier distinction
        range = 0,       # Whiskers cover full data range
        main = "Verteilung der Kontrollgruppengrößen",
        ylab = "Anzahl Kontrollen (ncontrols)")
# t6_ende


# A7 ----
# Plotte ein Histogramm der Tageshöchsttemperaturen am Flughafen La Guardia 
# im eingebauten Datensatz 'airquality'.
# Weise die (standardmäßig unsichtbare) Ausgabe dem Objekt 'output_hist' zu.
# - Verwende 15 Bins, die mit der Farbe "coral" gefüllt sind.
# - Sorge dafür, dass die x-Achse zwischen 50 und 100 liegt.
# - Verwende für die Beschriftung der x-Achse "Temperatur  [\U{00B0}F]".
# t7_start
# A7 - Histogram of daily maximum temperatures
output_hist <- hist(airquality$Temp,
                    breaks = 15,
                    col = "coral",
                    freq = FALSE,
                    xlim = c(50, 100),
                    xlab = "Temperatur  [\U{00B0}F]",
                    main = "Verteilung der Tageshöchsttemperaturen")
# t7_ende


# A8 ----
# Transferaufgabe Dokumentation durchforsten. Passe die obige Lösung an:
# Plotte die Wahrscheinlichkeit (Dichteverteilung) anstatt der Häufigkeit (Anzahl pro Klasse).
# A8 - Density histogram of temperatures
output_hist <- hist(airquality$Temp,
                    breaks = 15,
                    col = "coral",
                    xlim = c(50, 100),
                    xlab = "Temperatur  [\U00B0F]",
                    main = "Dichteverteilung der Temperaturen",
                    freq = FALSE)  # Plot densities instead of frequencies

# In "R49_Grafiken_3.R" sind noch weiterführende Bonus Aufgaben.
# Diese sind nicht bepunktet und optional. Löse sie nur, wenn du die Zeit dafür hast.


# Wenn du fertig bist, übermittle bitte deinen Punktestand an openHPI mit:
# codeoceanR::rt_submit()
# Beschreibe bitte vor der Abgabefrist noch keine Lösungen im Forum.
codeoceanR::rt_plot2()

codeoceanR::rt_score()

# A5 ----
# Welche Spalten hat der eingebaute Datensatz 'longley'?
# Hinweis: hier ist ein einziger Funktionsaufruf verlangt.
# Get column names of 'longley' dataset
spaltenNamen <- names(longley)


# Wähle aus 'longley' die Spalten 'Year' und 'Population' aus.
# Speichere sie in der separaten Tabelle 'bevoelkerung'.
# Eine schlichte Auswahl zweier Spalten (Indexing) reicht, da bleiben die Zeilennamen erhalten. 
# Bei anderen Ansätzen musst du ggf. selbst Zeilennamen setzen (Zusatzfolien).
# Select 'Year' and 'Population' columns
bevoelkerung <- longley[, c("Year", "Population")]

# A6 ----
# Führe 3 verschiedene Wege auf, die Spalte 'y2' aus 'anscombe' auszuwählen.
# Schreibe je eine Zeile pro Lösungsansatz.
# t6_start
anscombe$y2                   # 1. Using $ operator
anscombe[,"y2"]               # 2. Using column name
anscombe[,6]                  # 3. Using column index (y2 is 6nd column)
# t6_ende



# A7 ----
# Korrigiere den folgenden Code.
# Tipp: schaue die str von BOD an und ermittle, was hier falsch geschrieben ist.
sauerstoffBedarf <- BOD$demand
sauerstoffBedarf


# A8 ----
# Füge der eingebauten Tabelle 'women' die Spalte 'BMI' hinzu.
# Die Formel für die vorliegenden Einheiten [lb] und [in] ist: weight / height^2 * 703
# Calculate BMI using the formula: weight(lb) / height(in)^2 * 703
women$BMI <- women$weight / (women$height^2) * 703

# In "R31_DataFrames_3.R" sind noch weiterführende Bonus Aufgaben.
# Diese sind nicht bepunktet und optional. Löse sie nur, wenn du die Zeit dafür hast.


# Wenn du fertig bist, übermittle bitte deinen Punktestand an openHPI mit:
# codeoceanR::rt_submit()

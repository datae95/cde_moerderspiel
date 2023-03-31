# Mörderspiel
## Verwendung
In eine Datei `input.csv` wird eine Liste aller Mitspielenden mit vollständigem Namen eingetragen:

```csv
player
Vorname1 Nachname1
Vorname2 Nachname2
```

Dann kann mithilfe von `./make_game.sh` ein neuer Mörderkreis erstellt werden. 
Dieser wird in `output/murderer_notes.pdf` gespeichert und wird doppelseitig ausgedruckt.
Die Vorder- und Rückseiten passen dann genau aufeinander, sodass es dann nur noch anhand der Linien ausgeschnitten und in der Mitte gefaltet werden muss.
Das sollte von jemandem gemacht werden, der nicht am Spiel teilnimmt, da sonst die Reihenfolge in der Datei

Eine Friedhofliste wird in Originalreihenfolge ebenfalls erstellt, die unter den Regeln ausgehängt werden kann.

## TODO 
- alphabetische Sortierung der Teilnehmendenliste
- Reihenfolge in Mörderliste und Opferliste gleich ändern, damit auch das Schneiden vom mitspielenden Spielleiter erledigt werden kann
#import "esr_abbr.typ": abbr, abbr_entries

#{
  set align(center)
  set text(size: 25pt)

  [
    *Anmerkungen & Abkürzungsverzeichnis*

    Zertifikant - Mario Treiber
  ]

  v(2cm)
  set text(size: 15pt)
  grid(
    columns: (1fr, 2fr),
    align: (left, right),
    row-gutter: 10pt,
    [*Angestrebtes Level*],
    [*Level C*],
    "IZR-Nummer",
    "26-200",
    "Prüfungsdatum",
    "14. - 16. Jan 2026",
    "Prüfungsort",
    "Online",
  )

  v(5cm)
  set text(size: 11pt)
  grid(
    columns: 2,
    align: (left, right),
    column-gutter: 1cm,
    row-gutter: 10pt,
    grid.cell(colspan: 2, align: center, text(size: 15pt, "Mario Treiber")),
    "E-Mail",
    "mariotreiber@gmail.com",
    "Tel.",
    "+49 176 39297462",
  )

  pagebreak()
}

#show heading: set text(size: 20pt)
#show heading: set align(center)

#v(1fr)

= Abkürzungsverzeichnis
#show table.cell.where(y: 0): set text(size: 15pt, weight: "bold")
#table(
  columns: (1fr, 3fr),
  align: left,
  stroke: none,
  table.header("Abkürzung", "Bedeutung"),
  table.hline(),
  ..abbr_entries,
)

#v(1fr)

= Anmerkung zum Leistungsnachweis

Ich verwende privat ausschließlich Linux als Betriebssystem und nutze keine der MS Office Tools (und habe daher auch weder für Windows, noch für MS Office, Lizenzen).
Als Alternative zu Excel verwende ich LibreOffice Calc.
Diese Software unterstützt das Excel-Dateiformat, verwendet aber eine andere Makro-Sprache.

Der Leistungsnachweis ist eine Excel-Tabelle mit solchen Makros.
Ich kann die Datei inhaltlich problemlos bearbeiten.
Da die Makro-Sprachen nicht deckungsgleich sind, ist es allerdings möglich, dass die enthaltenen Makros nicht vollständig korrekt ausgeführt und/oder bei der Bearbeitung mitgespeichert werden.
Soweit ich das auf meiner Seite beurteilen kann, funktioniert dennoch alles einwandfrei.
Da ich keinen vollen Zugriff auf alles in der Datei habe, kann ich jedoch nicht selbst prüfen, dass die Datei vollständig korrekt ist.
Die aufgeführten Umstände können also dazu führen, dass die Datei gemäß Ihrem Leitfaden ungültig wird.

Ich habe dazu bereits per E-Mail eine Anfrage gestellt, um das Ganze zu klären.
Ich wurde gebeten, die Datei zunächst so einzuschicken, wie sie mir vorliegt.
Parallel bemühe ich mich darum als Ausweichoption Zugang zu einem Rechner mit den aktuellen MS Office Tools zu bekommen, sollte es notwendig werden, dass ich die Datei nochmals nachreiche.

Der E-Mail-Austausch ist zur Dokumentation auf den nachfolgenden Seiten zu finden.

#v(1fr)

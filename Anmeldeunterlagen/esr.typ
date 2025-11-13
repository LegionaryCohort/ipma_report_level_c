#import "../utils.typ": todo
#import "@preview/cheq:0.3.0": checklist
#show: checklist

#import "esr_abbr.typ": abbr, abbr_entries

#set page(margin: 3cm)
#set text(size: 11pt, lang: "de")

#{
  set align(center)
  set text(size: 25pt)

  [
    *Executive Summary Report (ESR) 1-3*

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

#{
  show heading.where(level: 1): set align(center)
  show outline.entry.where(level: 1): set text(size: 11pt)
  outline(title: [
    Inhaltsverzeichnis
    #v(10pt)
  ])
  context counter(page).update(0)
}

#let report_heading(num, name) = [
  = *Executive Summary Report #num (ESR#num)*\ #text(size: 11pt, style: "italic", name)
]
#set page(header: {
  set text(size: 9pt)
  grid(
    columns: (2cm, 2fr, 1fr, 2cm),
    rows: 0.75cm,
    align: (left, left + top, right + top, right),
    none,
    "Executive Summary Reports - Level C",
    "Mario Treiber",
    none,
  )
}, footer: context {
  let page_numbering = page.numbering
  if page_numbering == none { page_numbering = "1" }
  set text(size: 9pt)
  grid(
    columns: (1fr, 2fr, 1fr),
    rows: 0.75cm,
    align: (left, center + bottom, right),
    none,
    "mariotreiber@gmail.com",
    numbering(page_numbering, ..counter(page).get()),
  )
}, numbering: "1")
#set par(justify: true, leading: 0.45em, spacing: 1.5em)
#set heading(numbering: "1.1")
#show heading.where(level: 1): it => {
  text(20pt, it)
}

// ESR 1

#report_heading(1, [Verwaltung & Ausbau der Produktdatenplattform des Netzwerk Hörgesundheit])

== Wie ist das Programm in das eigene Unternehmen eingebettet?
=== Audoora GmbH <audoora>
Die Audoora GmbH ist ein IT-Startup aus Köln, das sich auf die Hörgerätebranche spezialisiert hat.
Das Unternehmen entwickelt maßgeschneiderte Softwarelösungen für Hörgeräteakustiker und unterstützt bei der Digitalisierung und Optimierung von Geschäftsprozessen.
Audoora bietet zudem Beratungs- und Integrationsdienstleistungen für die Hörgerätebranche an.

Die Audoora GmbH steht im Zentrum des Netzwerk Hörgesundheit, einem Zusammenschluss von Unternehmen und Personen, die einen gesamtheitlichen Ansatz für den Erhalt und Wiederaufbau von Hörgesundheit verfolgen.
Innerhalb des Netzwerkes führt die Audoora GmbH diverse Software-Projekte durch, um die Geschäftsprozesse der Partnerunternehmen zu stärken und digitalisieren.

Projekte innerhalb der Audoora GmbH werden aufgrund der Unternehmensgröße grds. mit flachen Hierarchien durchgeführt.
Die Projektplanung & -einschätzung wird vollständig zusammen mit den Entwicklern gemacht.
In der Umsetzung bilden die Projektleiter die Schnittstelle zwischen dem Kunden und den Entwicklern.
Die komplette Planung und Steuerung der Projekte wird in Notion mit eigens dafür gebauten Templates abgebildet.
Bei allen Projekten wurde die Zeit- und Budgetplanung grundsätzlich zusammen mit der Geschäftsführung durchgeführt. Für Projekte, die nicht von der Geschäftsführung selbst geleitet wurden, wurden die Verantwortung über die Aufgaben und Termine abgegeben, während die Überwachung des Budgets weiterhin bei der Geschäftsführung lag.

=== Bedeutung dieses Programmes
Das hier dargestellte Programm bildete den Produktdatenservice des Netzwerk Hörgesundheit ab.
Der Produktdatenservice erlaubt Partnerunternehmen mit wenig Aufwand alle Produktdaten der namhaftesten Hersteller der Branche in ihre ERP-Systeme zu importieren.
Hierzu werden die Produktdaten von Audoora gesammelt, aufbereitet und über ein Online-Portal für Partner in diversen Formaten zur Verfügung gestellt.
Das Programm umfasste alle Projekte, die den Produktdatenservice optimiert, ausgebaut oder mit weiteren Schnittstellen verbunden haben.

== Eigene Rolle im Unternehmen und im Projekt
=== Rolle im Unternehmen <audoora-roles>
Bei der Audoora GmbH habe ich bedarfsweise zwischen drei Rollen hin- und hergewechselt:
- Software-Designer & -Entwickler
- Projektleiter für Projekte im Rahmen des Produktdatenservice, sowie für Projekte mit Netzwerk-externen Kunden
- Unterstützung der Geschäftsführung in Vertrieb, Marketing und Mitarbeiterführung

Den Großteil der Zeit war ich in mehreren Rollen zeitgleich aktiv, mit unterschiedlichen und sich regelmäßig ändernden Auslastungen.
Anstehende Aufgaben und Bedarfe wurden wöchentlich mit der Geschäftsführung besprochen und meine Auslastungsverteilung entsprechend geplant.

Beispiele:
- Im normalen alltäglichen Betrieb habe ich neben meiner Rolle als Projektleiter und -planer auch regulär als Entwickler gearbeitet und Projekte mit umgesetzt. Viele Tätigkeiten in diesem Bereich (Architekturplanung, Bewertung von Änderungsauswirkungen, Austausch mit Kunden, etc.) bewegen sich inhaltlich in beiden Rollen gleichzeitig, da sowohl die fachlich-technischen Kenntnisse eines Entwicklers, als auch die organisatorischen und kommunikativen Fähigkeiten eines Projektmanagers erforderlich waren.
- Für die Kalkulation & Planung von neuen Projekten (auch von denen, die nicht durch mich geleitet wurden) wurde ich regelmäßig als zusätzliches Paar Augen zu Rate gezogen. Während der Planungsphasen dieser Projekte hatte ich eine erhöhte Auslastung in Projektmanagement-Tätigkeiten, verglichen mit dem üblichen Alltag.
- Jährlich im Oktober findet der #abbr("euha") Kongress statt, eine Messe mit parallelen Symposien, auf der die neuesten Produkte und Dienstleistungen der Hörakustik-Branche präsentiert werden. Ich bin jedes Jahr zusammen mit der Geschäftsführung auf diesen Kongress gefahren und habe sie in der Vor- und Nachbereitung unterstützt. In diesem Zeitraum hatte ich typischerweise eine Auslastung von 80-100% bezogen auf Vetriebs- und Marketingthemen.\ Neben dem Kongress gab es immer wieder mal Vertriebs- und Marketingkampagnen, die einen erhöhten Arbeitsaufwand mit sich gebracht haben. In diesen Fällen habe ich auch Teilaufgaben übernommen, um die Kollegen etwas zu entlasten.

=== Organisation & Verantwortlichkeiten
Das Programm wurde mir weitesgehend autonom anvertraut.
In vielen Teilen war ich gleichzeitig als Projektmanager und Entwickler tätig.
Die Ziele des Programms wurden mit der Geschäftsführung zusammen ausgearbeitet.
Die vollständige Planung des Programms, einschließlich der Konzeptionierung und Planung einzelner Projekte, lag in meiner Verantwortung.
Zu verschiedenen Zeitpunkten wurden mir Projekte von außen übertragen, die sich aus Verhandlungen der Geschäftsführung mit Partnern und anderen Unternehmen ergaben (z.B. die Entwicklung der Schnittstelle zum optadata focus ERP-System).
In diesen Fällen wurden ebenfalls gemeinsam die Ziele definiert und alles weitere mir überlassen.

Mir wurden keine Mitarbeiter direkt unterstellt, aber ich konnte jederzeit bei Bedarf andere Mitarbeiter aus dem Unternehmen für Teilprojekte bei der Geschäftsführung anfordern.
Hierzu habe ich den Bedarf und den erwarteten Zeitaufwand klar dargestellt und mit der Geschäftsführung besprochen.
In der Regel erfolgte die Freigabe nach einer kurzen Besprechung, in der ich die Geschäftsführung von der Sinnhaftigkeit meines Vorhabens überzeugt habe.
Bei Nicht-Freigabe habe ich das Teilprojekt meist nach hinten geschoben (inhaltliche Freigabe wurde erteilt, aber der erforderliche Mitarbeiter wurde noch anderweitig benötigt).
In seltenen Fällen wurden das Teilprojekt nicht inhaltlich freigegeben.
Dies betraf ausschließlich Teilprojekte, die Kann-Ziele erfüllen sollten, diese wurden daher von mir gestrichen.

== Kurze Beschreibung zum Inhalt <politics>
Das strategische Kernziel des Programms war die Erstellung einer Produktdatenbank über alle Geräte- und Zubehörprodukte der Branche in einem einheitlichen Datenschema.
In der Hörakustik-Branche ist es im Allgemeinen der Fall, dass alle Hersteller ihre Produkte und zugehörige Daten in eigenen Formaten und Strukturen zur Verfügung stellen.
Es gibt nur wenig Standardisierung innerhalb der Branche.
Ursache hierfür ist, dass die Hersteller und einige große Einkaufsgemeinschaften derzeit sehr hohe Margen mit ihren Produkten erzielen.
Intransparenz und Kontrolle über die Verteilung ihrer Produktdaten spielen dabei eine große Rolle, um diese Machtposition am Markt aufrecht zu erhalten.
Die strategische Natur des Kernziels ergibt sich daher, dass die Audoora GmbH Teil einer Offensive innerhalb der Branche ist, die versucht diese Machtposition aufzubrechen, damit den gesamten Markt zugänglicher zu machen und somit Hörgesundheitsversorgung insgesamt zugänglicher und kostengünstiger für Endverbraucher zu machen.

Konkrete Nutzungsziele für das Programm ergaben sich im Laufe der Zeit aus anderen strategischen Entscheidungen und Plänen.
Ein Beispiel hierfür war die Ermöglichung von Preis- und Featurevergleichen von Hörgeräten durch die Ergänzung von Feature-Katalogen in der Datenbank (dieses Projekt wurde vor meiner Übernahme der Programmleitung durchgeführt).
Ein weiteres Beispiel war die Vereinfachung von Produktdaten-Import-Vorgängen in die ERP-Systeme von Partner-Akustikern durch Bereitstellung von standardisierten Import-Dateien.
Hierzu wurden verfügbare Schnittstellen in den gängigen ERP-Systemen analysiert und die dafür nötigen Formate vorbereitet.
Das Downloadcenter, ein Zugriffsportal für Partnerunternehmen, über das sie Zugang zu der Produktdatenbank haben, wurde dahingehend angepasst, dass die zusätzlichen Formate zum Download zur Verfügung gestellt werden.
Die Daten wurden dazu automatisiert aus der Datenbank geladen, in das entsprechende Format konvertiert und zum Download bereitgestellt.

Es ergaben sich zudem weitere interne strategische Ziele, um die Relevanz und das politische Potential der Datenbank zu fördern.
Ein Beispiel hierfür ist die Optimierung der Datenqualität, mit der wir die Daten auf einen besseren Standard anheben wollten, als die Hersteller selbst zur Verfügung stellen.
Hierzu musste zunächst sichergestellt werden, dass die bestehenden Daten keine Lücken aufweisen.
Zu diesem Zweck wurde ein Quality Reporting System entwickelt, das automatisch die Datenbank nach Datenfehlern und -lücken durchsucht und diese als Report meldet.
Für das System wurde zusätzlich eine eigene Import-Funktion entwickelt, mit der die in Reports aufgedeckten Fehler schnell korrigiert werden konnten.

Die relevantesten Stakeholder waren das Netzwerk Hörgesundheit, dem die Audoora GmbH angehört, sowie die namhaften Hersteller und Einkaufsgemeinschaften der Branche.
Das Netzwerk Hörgesundheit stand vollständig hinter dem Projekt, da es nicht nur die Arbeit aller Partnerunternehmen erleichterte, sondern auch die allgemeine Machtposition der Hersteller angriff.
Die Partnerunternehmen wurden aktiv in die Weiterentwicklung mit einbezogen, um neue Features zu entwerfen und später zu testen.\
Dem gegenüber standen die Hersteller und Einkaufsgemeinschaften der Branche, die ein starkes Interesse daran hatten das Projekt zu bremsen.
Da das Geschäftsmodell des Netzwerkes darauf abzielt die Branche langfristig stabiler zu gestalten, haben wir einen diskursiven Ansatz verfolgt, in dem Versuch aus Gegnern Verbündete zu machen.
Auch wenn wir damit wiederholt auf Widerstand gestoßen sind, konnten wir dennoch Fortschritte machen und haben einige unserer Gegner dazu bewegt ihre Geschäftsmodelle zu überdenken und modernisieren.

Die Komplexität des Programms, und der Arbeit des Netzwerk Hörgesundheit im Allgemeinen, ergab sich vor allem aus der politisch angespannten Situation innerhalb der Branche.
Die Strategien von hohen kurzfristigen Gewinnen und langfristig stabilen Geschäftsmodellen stehen sich nach wie vor gegenüber und machen die Umsetzung von Projekten innerhalb der Branche interessant.

Neben der politischen Situation waren die Anpassungen der Datenbank oftmals involvierte Vorhaben, bei denen diverse externe Faktoren berücksichtigt werden mussten.
Zusätzlich war ich als Hauptverantwortlicher für das Produktdaten-Thema auch gleichzeitig der Hauptansprechpartner für alles rund um dieses Thema.

== Management und Führung
Im Laufe des Programmes kamen viele Management-Methoden zum Einsatz, von der Stakeholderanalyse, über die klassischen Arbeitspaketplanung, bis hin zum Risiko- & Chancenmanagement.

Um das Ganze mit konkreten Beispielen etwas zu veranschaulichen:

Für die Planung und Umsetzung von größeren Änderungen am Datenbanksystem wurde zunächst im Rahmen einer groben Zielanalyse ausdefiniert welche Funktionen und Features neu hinzukommen sollten und welche anzupassen waren.
Es wurden Auswirkungen auf bestehende Funktionen ermittelt und beurteilt, inwiefern dort weitere Maßnahmen ergriffen werden müssen.
Aus diesen Informationen wurde anschließend ein grober Strukturplan für die anstehende Änderung aufgebaut.\
Anhand des fertigen Strukturplans wurden dann in einem iterativen Prozess Arbeitspakete mit konkreten Änderungen definiert, umgesetzt und getestet.
Erst nach Abschluss eines fertigen Arbeitspaketes wurde die nächste Komponente bearbeitet.
So wurde sichergestellt, dass auch wenn die volle Anpassung noch nicht in einem testbaren Zustand war, die einzelnen Teilkomponenten, die später dafür gebraucht werden, bereits in einem fertig getesteten Zustand sind.
Dadurch wurde im späteren Verlauf von Anpassungen die Fehlerbehebung erheblich vereinfacht.
Da die meisten involvierten Komponenten bereits getestet wurden, ließen sich Fehlerquellen auf wenige Komponenten beschränken.

Für Projekte mit einem externen Auftraggeber wurden zunächst die Interessen der Auftraggeber und ihrer Mitarbeiter näher betrachtet.
Da es häufig unausgesprochene, teils absichtlich verdeckte, politische Interessen gab, war es unabdingbar, dass wir uns im Vorfeld ein klares Bild darüber verschaffen mit welchen ggf. versteckten Interessen wir es beim Auftraggeber zu tun haben.
Im Schnittstellenprojekt zum "optadata focus" ERP-System z.B. haben nicht nur wir, sondern auch eine konkurrierende Einkaufsgemeinschaft Produktdaten platzieren wollen.
Über die Stakeholderanalyse konnten wir recht schnell identifizieren, dass uns zu Projektbeginn Details zu der Art, wie unsere Daten platziert werden, verschwiegen wurden, was einen Einfluss auf unsere Marketing-Strategie gehabt hätte.
Dank unserer Analyse war es uns möglich die Informationen über Umwege selbst zu ermitteln, wodurch wir uns besser positionieren und damit einen Vorsprung vor der Konkurrenz erlangen konnten.

== Wesentliche Herausforderungen und Risiken im Projekt
Im wesentlichen war die Produktdatenbank zugleich strategisches Risiko und Chance.
Die Audoora GmbH hat über die Jahre viel in den Aufbau der Strukturen und Daten investiert und damit in erster Linie ein Verlustgeschäft betrieben.
Sofern die Datenbank sich nicht zur strategischen Positionierung einsetzen lässt, würde sie eine Fehlinvestition darstellen.
Gleichzeitig stellt die Datenbank ein hohes politisches Potential innerhalb der Branche dar (siehe @politics für mehr Details).

Es gab im Laufe des Projektes diverse Planänderungen oder -abweichungen, die sich aus veränderten strategischen Zielen ergaben.
Beispielsweise haben wir Mitte/Ende 2024 begonnen eine Verbesserung der Geräte-Feature-Daten zu planen.
Hierzu wären Anpassungen an der Datenbankstruktur, sowie einige Änderungen an dem darauf aufbauenden System notwendig gewesen.
Das Projekt wurde dann Anfang 2025 im Laufe der initialen Planung auf Eis gelegt, da sich mit der Anbindung an das neue "optadata focus" ERP-System eine Gelegenheit ergab die Produktdaten von Beginn an bei einem neuen Kundensegment zu platzieren.

#pagebreak()

// ESR 2

#report_heading(2, [Robotic Process Automation (#abbr("rpa")) für die Synchronisierung von Verkaufsdaten])

== Wie ist das Projekt in das eigene Unternehmen eingebettet?
Das Projekt wurde bei der Audoora GmbH durchgeführt (siehe @audoora).

Dieses Projekt wurde auf Anfrage des Kunden hin durchgeführt.
Dieser ist aufgrund positiver vergangener Erfahrungen auf uns mit seinem Problem (siehe @inhalte-2) zugekommen und bat uns um Beratung und Unterstützung.
Das Projekt war neben dem zusätzlichen Umsatz für das Unternehmen auch von strategischer Bedeutung, da es sich bei dem Kunden um einen potentiellen zukünftigen Partner handelte.
Mit unserer Unterstützung wollten wir diese Beziehung weiter ausbauen.

== Eigene Rolle im Unternehmen und im Projekt
Meine Rollen bei der Audoora GmbH sind im ersten Summary Report beschrieben (siehe @audoora-roles).
Das Projekt lief parallel zu anderen Projekten ohne weitere darüberstehende Organisation (mal abgesehen von der Geschäftsführung).

Das Projekt wurde vollständig in meine Verantwortung übergeben, mit Außnahme der Budget-Überwachung.
Wie in allen anderen Projekten bei der Audoora GmbH lag die Überwachung des Budgets weiterhin bei der Geschäftsführung.

Seitens Audoora war ich der einzige Mitarbeiter im Projekt, alle anderen involvierten Mitarbeiter saßen auf Kundenseite. Für Aufgaben, die ich an diese Mitarbeiter übertragen musste, hatte ich einen zentralen Ansprechpartner beim Kunden, der die Weisungsbefugnis über diese Mitarbeiter hatte.

== Kurze Beschreibung zum Inhalt <inhalte-2>
Das Projekt hatte das Kernziel den Arbeitsaufwand der Sachbearbeiter des Kunden zu reduzieren, indem Auftragsdaten aus dem E-Shop in das ERP-System des Kunden automatisiert übertragen werden.
Die Sachbearbeiter sollten in den Prozess eingebunden bleiben, um die Korrektheit aller Daten zu prüfen.
Eine vollständige Übertragung aller Daten war aus diesem Grund auch nicht zwingend notwendig, da die Sachbearbeiter komplexere Aufträge weiterhin selbst übertragen konnten.
Eine direkte Schnittstelle zwischen den Systemen wäre mit hohen Lizenz- und Weiterbildungskosten verbunden gewesen, die das gesamte Vorhaben unwirtschaftlich gemacht hätten.
Daher sollte eine Lösung entwickelt werden, die möglichst kostengünstig den Großteil der Datenübertragung automatisiert.

Anstelle einer direkten Schnittstelle wurde ein #abbr("rpa") Skript konzipiert, das die nötigen Arbeitsschritte über die Simulation menschlicher Eingaben absolviert.
Zudem wurde eine umfangreiche Fehlererkennung, sowie ein menschlicher Zwischenschritt zu Kontrollzwecken eingebaut.
Das finale Skript war in der Lage mehr als 80% aller Daten sauber und korrekt zu übertragen und hat alle weiteren Datensätze in hilfreiche Kategorien für die Nachbereitung durch Sachbearbeiter eingeteilt.
Hierdurch konnte der Arbeitsaufwand der Sachbearbeiter erheblich reduziert werden, da diese nur noch einen Bruchteil der Aufträge selbst übertragen, und den Rest lediglich auf Korrektheit prüfen mussten.

Das Projekt wurde von dem Vorgesetzten der Abteilung, in der die Sachbearbeiter sitzen, ins Leben gerufen.
Dieser, sowie seine Mitarbeiter, wurden während der Konzeptionierungsphase intensiv in das Projekt eingebunden, um den Prozess der Datenübertragung möglichst vollständig abzubilden und Qualitätsmerkmale zu definieren und priorisieren.

Gleichzeitig wurde mit der IT-Abteilung des Kunden regelmäßig Rücksprache gehalten, um sicherzustellen, dass die erforderlichen technischen Rahmenbedingungen erfüllt werden können und die Abteilung das Skript im Anschluss übernehmen und weiter betreuen kann.

Da abgesehen von mir zuvor niemand Berührungspunkte mit #abbr("rpa") als Konzept hatte (und ich selbst noch kein Projekt damit umgesetzt hatte), ergab sich bereits in der Wahl des besten Tools ein gewisser grad an Komplexität.
Um dem entgegenzuwirken, habe ich zunächst diverse Tools getestet und deren Vor- und Nachteile für den Kunden dokumentiert und anschließend mit diesem zusammen ein geeignetes Tool ausgewählt.

Im Allgemeinen ergibt sich aus der Verwendung von #abbr("rpa")-Tools ein gewisser Grad an Komplexität, da diese Tools unter sehr losen Rahmenbedingungen arbeiten. Im Gegensatz zu typischen Skripten und Programmen, muss bei diesen Tools auf deutlich mehr Rahmenfaktoren geachtet werden, die nicht immer kontrollierbar sind (z.B. parallel laufende Software oder Fenster- & Bildschirmgröße).

Im weiteren Verlauf stellte sich heraus, dass das Tool eine geringere Zuverlässigkeit besaß als ursprünglich anhand der Tests angenommen. Hieraus ergab sich zusätzliche Komplexität, die bewältigt werden musste, mehr Details dazu unter @complex-2.

== Management und Führung
In den Prototyping & Design Phasen wurden agile Methodiken angewendet, in den späteren Phasen ein eher planbasierter Ansatz.

Während der Prototyping-Phase wurden verschiedene #abbr("rpa")-Tools in einem schnellen Rythmus getestet und dokumentiert.
Abschließend wurden in einer Besprechung alle Tools miteinander verglichen und das best-geeignete Tool bestimmt.
In der Konzeptionierungsphase wurden in regelmäßigen Meetings der Arbeitsablauf der Sachbearbeiter dokumentiert und verfeinert.
Zudem wurden mögliche Anpassungen besprochen, die für das #abbr("rpa")-Skript vorgenommen werden sollten.
Parallel wurden von mir laufend potentielle Problemstellen und Risiken in einem Fehlerquellenregister dokumentiert, für die in dem Skript später Fehlerroutinen eingebaut werden mussten.

Aus den Ergebnissen dieser Besprechungen wurden von mir die einzelnen Schritte definiert, in denen das Skript arbeiten muss.
Mithilfe des Fehlerquellenregisters habe ich die nötigen Fehlerroutinen designed.
Der abschließend zusammengestellte Ablaufplan für das Skript wurde in einer letzten Besprechung mit den Sachbearbeitern verifiziert.

Alle notwendigen Aufgaben wurden von mir dokumentiert und überwacht.
Alle Aufgaben, die von anderen Projektteammitgliedern durchzuführen waren, wurden in Online-Meetings besprochen.
In regelmäßigen Abständen habe ich mir Status-Updates eingeholt, um den Fortschritt im Blick zu behalten.
Bei Aufgaben, die andere Aufgaben blockieren, habe ich mir in erhöhter Taktung Status-Berichte geben lassen, um sicherzustellen, dass ich frühzeitig reagieren kann, sollte es hier zu Problemen kommen.

== Wesentliche Herausforderungen und Risiken im Projekt <complex-2>
Das wesentliche und vorab bekannte Risiko war ganz allgemein die Verwendung eines #abbr("rpa")-Tools.
Da diese Tools sehr anfällig für Veränderungen in ihrer digitalen Umgebung sind, gibt es viele, teils unkontrollierbare, Fehlerquellen.
Im schlimmsten Falle können diese Tools aktiv Schaden über ihr Aufgabenfeld hinaus anrichten, wenn die Umgebung des Tools nicht sauber abgesichert aufgesetzt wird.
Um dieses Schadenpotential proaktiv im Griff zu behalten, wurden bei der Planung sowohl technische Rahmenbedingungen definiert (und später auch umgesetzt), die die kontrollierbaren Fehlerquellen im Griff behalten.
Zudem wurden für alle übrigen Fehlerquellen Fallback-Routinen entworfen, die im Falle des Auftretens dieser Fehler eine automatische Korrektur vornehmen, oder zumindest durch stoppen des Skriptes weitere Probleme verhindern und einen IT-Spezialisten automatisch alarmieren.

Im Verlauf des Projektes wurde außerdem festgestellt, dass unter bestimmten Bedingungen das gewählte #abbr("rpa")-Tool eine geringere Zuverlässigkeit aufwies, als in der Prototyping-Phase ermittelt wurde.
Die erkannte Unzuverlässigkeit wurde von mir näher analysiert und daraus weitere benötigte Fehlerroutinen abgeleitet.
Aufgrund des zuvor festgehaltenen Fehlerregisters konnte der Einfluss der neu erkannten Fehlerquellen schnell identifiziert und eingeschränkt werden, sodass die nötigen Anpassungen gänzlich mit dem im Projekt eingeplanten Puffer abgefangen werden konnte.
Es kam durch die Änderungen daher zu keinem Zeitverzug und das Projekt konnte nach Plan erfolgreich abgeschlossen werden.

#pagebreak()

// ESR 3

#report_heading(
  3,
  [Aufbau des Unternehmens "Audoora GmbH" mit der digitalen Verkaufsplattform "Audoora Slide2Order"],
)

== Wie ist das Projekt in das eigene Unternehmen eingebettet?
Dieses Projekt war das erste Projekt der Audoora GmbH (siehe @audoora), für das das Unternehmen aufgebaut wurde.
Das Projekt war dementsprechend von existentieller Bedeutung für das Unternehmen.

== Eigene Rolle im Unternehmen und im Projekt
Meine Rollen bei der Audoora GmbH sind im ersten Summary Report beschrieben (siehe @audoora-roles).

Für dieses Projekt war ich verantwortlich für das komplette Design und den Aufbau des Backend-Systems.
Konkreter war ich für Design und Aufbau der Architektur der Backend-Software, sowie das Design der Datenbank-Schemata und interner und externer Schnittstellen, verantwortlich.

Für die mir übertragenen Aufgaben hatte ich Zugriff auf einen weiteren Entwickler, der parallel noch an anderen Teilprojekten gearbeitet hat.
Aufgaben aus den verschiedenen Teilprojekten wurden nach Bedarf zwischen Entwicklern verschoben oder übertragen.
Solche Anpassungen wurden schnell und formlos mit der Geschäftsführung abgestimmt, um eine hohe Entwicklungsgeschwindigkeit aufrecht zu erhalten.

Zusätzlich wurden mir im Laufe des Projektes wiederholt für wenige Monate Praktikanten unterstellt.
Die Auslastung der Praktikanten, sowie ihre Ergebnisse, lagen in meiner Verantwortung.

== Kurze Beschreibung zum Inhalt
Kernziel des Projektes war die Vereinfachung von Büroarbeit in Akustiker-Betrieben.
Das sollte insb. dadurch geschehen, dass die Suche nach den benötigten Artikeln, sowie deren Bestellung, so einfach wie möglich gestaltet wird.
Zu diesem Zweck wurde die die Verkaufsplattform "Slide2Order" geplant, die diese Use-Cases abdecken sollte, indem Nutzer in einer allgemeinen Datenbank nach Produkten suchen und diese dann über die Audoora GmbH bestellen können.\
Parallel wurde das strategische Ziel verfolgt, mit dem Aufbau der hinter dem System liegenden Produktdatenbank mehr Transparenz in der Branche zu erzeugen. Die Hintergründe und (geplanten) Auswirkung dieses Ziels wurden bereits unter @politics näher erläutert.

Die dort beschriebenen Hersteller und Einkaufsgemeinschaften waren auch diesem Projekt bereits aus denselben Gründen politisch entgegengestellt.

Die Audoora GmbH selbst war in diesem Projekt natürlich relevanter Stakeholder, da ein Scheitern des Projektes potentiell auch das Ende des Unternehmens bedeuten würde.
Umso wichtiger war die Unterstützung, die wir von einigen Akustiker-Betrieben als Early-Adopter erfahren haben.
Diese hatten ein großes Interesse nicht nur an den direkten Vorteilen für ihre eigenen Betriebe, sondern waren auch von unserer strategischen und politischen Einstellung überzeugt.
Dementsprechend wurden diese Partner früh in die Entwicklung mit einbezogen um frühes Feedback einzuholen und Features zu designen und planen.

Die Komplexität des Projektes ergab sich zunächst aus der Tatsache, dass wir ohne nennenswerte Vorerfahrung ein komplettes System auf die Beine stellen wollten.
Unsere Entwickler hatten kaum Erfahrung mit den konkreten Tools, die wir gewählt haben, und mussten sich zunächst einarbeiten.
Gleichzeitig hatten alle an der Planung beteiligten Personen kaum Erfahrung mit größeren Projekten.
Mit meiner bis dahin überschaubaren Managementerfahrung, war ich die erfahrenste Person im Unternehmen in Sachen Projektmanagement.

Hinzu kam, dass wir laufend versuchen mussten potentielle Investoren zu überzeugen, um die Finanzierung des gesamten Vorhabens sicherzustellen.
Dadurch ergaben sich regelmäßig kurzfristige Planänderungen bzgl. der zu entwickelnden Komponenten und sehr spontane Deadlines für Demo-Versionen, die zuvor nicht geplant waren.

Das Projekt war insgesamt ein halber Erfolg.
Die Verkaufsplattform haben wir erfolgreich aufbauen können, wir haben es aber nicht geschafft mehr als unsere Early-Adopter als Kunden zu gewinnen.
Die Plattform selbst hat dadurch nie den Break-Even-Point erreicht und war somit ein Misserfolg.
Die Audoora GmbH hat sich durch das Projekt allerdings den Ruf verschafft, dass wir gute Software in kurzer Zeit trotz widriger Umstände bauen können.
Damit haben wir neue Kunden für Software-Entwicklungsaufträge gewinnen können und konnten das Unternehmen strategisch darauf ausrichten sich darüber langfristig am Markt zu halten.
Die angespannte politische Dynamik hat sich bis heute durchgezogen, wie schon an den Erläuterungen in @politics unschwer zu erkennen ist.

== Management und Führung
Das Projektteam hatte sich zu Beginn entschieden vollständig agil zu arbeiten.
Dazu wurden viele der Methoden aus Scrum verwendet (allerdings bereits zu Beginn abgelehnt tatsächliches Scrum umzusetzen).
Im Laufe der Zeit wurden diese Strukturen im Rahmen der Retrospektiven weiter angepasst, um bestmöglich den tatsächlichen Arbeitsstil des Teams zu unterstützen.
Beispielsweise wurden Aufgaben zu Beginn mit Story Points in ihrem Umfang eingeschätzt.
Dieser Aspekt wurde später vollständig gestrichen, da wir festgestellt haben, dass uns die Einschätzung keinen Mehrwert erzeugt hat, aber Zeit in Anspruch nahm.
Da die Projektleiter, die quasi die Rolle des Product Owner eingenommen hatten, technisch versiert waren, gab es keine Notwendigkeit den Umfang der Tasks näher zu benennen.
Aufgaben wurden dann nur noch auf einem Kanban-Board festgehalten und nachverfolgt.

Ich war im Laufe des Projektes für die Einarbeitung und Auslastung, sowie deren Arbeitsergebnisse, einiger Praktikanten verantwortlich.
Um ihnen angemessene Aufgaben zu übertragen, habe ich zunächst im Gespräch ermittelt welche Fähigkeiten die Praktikanten jeweils mitbringen.
Für diejenigen, die Erfahrung im Programmieren mitgebracht haben, habe ich aus den Entwicklungsaufgaben solche herausgelöst, die eine geringere Komplexität und Dringlichkeit hatten, und diese übertragen.
Damit konnten die Praktikanten einen echten Beitrag zum Projekt leisten, ohne dass Risiken für kritische Elemente oder Aufgaben entstanden.\
Diejenigen Praktikanten, die nicht programmieren konnten, wurden auf der Datenbank-Seite eingebunden.
Da dort viele Aufgaben anfielen, bei denen Produktdaten gesammelt, in unser Datenformat gebracht und auf Qualität geprüft werden mussten, konnten sie dem restlichen Projektteam hier viel Arbeit abnehmen.

== Wesentliche Herausforderungen und Risiken im Projekt
Im Laufe des Projektes ergaben sich diverse Hindernisse und Herausforderungen, die wir bewältigen mussten.

Von unseren Gegnern wurden uns wiederholt Steine in den Weg gelegt, indem z.B. Anfragen gezielt langsam beantwortet wurden und Einkaufsgemeinschaften ihren Partner-Akustikern die Zusammenarbeit mit uns untersagt haben.
Da wir als neues Unternehmen am Markt sehr früh sehr viel Aufsehen erregt haben, gab es viele, die einfach aus Vorsicht heraus zurückhaltend reagiert haben.
In Teilen konnten wir diesen Widerstand auflösen, indem wir über unser Vorhaben und Geschäftsmodell näher informiert haben.

Da wir wussten, dass unsere starken Gegner nur darauf warteten, dass wir einen rechtlich angreifbaren Fehler begehen, haben wir einen starken Fokus darauf gelegt so sauber wie möglich zu arbeiten und in dieser Hinsicht keinerlei Angriffsfläche zu bieten.
Die uns fehlenden Informationen und Daten haben wir über andere Wege beschafft.
Hier waren die Early-Adopter unseres Systems erneut von großer Hilfe, da wir über diese Zugang zu Daten bekommen konnten, die die Hersteller uns nicht zur Verfügung stellen wollten (obwohl die Daten für Akustiker komplett öffentlich waren).

Allgemein hatten wir uns durch unsere frühe Positionierung als "frischer Wind" in der Branche (oder "Unruhestifter", wie unsere Gegner es bezeichnet hätten) in eine eher riskante Lage versetzt.
Diese Positionierung war jedoch eine bewusste Entscheidung zu einer High-Risk-High-Reward Strategie, über die wir im Erfolgsfall eine starke politische Position in der Branche erlangen könnten.

Neben der politischen Lage innerhalb der Branche, ergaben sich aus der Natur des Projektes noch wesentliche Risiken.
Da das gesamte Projektteam sowohl technisch, als auch organisatorisch, wenig Vorerfahrungen hatte, kam es wiederholt zu Fehlentscheidungen und Fehleinschätzungen.
Die daraus resultierenden Mehraufwände haben insb. in Kombination mit den bereits erwähnten spontanen Deadlines für Demo-Versionen zu einer hohen Arbeitslast geführt.

Resultierend hieraus war das Klima unter den Mitarbeitern auch zeitweise eher bedrückt.
Hier haben wir aus Management-Sicht gegengesteuert, indem wir gemeinsam mit dem gesamten Projektteam die Kernursachen identifiziert haben und Maßnahmen entwickelt haben, diese zu begrenzen oder beseitigen.\
Eine der Ursachen war zum Beispiel, dass von einem unserer Geschäftsführer grob geschätze interne(!) Termine unabgesprochen gegenüber Shareholdern und Investoren kommuniziert wurden.
Dadurch waren wir dann effektiv gezwungen diese Termine anschließend einzuhalten, egal wie gut oder schlecht wir in unserer Schätzung waren.
Zuerst haben wir ihn über das Problem aufgeklärt und gebeten, das zu unterlassen.
Da das allerdings nur bedingt funktioniert hat und das Problem dennoch weiter aufgetreten ist, sind wir schließlich dazu übergegangen, ihm keine der geschätzten internen Termine mehr zu kommunizieren, bis der Termin auf Entwickler-Seite als realistisch bestätigt werden konnte.

#pagebreak()

= Abkürzungsverzeichnis

#show table.cell.where(y: 0): set text(weight: "bold")
#table(columns: (1fr, 3fr), stroke: none, table.header("Abkürzung", "Bedeutung"), ..abbr_entries)

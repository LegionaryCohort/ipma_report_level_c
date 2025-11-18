#import "../utils.typ": todo
#import "@preview/cheq:0.3.0": checklist
#show: checklist

#import "report_abbr.typ": abbr, abbr_entries

#let report_version = "0.1"
#let report_date = "13.11.2025"

#set page(margin: 3cm, numbering: none)
#set text(size: 11pt, lang: "de")

#{
  set align(center)

  text(size: 30pt)[*Report*]
  v(0cm)
  text(size: 18pt)[_zum Erlangen des_]
  v(0cm)
  text(size: 22pt)[*IPMA ICB 4.0 Zertifikats*]
  v(0cm)
  text(size: 18pt)[_Projektmanagement - Level C_]
  v(1cm)
  text(size: 22pt)[Zertifikant - Mario Treiber]

  v(2cm)
  set text(size: 15pt)
  grid(
    columns: (1fr, 2fr),
    align: (left, right),
    row-gutter: 10pt,
    [*Angestrebtes Level*],
    [*Level C*],
    [IZR-Nummer],
    [26-200],
    [Prüfungsdatum],
    [14.--16. Jan 2026],
    [Prüfungsort],
    [Online],
  )

  v(1fr)
  [
    Version #report_version\
    #report_date
  ]
  v(1fr)
  set text(size: 11pt)
  grid(
    columns: 2,
    align: (left, right),
    column-gutter: 1cm,
    row-gutter: 10pt,
    grid.cell(colspan: 2, align: center, text(size: 15pt, "Mario Treiber")),
    [E-Mail],
    [#link("mailto:mariotreiber@gmail.com")],
    [Tel.],
    [+49 176 39297462],
  )
  v(1fr)

  pagebreak()
}

#{
  show heading.where(level: 1): set align(center)

  [= Änderungshistorie]
  show table.cell.where(y: 0): set text(weight: "bold")
  table(
    columns: (1.7cm, 2cm, 1fr, 1.6cm),
    table.header("Version", "Datum", "Änderung", "Seite/n"),
    "",
    "",
    "",
    "",
  )

  pagebreak()

  show outline.entry: it => {
    if it.element.numbering == none {
      link(it.element.location(), it.indented(it.prefix(), [#h(11pt)#it.body()]))
    } else {
      it
    }
  }
  outline(title: [
    Inhaltsverzeichnis
    #v(10pt)
  ], depth: 3)
}

#let page_footer(numbering_end) = context {
  set text(size: 9pt)
  line(length: 100%)
  grid(
    columns: (1.5cm, 1.5cm, 1fr, 3cm),
    rows: 0.75cm,
    align: (left, left, center, right),
    [Version\ #report_version],
    [Datum\ #report_date],
    [Report - Projektmanagement Level C\ Mario Treiber],
    [
      Seite #counter(page).display(page.numbering)/#numbering(page.numbering, ..counter(page).at(numbering_end))
    ],
  )
}

#set page(footer: page_footer(<main_numbering_end>), numbering: "1")
#set par(justify: true, leading: 0.45em, spacing: 1.5em)
#set heading(numbering: (..n) => {
  if n.pos().len() <= 2 {
    numbering("1.1", ..n)
  }
})
#show heading: it=>{
  let size = if it.level == 1 { 17pt } else if it.level == 2 { 14pt } else if it.level == 3 { 12pt } else { 11pt }
  let weight = if it.level >= 4 { "regular" } else { "bold" }
  let style = if it.level >= 4 { "italic" } else { "normal" }
  set text(size, weight: weight, style: style)
  it
}

#pagebreak()
#counter(page).update(1)

= Management-Zusammenfassung
In diesem Report gehe ich auf die verschiedenen Herausforderungen und Management-Situationen ein, die im Laufe des Produktdaten-Programms bei der Audoora GmbH aufgetreten sind.
Für das Produktdaten-Programms war ich vollständig verantwortlich, wobei die Planung und Überwachung von Zeit- und Budget-Zielen stets in direkter Zusammenarbeit mit der Geschäftsführung stattfand.

== Ziele des Programms
Die Audoora GmbH verfolgt als Unternehmen das Gesamtziel die Hörgesundheitsversorgung in Deutschland zugänglicher und umfassender zu gestalten. Ein großes Hindernis hierfür ist, dass die Hersteller und Einkaufsgemeinschaften, die die Branche derzeit dominieren, die Preise ihrer Produkte unter anderem damit hoch halten, dass sie Informationen über ihre Produkte streng kontrollieren und Vergleiche zwischen Produkten (und damit den Wettbewerb allgemein) schwieriger gestalten.\

Das Programm verfolgte im Kern das daraus abgeleitete strategische Ziel die Produktdaten der Hörakustik-Branche zugänglicher und transparenter zu machen.
Die Motivation hinter diesem Ziel ist zweigeteilt:\
Zum einen führt die erhöhte Transparenz zu einer Vereinfachung von Produktvergleichen, treibt damit den Wettbewerb innerhalb der Branche an und senkt somit die Preise.\
Zum anderen erleichtert die Zugänglichkeit der Daten die Arbeit der Hörakustiker, die die Produkte an die Endverbraucher verkaufen.
Das erspart ihnen Zeit und Geld, das sie stattdessen in eine bessere Beratung und Versorgung der Endkunden investieren können, um selbst wettbewerbsfähig zu bleiben.

Aus diesem Kern-Ziel habe ich mit der Geschäftsführung zusammen weitere Ziele abgeleitet (sowohl strategische als auch Nutzungsziele).
Für die Umsetzung dieser abgeleiteten Ziele habe ich dann konkrete Projekte definiert.
Diese Ziele umfassten zum Beispiel:
- _Nutzungsziel:_ Unsere Produktdaten lassen sich mittels standardisierten Katalogen in die gängigen ERP-Systeme der Branche importieren (um den Arbeitsaufwand der Akustiker zu reduzieren).
- _strategisches Ziel:_ Die Qualität unserer Daten ist hoch und überzeugt potentionelle Partner davon, unser Produkdatensystem zu nutzen.
- _Nutzungs- & strategisches Ziel:_ Unsere Daten werden automatisch mit dem neuen ERP-System _"optadata focus"_ synchronisiert (um neue potentielle Kunden zu erreichen).

== Kontext & Umfeld
Die Audoora GmbH ist ein IT-Startup aus Köln, das sich auf die Hörgerätebranche spezialisiert hat.
Das Unternehmen entwickelt maßgeschneiderte Softwarelösungen für Hörgeräteakustiker und unterstützt bei der Digitalisierung und Optimierung von Geschäftsprozessen.
Die Audoora GmbH steht zudem im Zentrum des Netzwerk Hörgesundheit, einem Zusammenschluss von Unternehmen und Personen, die einen gesamtheitlichen Ansatz für den Erhalt und Wiederaufbau von Hörgesundheit verfolgen.

Die politische Situation innerhalb der Hörakustik-Branche, insbesondere bezogen auf das Produktdaten-Programm, war recht angespannt.
Die Hörakustik-Branche wird von einigen großen Herstellern und Einkaufsgemeinschaften dominiert, die mit ihren aktuellen Geschäftsmodellen sehr hohe Margen erzielen.
Ein Teil ihrer Strategie ist der streng überwachte und intransparente Umgang mit den Detaildaten zu Geräten und Zubehör.
Über diese Mittel unterbinden diese Unternehmen den Wettbewerb innerhalb der Branche und können so ein Quasi-Monopol aufrecht erhalten, über das sie hohe Preise verlangen können.\
Da das strategischen Kern-Ziel des Produktdaten-Programmes direkt mit dieser Strategie konkurriert, ergab sich die genannte angespannte politische Situation.

= Beschreibung der Management-Herausforderungen
== PM-Pflichtelemente

#pagebreak()
=== 04.03.02 Governance, Strukturen und Prozesse
==== 04.03.02.01 Die Grundlagen des Projektmanagements und deren Einführung kennen
#todo("Schreiben")
==== 04.03.02.02 Die Grundlagen des Programmmanagements und deren Einführung kennen
#todo("Schreiben")
==== 04.03.02.03 Die Grundlagen des Portfoliomanagements und deren Einführung kennen
#todo("Schreiben")
==== 04.03.02.04 Das Projekt mit den Supportfunktionen in Einklang bringen
#todo("Schreiben")
==== 04.03.02.05 Das Projekt mit den Entscheidungs- und Berichterstattungsstrukturen sowie den Qualitätsanforderungen der Organisation in Einklang bringen
#todo("Schreiben")
==== 04.03.02.06 Das Projekt mit den Prozessen und Funktionen des HR (Personalwesens) in Einklang bringen
#todo("Schreiben")
==== 04.03.02.07 Das Projekt mit den Finanz- und Controlling-Prozessen in Einklang bringen
#todo("Schreiben")

#pagebreak()
=== 04.03.03 Compliance, Standards und Regularien
==== 04.03.03.01 Die für das Projekt gültigen Rechtsvorschriften identifizieren und einhalten
#todo("Schreiben")
==== 04.03.03.02 Alle für das Projekt relevanten Vorschriften für Sicherheit, Gesundheit, und Umweltschutz (SGU) identifizieren und einhalten
#todo("Schreiben")
==== 04.03.03.03 Alle für das Projekt relevanten Verhaltensregeln und Berufsvorschriften identifizieren und einhalten
#todo("Schreiben")
==== 04.03.03.04 Für das Projekt relevante Prinzipien und Ziele der Nachhaltigkeit identifizieren und einhalten
#todo("Schreiben")
==== 04.03.03.05 Für das Projekt relevante fachliche Standards und Tools beurteilen, nutzen und weiterentwickeln
#todo("Schreiben")
==== 04.03.03.06 Die Projektmanagementkompetenz der Organisation beurteilen, vergleichen und verbessern
#todo("Schreiben")

#pagebreak()
=== 04.03.04 Macht und Interessen
In den folgenden 3 KCIs geht es jeweils um dasselbe Projekt, in dem wir eine Produktdatenschnittstelle zu dem neuen, in Entwicklung befindlichen, ERP-System _optadata focus_ aufgebaut haben.
Im Laufe des Projektes sind wir darauf aufmerksam geworden, dass die große Einkaufsgemeinschaft _MediTrend_ ebenfalls ihre Produktdatenkataloge anbieten und damit in direkte Konkurrenz mit uns treten will.
Zuständig hierfür war die _Sonimatik GmbH_, die de facto IT-Abteilung der _MediTrend_-Gruppe.

==== 04.03.04.01 Persönliche Ambitionen und Interessen Dritter und deren potenzielle Auswirkungen auf das Projekt beurteilen sowie diese Kenntnisse zum Nutzen des Projekts einsetzen
Der Geschäftsführer der _Sonimatik_, Eduard Breitenbach, war uns aus vorherigem Kontakt bereits bekannt.
Wir wussten, dass er der Produktdaten-Strategie der _MediTrend_ gegenüber nicht allzu positiv gestimmt war.
Die Priorisierung des Aufbaus eigener Produktkataloge bedeutet für ihn vor allem, dass er Mitarbeiter aus anderen Projekten rausziehen muss, damit diese sich mit einem für sie komplett neuen Thema befassen können.
Da es sich dabei um ein Thema handelte, in dem wir bereits einige Jahre an Expertise aufgebaut hatten, wollte er mit uns in Kooperation treten, statt das Thema selbst zu behandeln.

Aufgrund dieses Wissens haben wir beschlossen proaktiv auf Eduard zuzugehen und ihm eine Kooperation anzubieten.
Das Ziel hierbei war es, die _MediTrend_ dazu zu bewegen ihre konkurrierenden Kataloge gar nicht erst aufzubauen und stattdessen unsere Kataloge mit zu unterstützen (im Gegenzug für den Zugang zu unseren Katalogen, die sie ihren Mitgliedern anbieten können).
Im direkten Gespräch stimmte er uns zu, dass es für ihn wirtschaftlicher wäre, die Kooperation mit uns einzugehen.
Da es sich auf seiner Seite aber um ein Projekt drehte, das vom Vorstand der _MediTrend_ beauftragt wurde, hatte er nicht die notwendigen Befugnisse diese Entscheidung selbst zu treffen.

Schlussendlich kam keine Kooperation zustande, da der Vorstand der _MediTrend_ sich dagegen ausgesprochen hat (vermutlich aus strategischen Gründen).
Die genauen Gründe hierfür sind uns nicht bekannt.
Ich gehe aber davon aus, dass es sich um eine rein strategische Entscheidung handelte, da die _MediTrend_ sich in der Vergangenheit schon öfters gegen uns gestellt hat.

Aus dem positiven Austausch mit Eduard haben wir uns allerings mitgenommen, dass wir bei zukünftigen Vorhaben mit Bezug zur _MediTrend_ in ihm einen wichtigen Unterstützer haben.
Zudem haben wir unsere Vermutung festigen können, dass der Vorstand der _MediTrend_ uns als strategischen Gegner sieht und entsprechende Entscheidungen trifft (siehe nächstes KCI).

==== 04.03.04.02 Informellen Einfluss von Einzelpersonen und Personengruppen und deren potenzielle Auswirkungen auf das Projekt beurteilen sowie diese Kenntnisse zum Nutzen des Projekts verwenden
Wir hatten schon vor diesem Projekt aufgrund vergangener Erfahrungen die Vermutung, dass der Vorstand der _MediTrend eG_ uns als strategischen Gegner sieht.
Mit der im letzten KCI beschriebenen Erfahrung konnten wir diese Vermutung weiter bestätigen.

Teil der eingeführten Schnittstelle zum _optadata focus_ System waren Texte & Bilder, mit denen die Produktkataloge den Nutzern angezeigt werden.
Da die Nutzer sich zu Beginn für einen der Kataloge entscheiden müssen und eine spätere Änderung teuer wäre, war dieser erste Kontaktpunkt von erheblicher Bedeutung für die Verbreitung und Nutzung der Kataloge.

Sowohl wir, als auch die _MediTrend_, hatten Zugang zu dem Testsystem, in dem diese Bilder und Texte bereits eingepflegt wurden.
Wir sind davon ausgegangen, dass die _MediTrend_ sich anschauen würde, wie wir unsere Produktkataloge präsentieren, um ihre eigene Präsentation dagegen zu optimieren.
Um dem entgegen zu wirken, haben wir zwei Varianten der Bilder und Texte erstellt: Eine sehr schlichte und wenig-sagende Version, die wir ins Test-System haben einbauen lassen, sowie eine zweite, für den Launch gedachte, Version, die wir zurückgehalten haben.
Parallel haben wir mit _optadata_ geklärt, dass wir nachträglich noch Änderungen an den Bildern und Texten vornehmen können.

Der Plan war es, dass wir mit unserer mittelmäßigen Präsentation die _MediTrend_ dazu verleiten, selbst wenig Aufwand in ihre Präsentation zu stecken.
Kurz vor dem Launch von _optadata focus_ sollen dann die volle Version der Bilder und Texte eingefügt werden, um somit unsere Kataloge besser zu platzieren als die der _MediTrend_.

Dieser Plan ist insofern aufgegangen, dass die _MediTrend_ in der Tat wenig Aufwand in ihre eigene Präsentation gesteckt hat.
Da ich das Unternehmen vor dem Launch von _optadata focus_ verlassen habe, kann ich leider nichts weiter dazu sagen inwiefern der Rest der Strategie aufgegangen ist.

==== 04.03.04.03 Persönlichkeiten und Arbeitsstile Dritter beurteilen und zum Nutzen des Projekts einsetzen
Der Projektleiter des Gesamtprojektes auf Seiten der _optadata_, Thomas Schraga, war durchweg sehr bedacht darauf den Aufwand für sein Team so gering wie möglich zu halten.
Um das zu erreichen, war er auch bereit Entscheidungen über Details abzugeben.

Im Rahmen des Projektes gab es diverse Schnittstellen-Formate und -Prozesse zu definieren.
Aufgrund seiner Einstellung habe ich Thomas angeboten das Design dieser Schnittstellen vollständig auf unsere Seite des Projektes zu übernehmen.
Dadurch hatten wir die Möglichkeit die Schnittstelle für uns optimal zu designen und mussten an keiner Stelle Kompromisse im Design eingehen.

#pagebreak()
=== 04.04.05 Führung
==== 04.04.05.01 Initiative ergreifen und proaktiv mit Rat und Tat zur Seite stehen
#todo("Schreiben")
==== 04.04.05.02 Ownership übernehmen und Commitment zeigen
#todo("Schreiben")
==== 04.04.05.03 Durch Vorgeben der Richtung, durch Coaching und Mentoring die Arbeit von Einzelpersonen und Teams leiten und verbessern
#todo("Schreiben")
==== 04.04.05.04 Macht und Einfluss angemessen auf Dritte ausüben, um die Ziele zu erreichen
#todo("Schreiben")
==== 04.04.05.05 Entscheidungen treffen, durchsetzen und überprüfen
#todo("Schreiben")

#pagebreak()
=== 04.05.01 Projektdesign
==== 04.05.01.01 Erfolgskriterien anerkennen, priorisieren und überprüfen
#todo("Schreiben")
==== 04.05.01.02 Lessons Learned aus --und mit-- anderen Projekten überprüfen, anwenden und austauschen
#todo("Schreiben")
==== 04.05.01.03 Projektkomplexität und ihre Konsequenzen für den Projektmanagementansatz bestimmen
#todo("Schreiben")
==== 04.05.01.04 Generellen Projektmanagementansatz auswählen und anpassen
#todo("Schreiben")
==== 04.05.01.05 Konzept für die Projektdurchführung entwerfen, überwachen und anpassen
#todo("Schreiben")

#pagebreak()
=== 04.05.02 Anforderungen und Ziele
==== 04.05.02.01 Hierarchie der Projektziele definieren und entwickeln
#todo("Schreiben")
==== 04.05.02.02 Bedürfnisse und Anforderungen der Projekt-Stakeholder identifizieren und analysieren
#todo("Schreiben")
==== 04.05.02.03 Anforderungen und Abnahmekriterien priorisieren und darüber entscheiden
#todo("Schreiben")

#pagebreak()
=== 04.05.03 Leistungsumfang und Lieferobjekte
==== 04.05.03.01 Lieferobjekte definieren
#todo("Schreiben")
==== 04.05.03.02 Leistungsumfang strukturieren
#todo("Schreiben")
==== 04.05.03.03 Arbeitspakete definieren
#todo("Schreiben")
==== 04.05.03.04 Konfiguration des Leistungsumfangs erstellen und aufrechterhalten
#todo("Schreiben")

#pagebreak()
=== 04.05.04 Ablauf und Termine
==== 04.05.04.01 Aktivitäten definieren, die nötig sind, um das Projekt (ab)liefern zu können
#todo("Schreiben")
==== 04.05.04.02 Arbeitsaufwand und Dauer von Aktivitäten festlegen
#todo("Schreiben")
==== 04.05.04.03 Vorgehensweise für Termine und Phasen, ggf. Sprints festlegen
#todo("Schreiben")
==== 04.05.04.04 Abfolge der Projektaktivitäten bestimmen und einen Ablauf- und Terminplan erstellen
#todo("Schreiben")
==== 04.05.04.05 Fortschritt anhand des Terminplans überwachen und notwendige Anpassungen vornehmen
#todo("Schreiben")

#pagebreak()
=== 04.05.05 Organisation, Information und Dokumentation
==== 04.05.05.01 Bedürfnisse der Stakeholder bezüglich Information und Dokumentation beurteilen und bestimmen
#todo("Schreiben")
==== 04.05.05.02 Struktur, Rollen und Verantwortlichkeiten im Projekt definieren
#todo("Schreiben")
==== 04.05.05.03 Infrastruktur, Prozesse und Informationssysteme aufbauen
#todo("Schreiben")
==== 04.05.05.04 Organisation des Projekts implementieren, überwachen und anpassen
#todo("Schreiben")

#pagebreak()
=== 04.05.06 Qualität
==== 04.05.06.01 Qualitätsmanagementplan für das Projekt entwickeln, die Implementierung überwachen und gegebenenfalls überarbeiten
#todo("Schreiben")
==== 04.05.06.02 Projekt mit seinen Lieferobjekten überprüfen, um sicherzustellen, dass sie die Anforderungen des Qualitätsmanagementplans weiterhin erfüllen
#todo("Schreiben")
==== 04.05.06.03 Erreichung der Qualitätsziele des Projekts verifizieren und erforderliche korrektive und/oder präventive Maßnahmen empfehlen
#todo("Schreiben")
==== 04.05.06.04 Validierung von Projektergebnissen planen und organisieren
#todo("Schreiben")
==== 04.05.06.05 Qualität im Verlauf des Projekts sicherstellen
#todo("Schreiben")

#pagebreak()
=== 04.05.07 Kosten und Finanzierung
==== 04.05.07.01 Projektkosten abschätzen
#todo("Schreiben")
==== 04.05.07.02 Projektbudget erstellen
#todo("Schreiben")
==== 04.05.07.03 Projektfinanzierung sichern
#todo("Schreiben")
==== 04.05.07.04 Finanzmanagement- und Berichtssystem für das Projekt entwickeln, einrichten und aufrechterhalten
#todo("Schreiben")
==== 04.05.07.05 Finanzen überwachen, um Abweichungen vom Projektplan zu identifizieren und zu korrigieren
#todo("Schreiben")

#pagebreak()
=== 04.05.08 Ressourcen
==== 04.05.08.01 Strategische Ressourcenplanung entwickeln, um die Projektergebnisse liefern zu können
#todo("Schreiben")
==== 04.05.08.02 Qualität und Menge der benötigten Ressourcen definieren
#todo("Schreiben")
==== 04.05.08.03 Potenzielle Ressourcenquellen identifizieren und ihre Beschaffung verhandeln
#todo("Schreiben")
==== 04.05.08.04 Ressourcen gemäß dem festgelegten Bedarf zuweisen und verteilen
#todo("Schreiben")
==== 04.05.08.05 Ressourcenverbrauch evaluieren und erforderliche Korrekturmaßnahmen ergreifen
#todo("Schreiben")

#pagebreak()
=== 04.05.09 Beschaffung
==== 04.05.09.01 Beschaffungsbedarf, Optionen und Prozesse vereinbaren
#todo("Schreiben")
==== 04.05.09.02 Zur Evaluation und Auswahl von Lieferanten und Partnern beitragen
#todo("Schreiben")
==== 04.05.09.03 Zu Verhandlungen und Vereinbarungen von Vertragsbestimmungen beitragen, um diese in Einklang mit den Projektzielen zu bringen
#todo("Schreiben")
==== 04.05.09.04 Vertragsausführung überwachen, Probleme ansprechen und, falls notwendig, Entschädigungen verlangen
#todo("Schreiben")

#pagebreak()
=== 04.05.10 Planung und Steuerung
==== 04.05.10.01 Projekt starten, Projektmanagement-Plan entwickeln und Zustimmung einholen
#todo("Schreiben")
==== 04.05.10.02 Übergang in eine neue Projektphase einleiten und managen
#todo("Schreiben")
==== 04.05.10.03 Projektleistung mit dem Projektplan abgleichen und Korrekturmaßnahmen treffen
#todo("Schreiben")
==== 04.05.10.04 Bericht über den Projektfortschritt erstatten
#todo("Schreiben")
==== 04.05.10.05 Projektänderungen beurteilen, Zustimmung für diese einholen und sie implementieren
#todo("Schreiben")
==== 04.05.10.06 Eine Phase oder das Projekt abschließen und evaluieren
#todo("Schreiben")

#pagebreak()
=== 04.05.11 Chancen und Risiken
==== 04.05.11.01 Chancen- und Risikomanagementstruktur entwickeln und implementieren
#todo("Schreiben")
==== 04.05.11.02 Chancen und Risiken identifizieren
#todo("Schreiben")
==== 04.05.11.03 Wahrscheinlichkeit und Auswirkungen von Chancen und Risiken analysieren
#todo("Schreiben")
==== 04.05.11.04 Strategien auswählen und Maßnahmen implementieren, um Chancen und Risiken zu adressieren
#todo("Schreiben")
==== 04.05.11.05 Chancen, Risiken und implementierte Maßnahmen evaluieren und überwachen
#todo("Schreiben")

#pagebreak()
=== 04.05.12 Stakeholder
==== 04.05.12.01 Stakeholder identifizieren und ihre Interessen sowie ihren Einfluss analysieren
#todo("Schreiben")
==== 04.05.12.02 Stakeholder Strategie und einen Kommunikationsplan entwickeln und aufrechterhalten
#todo("Schreiben")
==== 04.05.12.03 Geschäftsführung, Auftraggeber und höheres Management einbinden, um Commitment zu erreichen und um Interessen und Erwartungen zu managen
#todo("Schreiben")
==== 04.05.12.04 Benutzer, Partner und Lieferanten und andere Stakeholder einbinden, um deren Kooperation und Commitment zu erreichen
#todo("Schreiben")
==== 04.05.12.05 Netzwerke und Allianzen aufbauen, aufrechterhalten und beenden
#todo("Schreiben")

#pagebreak()
== PM-Wahlelemente
=== 04.03.01 Strategie
==== 04.03.01.01 Das Projekt mit der Mission und der Vision der Organisation in Einklang bringen
#todo("Schreiben")
==== 04.03.01.02 Chancen identifizieren und ausschöpfen, die Strategie der Organisation zu beeinflussen
#todo("Schreiben")
==== 04.03.01.03 Rechtfertigung für das Projekt entwickeln und sicherstellen, dass die betriebswirtschaftlichen und/oder organisationalen Gründe, die zum Projekt geführt haben, weiterhin bestehen
#todo("Schreiben")
==== 04.03.01.04 Kritische Erfolgsfaktoren (KEF) bestimmen, beurteilen und überprüfen
#todo("Schreiben")
==== 04.03.01.05 Key Performance Indikatoren (KPI) bestimmen, beurteilen und überprüfen
#todo("Schreiben")

#pagebreak()
=== 04.03.05 Kultur und Werte
==== 04.03.05.01 Kultur und Werte der Gesellschaft und deren Auswirkungen auf das Projekt beurteilen
#todo("Schreiben")
==== 04.03.05.02 Das Projekt mit der formellen Kultur und den Werten der Organisation in Einklang bringen
#todo("Schreiben")
==== 04.03.05.03 Die informelle Kultur und Werte der Organisation und deren Auswirkungen auf das Projekt beurteilen
#todo("Schreiben")

#pagebreak()
=== 04.04.01 Selbstreflexion und Selbstmanagement
==== 04.04.01.01 Einfluss der eigenen Werte und persönlichen Erfahrungen auf die Arbeit identifizieren und reflektieren
#todo("Schreiben")
==== 04.04.01.02 Selbstvertrauen auf der Basis von persönlichen Stärken und Schwächen aufbauen
#todo("Schreiben")
==== 04.04.01.03 Persönliche Motivationen identifizieren und reflektieren, um persönliche Ziele zu setzen und darauf zu fokussieren
#todo("Schreiben")
==== 04.04.01.04 Eigene Arbeit abhängig von der Situation und den eigenen Ressourcen organisieren
#todo("Schreiben")
==== 04.04.01.05 Verantwortung für das persönliche Lernen und die persönliche Weiterentwicklung übernehmen
#todo("Schreiben")

#pagebreak()
=== 04.04.02 Persönliche Integrität und Verlässlichkeit
==== 04.04.02.01 Ethische Werte bei allen Entscheidungen und Handlungen anerkennen und anwenden
#todo("Schreiben")
==== 04.04.02.02 Nachhaltigkeit von Leistungen und Ergebnissen fördern
#todo("Schreiben")
==== 04.04.02.03 Verantwortung für die eigenen Entscheidungen und Handlungen übernehmen
#todo("Schreiben")
==== 04.04.02.04 Widerspruchsfrei handeln, Entscheidungen treffen und kommunizieren
#todo("Schreiben")
==== 04.04.02.05 Aufgaben sorgfältig erfüllen, um Vertrauen bei anderen zu schaffen
#todo("Schreiben")

#pagebreak()
=== 04.04.03 Persönliche Kommunikation
==== 04.04.03.01 Eindeutige und strukturierte Informationen an andere weitergeben und deren gleiches Verständnis sicherstellen
#todo("Schreiben")
==== 04.04.03.02 Offene Kommunikation ermöglichen und fördern
#todo("Schreiben")
==== 04.04.03.03 Kommunikationsarten und -kanäle auswählen, um die Bedürfnisse der Zielgruppe, der Situation und der Führungsebene zu erfüllen
#todo("Schreiben")
==== 04.04.03.04 Mit virtuellen Teams effektiv kommunizieren
#todo("Schreiben")
==== 04.04.03.05 Humor und Perspektivenwechsel angemessen verwenden
#todo("Schreiben")

#pagebreak()
=== 04.04.04 Beziehungen und Engagement
==== 04.04.04.01 Persönliche und berufliche Beziehungen aufbauen und pflegen
#todo("Schreiben")
==== 04.04.04.02 Soziale Netzwerke aufbauen, moderieren und an ihnen teilnehmen
#todo("Schreiben")
==== 04.04.04.03 Durch Zuhören, Verständnis und Unterstützung Empathie zeigen
#todo("Schreiben")
==== 04.04.04.04 Vertrauen und Respekt zeigen, indem andere ermutigt werden, ihre Meinungen und Bedenken zu äußern
#todo("Schreiben")
==== 04.04.04.05 Eigene Visionen und Ziele kommunizieren, um Engagement und Commitment Dritter zu erreichen
#todo("Schreiben")

#pagebreak()
=== 04.04.06 Teamwork
==== 04.04.06.01 Das Team zusammenstellen und entwickeln
#todo("Schreiben")
==== 04.04.06.02 Zusammenarbeit und Netzwerken zwischen Teammitgliedern fördern
#todo("Schreiben")
==== 04.04.06.03 Die Entwicklung des Teams und der Teammitglieder ermöglichen, unterstützen und überprüfen
#todo("Schreiben")
==== 04.04.06.04 Teams durch das Delegieren von Aufgaben und Verantwortlichkeiten stärken
#todo("Schreiben")
==== 04.04.06.05 Fehler erkennen, um das Lernen aus Fehlern zu ermöglichen
#todo("Schreiben")

#pagebreak()
=== 04.04.07 Konflikte und Krisen
==== 04.04.07.01 Konflikte und Krisen antizipieren und, wenn möglich, verhindern
#todo("Schreiben")
==== 04.04.07.02 Ursachen und Auswirkungen von Konflikten und Krisen analysieren und angemessene Reaktionen auswählen
#todo("Schreiben")
==== 04.04.07.03 Konflikte und Krisen und/oder deren Auswirkungen lösen bzw. in ihnen vermitteln
#todo("Schreiben")
==== 04.04.07.04 Lernergebnisse aus Konflikten und Krisen identifizieren und weitergeben, um die zukünftige Arbeit zu verbessern
#todo("Schreiben")

#pagebreak()
=== 04.04.08 Vielseitigkeit
==== 04.04.08.01 Ein offenes und kreatives Umfeld schaffen und unterstützen
#todo("Schreiben")
==== 04.04.08.02 Konzeptionelles Denken anwenden, um Situationen zu analysieren und Lösungsstrategien zu definieren
#todo("Schreiben")
==== 04.04.08.03 Analytische Techniken anwenden, um Situationen, Informationen und Trends zu analysieren
#todo("Schreiben")
==== 04.04.08.04 Kreative Techniken fördern und anwenden, um Alternativen und Lösungen zu finden
#todo("Schreiben")
==== 04.04.08.05 Ganzheitliche Sicht auf das Projekt und seinen Kontext fördern, um den Entscheidungsprozess zu verbessern
#todo("Schreiben")

#pagebreak()
=== 04.04.09 Verhandlungen
==== 04.04.09.01 Interessen aller Parteien, die an den Verhandlungen beteiligt sind, identifizieren und analysieren
#todo("Schreiben")
==== 04.04.09.02 Optionen und Alternativen entwickeln und evaluieren, die das Potenzial haben, die Bedürfnisse aller Beteiligten zu erfüllen
#todo("Schreiben")
==== 04.04.09.03 Verhandlungsstrategie definieren, die mit den eigenen Zielen übereinstimmt und für alle beteiligten Parteien akzeptabel ist
#todo("Schreiben")
==== 04.04.09.04 Einigungen mit anderen Parteien erzielen, die mit den eigenen Zielen übereinstimmen
#todo("Schreiben")
==== 04.04.09.05 Zusätzliche Verkaufs- und Akquisitionsmöglichkeiten entdecken und ausschöpfen
#todo("Schreiben")

#pagebreak()
=== 04.04.10 Ergebnisorientierung
==== 04.04.10.01 Alle Entscheidungen und Handlungen hinsichtlich ihrer Auswirkung auf den Projekterfolg und die Ziele der Organisation evaluieren
#todo("Schreiben")
==== 04.04.10.02 Bedürfnisse und Mittel aufeinander abstimmen, um Ergebnisse und Erfolge zu optimieren
#todo("Schreiben")
==== 04.04.10.03 Gesunde, sichere und produktive Arbeitsumgebung schaffen und diese aufrecht erhalten
#todo("Schreiben")
==== 04.04.10.04 Das Projekt, seine Prozesse und Ergebnisse unterstützen und diese 'verkaufen'
#todo("Schreiben")
==== 04.04.10.05 Ergebnisse liefern und Akzeptanz erhalten
#todo("Schreiben")

#pagebreak()
=== 04.05.13 Change und Transformation
==== 04.05.13.01 Adaptionsfähigkeit der Organisation(en) zu Veränderung beurteilen
==== 04.05.13.02 Veränderungsanforderungen und Transformationschancen identifizieren
==== 04.05.13.03 Veränderungs- oder Transformationsstrategie für das Projekt entwickeln
==== 04.05.13.04 Veränderungs- oder Transformationsmanagement implementieren

<main_numbering_end>
#set page(footer: page_footer(<appendix_numbering_end>), numbering: "i")
#counter(page).update(1)

#pagebreak()
= Eigenständigkeitserklärung
Ich, Mario Treiber, erkläre hiermit, den vorstehenden Report (ausnehmend dem seitens PM-ZERT vorgelegten formellen Grundaufbau der Arbeit) eigenständig und inhaltlich ohne Mitwirkung Dritter, insbesondere auch nicht mittels einer KI-Software, angefertigt zu haben.
Es ist mir bewusst, dass eine --auch nachträgliche-- Erkenntnis seitens PM-ZERT, nach welcher die vorstehende Erklärung nicht zutrifft, zur ersatzlosen Aberkennung des beantragten resp. bereits erteilten Zertifikates führen kann.
Ich bin mir weiterhin bewusst, dass der bewertende Assessor sich persönlich davon überzeugen muss, dass ich diese Arbeit selbst verfasst habe und dass ich verpflichtet bin, die mir gestellten Fragen in der Sache dienlicher Form zu beantworten.

#v(1cm)
#grid(
  align: horizon,
  columns: 10cm,
  rows: 0.6cm,
  [Elmenhorst, #report_date],
  grid.hline(),
  text(size: 9pt, "Ort, Datum, Unterschrift"),
)

#pagebreak()

= Abkürzungsverzeichnis
#show table.cell.where(y: 0): set text(weight: "bold")
#table(columns: (1fr, 3fr), stroke: none, table.header("Abkürzung", "Bedeutung"), ..abbr_entries)

= Glossar
#todo("Brauche ich eins?")

<appendix_numbering_end>
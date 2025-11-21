#import "../utils.typ": todo
#import "@preview/cheq:0.3.0": checklist
#show: checklist

#import "report_abbr.typ": abbr, abbr_entries
#import "report_glossary.typ": glossary, glossary_entries

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
  if it.level >= 4 {
    v(-10pt)
    line(length: 100%)
  }
}

#pagebreak()
#counter(page).update(1)

= Management-Zusammenfassung
In diesem Report gehe ich auf die verschiedenen Herausforderungen und Management-Situationen ein, die im Laufe des Produktdaten-Programms bei der Audoora GmbH aufgetreten sind.
Für das Produktdaten-Programms war ich vollständig verantwortlich, wobei die Planung und Überwachung von Zeit- und Budget-Zielen stets in direkter Zusammenarbeit mit der Geschäftsführung stattfand.

== Anmerkung zum Inhalt dieses Reports
Ich arbeite nicht mehr bei der Audoora GmbH und habe daher keinen Zugriff auf die entsprechenden Unterlagen.
Alle Inhalte in diesem Report sind nach besten Wissen und Gewissen aus meinem Gedächtnis heraus wiedergegeben.
Die im Anhang befindlichen Abbildungen und Diagramme sind teils Rekonstruktionen von tatsächlichen Unterlagen, die ich erstellt hatte, oder dienen einzig der visuellen Darstellungen von Informationen und Strukturen, auf die im Text Bzug genommen wird.

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
- _Nutzungs- & strategisches Ziel:_ Unsere Daten werden automatisch mit dem neuen ERP-System #glossary("optadata_focus") synchronisiert (um neue potentielle Kunden zu erreichen).

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
=== 04.03.02 Governance, Strukturen und Prozesse
==== *04.03.02.01* Die Grundlagen des Projektmanagements und deren Einführung kennen
#todo("Schreiben")
==== *04.03.02.02* Die Grundlagen des Programmmanagements und deren Einführung kennen
#todo("Schreiben")
==== *04.03.02.03* Die Grundlagen des Portfoliomanagements und deren Einführung kennen
#todo("Schreiben")
==== *04.03.02.04* Das Projekt mit den Supportfunktionen in Einklang bringen
#todo("Schreiben")
==== *04.03.02.05* Das Projekt mit den Entscheidungs- und Berichterstattungsstrukturen sowie den Qualitätsanforderungen der Organisation in Einklang bringen
#todo("Schreiben")
==== *04.03.02.06* Das Projekt mit den Prozessen und Funktionen des HR (Personalwesens) in Einklang bringen
#todo("Schreiben")
==== *04.03.02.07* Das Projekt mit den Finanz- und Controlling-Prozessen in Einklang bringen
#todo("Schreiben")

#pagebreak()
=== 04.03.03 Compliance, Standards und Regularien
==== *04.03.03.01* Die für das Projekt gültigen Rechtsvorschriften identifizieren und einhalten
#todo("Schreiben")
==== *04.03.03.02* Alle für das Projekt relevanten Vorschriften für Sicherheit, Gesundheit, und Umweltschutz (SGU) identifizieren und einhalten
#todo("Schreiben")
==== *04.03.03.03* Alle für das Projekt relevanten Verhaltensregeln und Berufsvorschriften identifizieren und einhalten
#todo("Schreiben")
==== *04.03.03.04* Für das Projekt relevante Prinzipien und Ziele der Nachhaltigkeit identifizieren und einhalten
#todo("Schreiben")
==== *04.03.03.05* Für das Projekt relevante fachliche Standards und Tools beurteilen, nutzen und weiterentwickeln
#todo("Schreiben")
==== *04.03.03.06* Die Projektmanagementkompetenz der Organisation beurteilen, vergleichen und verbessern
#todo("Schreiben")

#pagebreak()
=== 04.03.04 Macht und Interessen
In den folgenden 3 KCIs geht es jeweils um dasselbe Projekt, in dem wir eine Produktdatenschnittstelle zu dem neuen, in Entwicklung befindlichen, ERP-System #glossary("optadata_focus") aufgebaut haben.
Im Laufe des Projektes sind wir darauf aufmerksam geworden, dass die große Einkaufsgemeinschaft #glossary("meditrend") ebenfalls ihre Produktdatenkataloge anbieten und damit in direkte Konkurrenz mit uns treten will.
Zuständig hierfür war die #glossary("sonimatik"), die de facto IT-Abteilung der #glossary("meditrend")-Gruppe.

==== *04.03.04.01* Persönliche Ambitionen und Interessen Dritter und deren potenzielle Auswirkungen auf das Projekt beurteilen sowie diese Kenntnisse zum Nutzen des Projekts einsetzen
Der Geschäftsführer der #glossary("sonimatik"), Eduard Breitenbach, war uns aus vorherigem Kontakt bereits bekannt.
Wir wussten, dass er der Produktdaten-Strategie der #glossary("meditrend") gegenüber nicht allzu positiv gestimmt war.
Die Priorisierung des Aufbaus eigener Produktkataloge bedeutet für ihn vor allem, dass er Mitarbeiter aus anderen Projekten rausziehen muss, damit diese sich mit einem für sie komplett neuen Thema befassen können.
Da es sich dabei um ein Thema handelte, in dem wir bereits einige Jahre an Expertise aufgebaut hatten, wollte er mit uns in Kooperation treten, statt das Thema selbst zu behandeln.

Aufgrund dieses Wissens haben wir beschlossen proaktiv auf Eduard zuzugehen und ihm eine Kooperation anzubieten.
Das Ziel hierbei war es, die #glossary("meditrend") dazu zu bewegen ihre konkurrierenden Kataloge gar nicht erst aufzubauen und stattdessen unsere Kataloge mit zu unterstützen (im Gegenzug für den Zugang zu unseren Katalogen, die sie ihren Mitgliedern anbieten können).
Im direkten Gespräch stimmte er uns zu, dass es für ihn wirtschaftlicher wäre, die Kooperation mit uns einzugehen.
Da es sich auf seiner Seite aber um ein Projekt drehte, das vom Vorstand der #glossary("meditrend") beauftragt wurde, hatte er nicht die notwendigen Befugnisse diese Entscheidung selbst zu treffen.

Schlussendlich kam keine Kooperation zustande, da der Vorstand der #glossary("meditrend") sich dagegen ausgesprochen hat (vermutlich aus strategischen Gründen).
Die genauen Gründe hierfür sind uns nicht bekannt.
Ich gehe aber davon aus, dass es sich um eine rein strategische Entscheidung handelte, da die #glossary("meditrend") sich in der Vergangenheit schon öfters gegen uns gestellt hat.

Aus dem positiven Austausch mit Eduard haben wir uns allerings mitgenommen, dass wir bei zukünftigen Vorhaben mit Bezug zur #glossary("meditrend") in ihm einen wichtigen Unterstützer haben.
Zudem haben wir unsere Vermutung festigen können, dass der Vorstand der #glossary("meditrend") uns als strategischen Gegner sieht und entsprechende Entscheidungen trifft (siehe nächstes KCI).

==== *04.03.04.02* Informellen Einfluss von Einzelpersonen und Personengruppen und deren potenzielle Auswirkungen auf das Projekt beurteilen sowie diese Kenntnisse zum Nutzen des Projekts verwenden
Wir hatten schon vor diesem Projekt aufgrund vergangener Erfahrungen die Vermutung, dass der Vorstand der #glossary("meditrend") uns als strategischen Gegner sieht.
Mit der im letzten KCI beschriebenen Erfahrung konnten wir diese Vermutung weiter bestätigen.

Teil der eingeführten Schnittstelle zum #glossary("optadata_focus") System waren Texte & Bilder, mit denen die Produktkataloge den Nutzern angezeigt werden.
Da die Nutzer sich zu Beginn für einen der Kataloge entscheiden müssen und eine spätere Änderung teuer wäre, war dieser erste Kontaktpunkt von erheblicher Bedeutung für die Verbreitung und Nutzung der Kataloge.

Sowohl wir, als auch die #glossary("meditrend"), hatten Zugang zu dem Testsystem, in dem diese Bilder und Texte bereits eingepflegt wurden.
Wir sind davon ausgegangen, dass die #glossary("meditrend") sich anschauen würde, wie wir unsere Produktkataloge präsentieren, um ihre eigene Präsentation dagegen zu optimieren.
Um dem entgegen zu wirken, haben wir zwei Varianten der Bilder und Texte erstellt: Eine sehr schlichte und wenig-sagende Version, die wir ins Test-System haben einbauen lassen, sowie eine zweite, für den Launch gedachte, Version, die wir zurückgehalten haben.
Parallel haben wir mit #glossary("optadata") geklärt, dass wir nachträglich noch Änderungen an den Bildern und Texten vornehmen können.

Der Plan war es, dass wir mit unserer mittelmäßigen Präsentation die #glossary("meditrend") dazu verleiten, selbst wenig Aufwand in ihre Präsentation zu stecken.
Kurz vor dem Launch von #glossary("optadata_focus") sollen dann die volle Version der Bilder und Texte eingefügt werden, um somit unsere Kataloge besser zu platzieren als die der #glossary("meditrend").

Dieser Plan ist insofern aufgegangen, dass die #glossary("meditrend") in der Tat wenig Aufwand in ihre eigene Präsentation gesteckt hat.
Da ich das Unternehmen vor dem Launch von #glossary("optadata_focus") verlassen habe, kann ich leider nichts weiter dazu sagen inwiefern der Rest der Strategie aufgegangen ist.

==== *04.03.04.03* Persönlichkeiten und Arbeitsstile Dritter beurteilen und zum Nutzen des Projekts einsetzen
Der Projektleiter des Gesamtprojektes auf Seiten der #glossary("optadata"), Thomas Schraga, war durchweg sehr bedacht darauf den Aufwand für sein Team so gering wie möglich zu halten.
Um das zu erreichen, war er auch bereit Entscheidungen über Details abzugeben.

Im Rahmen des Projektes gab es diverse Schnittstellen-Formate und -Prozesse zu definieren.
Aufgrund seiner Einstellung habe ich Thomas angeboten das Design dieser Schnittstellen vollständig auf unsere Seite des Projektes zu übernehmen.
Dadurch hatten wir die Möglichkeit die Schnittstelle für uns optimal zu designen und mussten an keiner Stelle Kompromisse im Design eingehen.

#pagebreak()
=== 04.04.05 Führung
==== *04.04.05.01* Initiative ergreifen und proaktiv mit Rat und Tat zur Seite stehen
#todo("Schreiben")
==== *04.04.05.02* Ownership übernehmen und Commitment zeigen
#todo("Schreiben")
==== *04.04.05.03* Durch Vorgeben der Richtung, durch Coaching und Mentoring die Arbeit von Einzelpersonen und Teams leiten und verbessern
#todo("Schreiben")
==== *04.04.05.04* Macht und Einfluss angemessen auf Dritte ausüben, um die Ziele zu erreichen
#todo("Schreiben")
==== *04.04.05.05* Entscheidungen treffen, durchsetzen und überprüfen
#todo("Schreiben")

#pagebreak()
=== 04.05.01 Projektdesign
==== *04.05.01.01* Erfolgskriterien anerkennen, priorisieren und überprüfen
#todo("Schreiben")
==== *04.05.01.02* Lessons Learned aus --und mit-- anderen Projekten überprüfen, anwenden und austauschen
#todo("Schreiben")
==== *04.05.01.03* Projektkomplexität und ihre Konsequenzen für den Projektmanagementansatz bestimmen
#todo("Schreiben")
==== *04.05.01.04* Generellen Projektmanagementansatz auswählen und anpassen
#todo("Schreiben")
==== *04.05.01.05* Konzept für die Projektdurchführung entwerfen, überwachen und anpassen
#todo("Schreiben")

#pagebreak()
=== 04.05.02 Anforderungen und Ziele
In den folgenden KCIs geht es um ein Projekt, in dem wir in unserem System den Support für das Import-Format (#abbr("axc")) des weit verbreiteten ERP-Systems #glossary("amparex").

Folgendes fachliches Detail ist für die nachfolgend beschriebenen Situationen relevant:
Es gibt eine Kategorie von Hörgeräten, die als "#abbr("ric")-Geräte" bezeichnet werden.
Diese Geräte kommen immer in Kombination mit einem Empfänger, der ins Ohr eingesetzt wird,
zum Einsatz.
Das Hörgerät und die Empfänger werden dabei seperat verkauft, da sich diese Art von Hörgeräten mit verschiedenen Empfängern kombinieren lassen.
Jede Kombination hat dabei eine eigene #abbr("hmv")-Nummer, mit der die Gerätekombination bei den Krankenkassen abgerechnet wird.

==== *04.05.02.01* Hierarchie der Projektziele definieren und entwickeln
Oberstes Ziel des Projektes war es, den Import unserer Produktdatenkataloge in das #glossary("amparex") ERP-System zu ermöglichen.
Dabei war die Motivation dahinter, dass wir mehr Akustiker mit unseren Daten unterstützen können und somit mehr potentielle Partnerunternehmen für uns gewinnen können.
Daraus ergab sich das zweite Ziel, bei den erreichten Endanwendern eine hohe Zufriedenheit zu erzeugen.

Aus diesen beiden Zielen wurden weitere konkretere Ziele abgeleitet.
Dabei haben wir uns zunächst auf die Qualitätsziele konzentriert, da diese eines unserer Alleinstellungsmerkmale am Markt darstellen.
Die abgeleiteten Qualitätsziele umfassten Ziele wie:
- "Die Daten sind möglichst vollständig im #glossary("amparex")-System abgebildet"
- "Die Struktur der Produktdaten orientiert sich so nah wie möglich an unserer eigenen Datenstruktur"

Zusätzlich haben wir im Laufe des Brainstormings weitere Kann-Ziele festgehalten.
Um ein Beispiel hierfür zu nennen:
Wir haben überlegt den Prozess vollständig zu automatisieren, um den Akustikern damit die Möglichkeit zu geben, diese Import-Aufgabe komplett abgeben zu können.
Da dies jedoch aus unserer Sicht ein Bonus darstellte, haben wir das Ganze als optional eingestuft.

==== *04.05.02.02* Bedürfnisse und Anforderungen der Projekt-Stakeholder identifizieren und analysieren
Im Rahmen der oben beschriebenen Erarbeitung der Ziele habe ich Kontakt mit einigen Akustikern aufgenommen, die uns zuvor signalisiert hatten, dass sie Interesse an dem geplanten Import-Support haben.
In diesen Gesprächen haben wir systematisch durchleuchtet, wie genau die Akustiker mit den Produktdaten arbeiten und welche der verfügbaren Daten sie für besonders wichtig halten.
Mir wurde zudem schnell klar, dass das vorhandene technische Verständnis im Schnitt sehr gering war.
Die Bereitschaft sich intensiver mit so etwas wie einem Import-Prozess auseinanderzusetzen, habe ich dementsprechend als ebenso gering einstufen können, zumal sich die Akustiker logischerweise mehr mit ihren Kunden befassen wollen, als mit einem trockenen technischen Vorgang.

Aus diesen Interaktionen konnte ich einige Schwerpunkte identifizieren, die von besonderer Wichtigkeit waren, so z.B. die #abbr("hmv")-Nummern.
Auch habe ich das Ziel mit aufgenommen, den gesamten Import-Prozess so einfach und verständlich wie möglich zu gestalten.

Neben dieser Interaktion habe ich auch Kontakt zu #glossary("amparex") selbst aufgenommen, um herauszufinden inwiefern wir das oben beschriebene Kann-Ziel in die Tat umsetzen könnten.
Dabei habe ich in Erfahrung bringen können, dass #glossary("amparex") derzeit an einer neuen Version ihres Systems arbeitet und somit gänzlich kein Interesse besteht, die bestehende Version um eine Schnittstelle zu uns zu erweitern.
Das Kann-Ziel haben wir gemäß dieser Erkenntnis gestrichen und uns stattdessen auf die Erfüllung der Wünsche der Endanwendet konzentriert.

==== *04.05.02.03* Anforderungen und Abnahmekriterien priorisieren und darüber entscheiden
#abbr("ric")-Geräte sind typischerweise in verschiedenen Farbvarianten erhältlich.
Die zugehörigen Empfänger gibt es in unterschiedlichen Lautsprecher-Stärken.
Diese Varianten lassen sich alle beliebig miteinander kombinieren, wobei jede Kombination abhängig von der gewählten Empfänger-Variante eine eigene #abbr("hmv")-Nummer erhält.

In unserer eigenen Datenbank werden die Produkte wie oben beschrieben abgebildet, also als Hauptprodukte mit Untervarianten.
Die Kombinationen inkl. #abbr("hmv")-Nummern werden dabei mittels Verknüpfungen zwischen den Produktvarianten abgebildet.

Im Rahmen der Implementierung stellte sich heraus, dass es aufgrund technischer Einschränkung im #glossary("amparex")-System nicht möglich sein würde, dieses Datenmodell 1-zu-1 zu übernehmen.
Wir hatten nun die Wahl, entweder die Hierarchie von Produkten und Untervarianten exakt abzubilden (und dabei die Verknüpfungen zu verlieren), oder die Verknüpfungen zwischen den Produkten korrekt abzubilden, aber dafür jede Produktvariante als eigenes Produkt im System zu hinterlegen.

Im vorherigen Austausch mit einigen Endanwendern (s.o.) hatten wir identifiziert, dass die Verfügbarkeit und korrekte Zuordnung der #abbr("hmv")-Nummern von hoher Wichtigkeit sind.
Die hierarchische Struktur der Daten wurde mehr als Bonus gesehen.
Somit konnten wir hier sehr schnell die Zielsetzung priorisieren und haben die Lösung gewählt, bei der die Verknüpfungen zwischen Produkten importiert werden.

#pagebreak()
=== 04.05.03 Leistungsumfang und Lieferobjekte
Die folgenden KCIs werden im Kontext des Projektes beschrieben, in dem wir ein Quality Reporting System (#abbr("qrs")) für unsere Produktdatenbank aufgebaut haben.
Ziel des Projektes war es, dass wir Qualitätsmängel in den Daten zuverlässig erkennen und korrigieren können.

Es war recht früh klar, dass für die Erfüllung des Kernziels eine Erweiterung unseres Datenbank-Management-Systems notwendig sein würde.
In der Planung des Projektes haben wir per Brainstorming zunächst den Funktionsumfang der Erweiterung ausdefiniert.
Anschließend habe ich daraus die benötigten Systemmodule abgeleitet und den typischen Ablauf einer Qualitätsprüfung designed.
Aus diesem Design ergab sich schließlich die Stuktur der tatsächlichen Report-Spezifikationen, die die zu prüfenden Inhalte, sowie die Details der Reporting- & Korrektur-Vorgänge beinhalten.\
Das gesamte Design im Überblick ist nochmal in @qrs_design visuell dargestellt.

==== *04.05.03.01* Lieferobjekte definieren
Die Lieferobjekte, die letztlich von dem Projekt erzeugt wurden, ergaben sich aus dem oben beschriebenen Design.
Konkret waren die Lieferobjekte folgende:
- Das #abbr("qrs") Framework (zuständig für die gesamte Ausführung von #abbr("qrs")-Reports)
  - Das Datenbank-Prüf-Modul (zuständig für die Ausführung der Report-Prüfungs-Ablaufe)
  - Das Report-Protokoll-Modul (zuständig für die Erstellung der Report-Prüf-Protokolle)
  - Das Import-Modul (zuständig für die Durchführung von Report-Korrektur-Vorgängen)
- Mehrere #abbr("qrs")-Reports zu konkreten Qualitätskriterien
  - Überprüfung von Artikelnummern und #abbr("gtin")s
  - Überpüfung von Produktverknüpfungen und #abbr("hmv")-Nummern
- Dokumentation zur Verwendung des QRS für die Kollegen, die damit arbeiten sollten

==== *04.05.03.02* Leistungsumfang strukturieren
Der Leistungsumfang wurde in der oben bereits beschriebenen Form heruntergebrochen und strukturiert.
Weiterführende Unterteilung fand nur informell in mündlicher Form statt, wenn wir in unseren Daily-Meetings über das Projekt gesprochen haben, und wurde nicht verschriftlicht.

==== *04.05.03.03* Arbeitspakete definieren
Da das Projekt, wie alle Projekte bei der Audoora GmbH, in einem hybriden Format durchgeführt wurden, wurden aus den oben gelisteten Lieferobjekte erst im Laufe des Projektes konkretere Arbeitspakete definiert.
Dazu habe ich vor Beginn der Bearbeitung eines Lieferobjektes die konkreten Anforderungen und Schnittstellen aufgelistet und daraus eine vorläufige Code-Struktur abgeleitet.
Anhand dieser Code-Struktur ergaben sich dann automatisch konkrete Arbeitspakete für die Umsetzung der einzelnen Code-Komponenten.

==== *04.05.03.04* Konfiguration des Leistungsumfangs erstellen und aufrechterhalten
Über die Laufzeit des Projektes wurde der Fortschritt an den Lieferobjekten gemessen.
Da die Entwicklung des #abbr("qrs")-Frameworks und der #abbr("qrs")-Reports parallel stattfand, wurden diese nochmals unterteilt in die Phasen "Implementation", "Local Tests" und "Deployed Tests".
Der Fortschritt wurde dann zusätzlich an dem Abschluss dieser Phasen festgemacht, um ein feineres Bild zu erzeugen.
Wir haben uns explizit dagegen entschieden den Fortschritt anhand einzelner Arbeitspakete zu messen, da diese im Rahmen unserer hybriden Arbeitsweise sehr dynamisch festgelegt und bearbeitet wurden.

#pagebreak()
=== 04.05.04 Ablauf und Termine
==== *04.05.04.01* Aktivitäten definieren, die nötig sind, um das Projekt (ab)liefern zu können
Für das Projekt, bei dem wir die Schnittstelle zu #glossary("optadata_focus") gebaut haben, haben ich für die Kalkulation des Angebotspreises, sowie die spätere Planung und Überwachung der Umsetzung, einen groben Plan der notwendigen Aufgaben aufgestellt (siehe @gateway_tasks).
Dabei habe ich zwischen den verschiedenen Bereichen unterschieden, in denen die Umsetzung stattfinden muss:
- Backend API (gelb): _Änderungen an unserer bestehenden Produktdatenverwaltung_
- Gateway (extern blau, intern grün): _Aufbau eines Gateway-Servers, über den die Verbindung zu unserer Produktdatenverwaltung an außenstehende Dienste angebunden werden kann_
- optadata focus (lila): _Änderungen, die innerhalb des #glossary("optadata_focus") Systems für die Integration notwendig sind_
- Admin interface (orange): _Aufbau einer internen Verwaltungsansicht in unserer bestehenden Admin-Console_
- Integration Test (rot): _Abschließender Test des gesamten Workflows als Einheit (die einzelnen Komponenten wurden jeweils als Teil des entsprechenden Arbeitspaketes getestet)_

==== *04.05.04.02* Arbeitsaufwand und Dauer von Aktivitäten festlegen
Der Arbeitsaufwand für die einzelnen Pakete wurde nicht näher eingeschätzt.
Mein Ansatz war in umgekehrter Richtung:
Arbeitspakete wurden so definiert, dass ihre Umsetzung jeweils maximal 3 Arbeitstage in Anspruch nimmt.

Einzige Ausnahme hierfür sind die #glossary("optadata_focus") Arbeitspakete, deren Umsetzung in der Hand unseres Kunden #glossary("optadata") lag.
Der Aufwand wurde für diese von uns nicht eingeschätzt.
Stattdessen haben wir uns mit #glossary("optadata") auf eine Deadline geeinigt, zu der die Pakete fertig sein müssen.

==== *04.05.04.03* Vorgehensweise für Termine und Phasen, ggf. Sprints festlegen
Das Projekt wurde in 3 Phasen bearbeitet:
- Spezifikationsphase: _Festlegung der Gateway-Endpoint Details_
- Aufbau des Gateways: _Bereitstellung des Gateway-Servers mit den Gateway-Endpoints_
- Testing & Fine-Tuning: _Integrations-Test des vollen Schnittstellenprozesses_
Zu jeder Phase wurde mit der #glossary("optadata") ein Meilenstein vereinbart, der von beiden Seiten einzuhalten war.

==== *04.05.04.04* Abfolge der Projektaktivitäten bestimmen und einen Ablauf- und Terminplan erstellen
Die Reihenfolge, vorgegeben durch die Abhängigkeiten der Pakete untereinander, wurde direkt zusammen mit der Definition der Arbeitspakete festgehalten und in dieselbe Darstellung (@gateway_tasks) mit eingebaut.
Die Arbeitspakete wurden in der Reihenfolge ihrer Abhängigkeiten abgearbeitet.
Ein konkreter Terminplan wurde nicht erstellt, da die Termine der Meilensteine mehr als genug Puffer für die Umsetzung belassen haben, dass wir eine engere Kontrolle nicht für notwendig erachtet haben.

==== *04.05.04.05* Fortschritt anhand des Terminplans überwachen und notwendige Anpassungen vornehmen
Der Fortschritt im Projekt wurde direkt anhand der Arbeitspakete ermittelt.
Zum Abschluss eines Arbeitspaketes habe ich überprüft, ob die verbleibende Zeit bis zum entsprechenden Meilenstein noch ausreicht, um die notwendigen Arbeitspakete abzuschließen (ausgehend von der Plandauer von 3 Tagen pro Paket).
Da dies zu jedem Zeitpunkt der Fall war, waren keine Anpassungen notwendig, um die Meilensteine einzuhalten.

#pagebreak()
=== 04.05.05 Organisation, Information und Dokumentation
==== *04.05.05.01* Bedürfnisse der Stakeholder bezüglich Information und Dokumentation beurteilen und bestimmen
Primärer Stakeholder für das gesamte Programm war unsere Geschäftsführung, mit der ich eng zusammengearbeitet habe, um das Ganze auf die Beine zu stellen.
Die Geschäftsführung wollte dabei möglichst wenig in den Details involviert sein, hatte aber dennoch ein hohes Interesse am Status der verschiedenen Projekte.
Aus diesem Grund haben wir uns zu Beginn zusammengesetzt und ausdefiniert, dass ich im bereits üblichen täglichen Meeting über akute Probleme oder Hindernisse berichte und alles weitere in regelmäßigen Meetings alle 2 bis 4 Wochen besprochen wird.
Die konkreten Arbeitspakete und ihren Fortschritt habe ich über #glossary("notion") getracked, dieselbe Managementplattform die wir bereits in allen anderen Projekten verwendet haben.

==== *04.05.05.02* Struktur, Rollen und Verantwortlichkeiten im Projekt definieren
Von der Geschäftsführung wurde mir die Gesamtverantwortung für den gesamten Bereich "Produktdaten" übertragen.
Allgemein sind wir im Unternehmen Aufgaben sehr oft kollaborativ angegangen, d.h. Verantwortung für Aufgaben wurde nicht auf Einzelpersonen übertragen, sondern auf mehrere Personen zusammen (in den allermeisten Fällen Personenpaare).
Da sich dieser Ansatz in der Vergangenheit bewährt hatte, haben wir entschieden für das Programm nichts Neues aufzusetzen, sofern sich nicht ein konkreter Bedarf auszeichnet.
Ich war zwar für die Umsetzung der Leistungen in den mir übertragenen Projekten alleine verantwortlich, die Planung der Leistungen, sowie die Zeit- und Budget-Ziele, wurden jedoch in gewohnter Manier kollaborativ verantwortet (in diesem Fall zusammen mit einem der Geschäftsführer).

==== *04.05.05.03* Infrastruktur, Prozesse und Informationssysteme aufbauen
Projekte wurden allgemein in #glossary("notion") geplant und überwacht.
Dabei wurde sehr klar zwischen internen und externen Projekten unterschieden.
Für externe Projekte, also solche, die einen Kunden haben, dem das Projekt in Rechnung gestellt wird, wurde je ein eigener Bereich in #glossary("notion") angelegt.
Für diese Bereiche, sowie das gesamte Dokumentations- und Berichtswesen, gab es fertige Templates, die für jedes Projekt zum Einsatz kamen.
Diese Templates wurden für externe Projekte unter meiner Verwantwortung ohne Veränderung übernommen.

Für interne Projekte wurden keine eigenen Bereiche angelegt.
Stattdessen wurden diese gesammelt in einem Bereich verwaltet, in dem unserer Geschäftsführung auch ihre strategische Planung vornahm.
Die einzelnen Arbeitspakete wurden pro Mitarbeiter in einem allgemeinen Kanban-Board verwaltet.
Für die internen Projekte, die ich verantwortet habe, habe ich selbstständig eigene Bereiche angelegt, um dort vor allem die Dokumentation und Hierarchie der Arbeitspakete zu verwalten.
Die Arbeitspakete selbst wurden weiterhin im allgemeinen Kanban-Board gepflegt, um den bestehenden (stress-getesteten) Prozess so wenig wie möglich anzupassen.

==== *04.05.05.04* Organisation des Projekts implementieren, überwachen und anpassen
In regelmäßigen Meetings (alle 2-4 Wochen) zwischen der Geschäftsführung und mir, haben wir unter anderem meine Arbeitsweise und die allgemeine organisatorische Struktur der Projekte unter meiner Verantwortung näher beleuchtet.
Probleme oder Risiken, die dabei (oder zuvor im Verlaufe der Projekte) aufgefallen sind, wurden im Gespräch näher erörtert und daraus Maßnahmen abgeleitet.

Beispielsweise kam an einem Punkt auf, dass ich die Geschäftsführung nicht hinreichend über den Status der Projekte informiert habe.
Dadurch entstand bei der Geschäftsführung der Eindruck, dass es in den Projekten nicht voran gehen würde.
Nachdem wir, wie oben beschrieben, das Problem in einem unserer Meetings unter die Lupe genommen hatten, konnten wir identifizieren, dass das Problem in meiner Dokumentation der Fortschrittskontrolle lag.
Konkreter habe ich Fortschritte innerhalb der Projekte zwar sinnvoll beurteilt, aber aufgrund der Art, wie ich die Arbeitspakete in #glossary("notion") hinterlegt habe, waren diese nicht klar sichtbar.
Ich haben daraufhin weitere Metadaten an alle Arbeitspakete gehängt.
Über diese konnte die Geschäftsführung dann die Fortschritte klar nachvollziehen.

#pagebreak()
=== 04.05.06 Qualität
==== *04.05.06.01* Qualitätsmanagementplan für das Projekt entwickeln, die Implementierung überwachen und gegebenenfalls überarbeiten
#todo("Schreiben")
==== *04.05.06.02* Projekt mit seinen Lieferobjekten überprüfen, um sicherzustellen, dass sie die Anforderungen des Qualitätsmanagementplans weiterhin erfüllen
#todo("Schreiben")
==== *04.05.06.03* Erreichung der Qualitätsziele des Projekts verifizieren und erforderliche korrektive und/oder präventive Maßnahmen empfehlen
#todo("Schreiben")
==== *04.05.06.04* Validierung von Projektergebnissen planen und organisieren
#todo("Schreiben")
==== *04.05.06.05* Qualität im Verlauf des Projekts sicherstellen
#todo("Schreiben")

#pagebreak()
=== 04.05.07 Kosten und Finanzierung
==== *04.05.07.01* Projektkosten abschätzen
#todo("Schreiben")
==== *04.05.07.02* Projektbudget erstellen
#todo("Schreiben")
==== *04.05.07.03* Projektfinanzierung sichern
#todo("Schreiben")
==== *04.05.07.04* Finanzmanagement- und Berichtssystem für das Projekt entwickeln, einrichten und aufrechterhalten
#todo("Schreiben")
==== *04.05.07.05* Finanzen überwachen, um Abweichungen vom Projektplan zu identifizieren und zu korrigieren
#todo("Schreiben")

#pagebreak()
=== 04.05.08 Ressourcen
==== *04.05.08.01* Strategische Ressourcenplanung entwickeln, um die Projektergebnisse liefern zu können
#todo("Schreiben")
==== *04.05.08.02* Qualität und Menge der benötigten Ressourcen definieren
#todo("Schreiben")
==== *04.05.08.03* Potenzielle Ressourcenquellen identifizieren und ihre Beschaffung verhandeln
#todo("Schreiben")
==== *04.05.08.04* Ressourcen gemäß dem festgelegten Bedarf zuweisen und verteilen
#todo("Schreiben")
==== *04.05.08.05* Ressourcenverbrauch evaluieren und erforderliche Korrekturmaßnahmen ergreifen
#todo("Schreiben")

#pagebreak()
=== 04.05.09 Beschaffung
==== *04.05.09.01* Beschaffungsbedarf, Optionen und Prozesse vereinbaren
#todo("Schreiben")
==== *04.05.09.02* Zur Evaluation und Auswahl von Lieferanten und Partnern beitragen
#todo("Schreiben")
==== *04.05.09.03* Zu Verhandlungen und Vereinbarungen von Vertragsbestimmungen beitragen, um diese in Einklang mit den Projektzielen zu bringen
#todo("Schreiben")
==== *04.05.09.04* Vertragsausführung überwachen, Probleme ansprechen und, falls notwendig, Entschädigungen verlangen
#todo("Schreiben")

#pagebreak()
=== 04.05.10 Planung und Steuerung
==== *04.05.10.01* Projekt starten, Projektmanagement-Plan entwickeln und Zustimmung einholen
#todo("Schreiben")
==== *04.05.10.02* Übergang in eine neue Projektphase einleiten und managen
#todo("Schreiben")
==== *04.05.10.03* Projektleistung mit dem Projektplan abgleichen und Korrekturmaßnahmen treffen
#todo("Schreiben")
==== *04.05.10.04* Bericht über den Projektfortschritt erstatten
#todo("Schreiben")
==== *04.05.10.05* Projektänderungen beurteilen, Zustimmung für diese einholen und sie implementieren
#todo("Schreiben")
==== *04.05.10.06* Eine Phase oder das Projekt abschließen und evaluieren
#todo("Schreiben")

#pagebreak()
=== 04.05.11 Chancen und Risiken
==== *04.05.11.01* Chancen- und Risikomanagementstruktur entwickeln und implementieren
#todo("Schreiben")
==== *04.05.11.02* Chancen und Risiken identifizieren
#todo("Schreiben")
==== *04.05.11.03* Wahrscheinlichkeit und Auswirkungen von Chancen und Risiken analysieren
#todo("Schreiben")
==== *04.05.11.04* Strategien auswählen und Maßnahmen implementieren, um Chancen und Risiken zu adressieren
#todo("Schreiben")
==== *04.05.11.05* Chancen, Risiken und implementierte Maßnahmen evaluieren und überwachen
#todo("Schreiben")

#pagebreak()
=== 04.05.12 Stakeholder
==== *04.05.12.01* Stakeholder identifizieren und ihre Interessen sowie ihren Einfluss analysieren
#todo("Schreiben")
==== *04.05.12.02* Stakeholder Strategie und einen Kommunikationsplan entwickeln und aufrechterhalten
#todo("Schreiben")
==== *04.05.12.03* Geschäftsführung, Auftraggeber und höheres Management einbinden, um Commitment zu erreichen und um Interessen und Erwartungen zu managen
#todo("Schreiben")
==== *04.05.12.04* Benutzer, Partner und Lieferanten und andere Stakeholder einbinden, um deren Kooperation und Commitment zu erreichen
#todo("Schreiben")
==== *04.05.12.05* Netzwerke und Allianzen aufbauen, aufrechterhalten und beenden
#todo("Schreiben")

//
//
//
//

#pagebreak()
== PM-Wahlelemente
=== 04.03.01 Strategie
==== *04.03.01.01* Das Projekt mit der Mission und der Vision der Organisation in Einklang bringen
#todo("Schreiben")
==== *04.03.01.02* Chancen identifizieren und ausschöpfen, die Strategie der Organisation zu beeinflussen
#todo("Schreiben")
==== *04.03.01.03* Rechtfertigung für das Projekt entwickeln und sicherstellen, dass die betriebswirtschaftlichen und/oder organisationalen Gründe, die zum Projekt geführt haben, weiterhin bestehen
#todo("Schreiben")
==== *04.03.01.04* Kritische Erfolgsfaktoren (KEF) bestimmen, beurteilen und überprüfen
#todo("Schreiben")
==== *04.03.01.05* Key Performance Indikatoren (KPI) bestimmen, beurteilen und überprüfen
#todo("Schreiben")

#pagebreak()
=== 04.03.05 Kultur und Werte
==== *04.03.05.01* Kultur und Werte der Gesellschaft und deren Auswirkungen auf das Projekt beurteilen
#todo("Schreiben")
==== *04.03.05.02* Das Projekt mit der formellen Kultur und den Werten der Organisation in Einklang bringen
#todo("Schreiben")
==== *04.03.05.03* Die informelle Kultur und Werte der Organisation und deren Auswirkungen auf das Projekt beurteilen
#todo("Schreiben")

#pagebreak()
=== 04.04.01 Selbstreflexion und Selbstmanagement
==== *04.04.01.01* Einfluss der eigenen Werte und persönlichen Erfahrungen auf die Arbeit identifizieren und reflektieren
#todo("Schreiben")
==== *04.04.01.02* Selbstvertrauen auf der Basis von persönlichen Stärken und Schwächen aufbauen
#todo("Schreiben")
==== *04.04.01.03* Persönliche Motivationen identifizieren und reflektieren, um persönliche Ziele zu setzen und darauf zu fokussieren
#todo("Schreiben")
==== *04.04.01.04* Eigene Arbeit abhängig von der Situation und den eigenen Ressourcen organisieren
#todo("Schreiben")
==== *04.04.01.05* Verantwortung für das persönliche Lernen und die persönliche Weiterentwicklung übernehmen
#todo("Schreiben")

#pagebreak()
=== 04.04.02 Persönliche Integrität und Verlässlichkeit
==== *04.04.02.01* Ethische Werte bei allen Entscheidungen und Handlungen anerkennen und anwenden
#todo("Schreiben")
==== *04.04.02.02* Nachhaltigkeit von Leistungen und Ergebnissen fördern
#todo("Schreiben")
==== *04.04.02.03* Verantwortung für die eigenen Entscheidungen und Handlungen übernehmen
#todo("Schreiben")
==== *04.04.02.04* Widerspruchsfrei handeln, Entscheidungen treffen und kommunizieren
#todo("Schreiben")
==== *04.04.02.05* Aufgaben sorgfältig erfüllen, um Vertrauen bei anderen zu schaffen
#todo("Schreiben")

#pagebreak()
=== 04.04.03 Persönliche Kommunikation
==== *04.04.03.01* Eindeutige und strukturierte Informationen an andere weitergeben und deren gleiches Verständnis sicherstellen
#todo("Schreiben")
==== *04.04.03.02* Offene Kommunikation ermöglichen und fördern
#todo("Schreiben")
==== *04.04.03.03* Kommunikationsarten und -kanäle auswählen, um die Bedürfnisse der Zielgruppe, der Situation und der Führungsebene zu erfüllen
#todo("Schreiben")
==== *04.04.03.04* Mit virtuellen Teams effektiv kommunizieren
#todo("Schreiben")
==== *04.04.03.05* Humor und Perspektivenwechsel angemessen verwenden
#todo("Schreiben")

#pagebreak()
=== 04.04.04 Beziehungen und Engagement
==== *04.04.04.01* Persönliche und berufliche Beziehungen aufbauen und pflegen
#todo("Schreiben")
==== *04.04.04.02* Soziale Netzwerke aufbauen, moderieren und an ihnen teilnehmen
#todo("Schreiben")
==== *04.04.04.03* Durch Zuhören, Verständnis und Unterstützung Empathie zeigen
#todo("Schreiben")
==== *04.04.04.04* Vertrauen und Respekt zeigen, indem andere ermutigt werden, ihre Meinungen und Bedenken zu äußern
#todo("Schreiben")
==== *04.04.04.05* Eigene Visionen und Ziele kommunizieren, um Engagement und Commitment Dritter zu erreichen
#todo("Schreiben")

#pagebreak()
=== 04.04.06 Teamwork
==== *04.04.06.01* Das Team zusammenstellen und entwickeln
#todo("Schreiben")
==== *04.04.06.02* Zusammenarbeit und Netzwerken zwischen Teammitgliedern fördern
#todo("Schreiben")
==== *04.04.06.03* Die Entwicklung des Teams und der Teammitglieder ermöglichen, unterstützen und überprüfen
#todo("Schreiben")
==== *04.04.06.04* Teams durch das Delegieren von Aufgaben und Verantwortlichkeiten stärken
#todo("Schreiben")
==== *04.04.06.05* Fehler erkennen, um das Lernen aus Fehlern zu ermöglichen
#todo("Schreiben")

#pagebreak()
=== 04.04.07 Konflikte und Krisen
==== *04.04.07.01* Konflikte und Krisen antizipieren und, wenn möglich, verhindern
#todo("Schreiben")
==== *04.04.07.02* Ursachen und Auswirkungen von Konflikten und Krisen analysieren und angemessene Reaktionen auswählen
#todo("Schreiben")
==== *04.04.07.03* Konflikte und Krisen und/oder deren Auswirkungen lösen bzw. in ihnen vermitteln
#todo("Schreiben")
==== *04.04.07.04* Lernergebnisse aus Konflikten und Krisen identifizieren und weitergeben, um die zukünftige Arbeit zu verbessern
#todo("Schreiben")

#pagebreak()
=== 04.04.08 Vielseitigkeit
==== *04.04.08.01* Ein offenes und kreatives Umfeld schaffen und unterstützen
#todo("Schreiben")
==== *04.04.08.02* Konzeptionelles Denken anwenden, um Situationen zu analysieren und Lösungsstrategien zu definieren
#todo("Schreiben")
==== *04.04.08.03* Analytische Techniken anwenden, um Situationen, Informationen und Trends zu analysieren
#todo("Schreiben")
==== *04.04.08.04* Kreative Techniken fördern und anwenden, um Alternativen und Lösungen zu finden
#todo("Schreiben")
==== *04.04.08.05* Ganzheitliche Sicht auf das Projekt und seinen Kontext fördern, um den Entscheidungsprozess zu verbessern
#todo("Schreiben")

#pagebreak()
=== 04.04.09 Verhandlungen
==== *04.04.09.01* Interessen aller Parteien, die an den Verhandlungen beteiligt sind, identifizieren und analysieren
#todo("Schreiben")
==== *04.04.09.02* Optionen und Alternativen entwickeln und evaluieren, die das Potenzial haben, die Bedürfnisse aller Beteiligten zu erfüllen
#todo("Schreiben")
==== *04.04.09.03* Verhandlungsstrategie definieren, die mit den eigenen Zielen übereinstimmt und für alle beteiligten Parteien akzeptabel ist
#todo("Schreiben")
==== *04.04.09.04* Einigungen mit anderen Parteien erzielen, die mit den eigenen Zielen übereinstimmen
#todo("Schreiben")
==== *04.04.09.05* Zusätzliche Verkaufs- und Akquisitionsmöglichkeiten entdecken und ausschöpfen
#todo("Schreiben")

#pagebreak()
=== 04.04.10 Ergebnisorientierung
==== *04.04.10.01* Alle Entscheidungen und Handlungen hinsichtlich ihrer Auswirkung auf den Projekterfolg und die Ziele der Organisation evaluieren
#todo("Schreiben")
==== *04.04.10.02* Bedürfnisse und Mittel aufeinander abstimmen, um Ergebnisse und Erfolge zu optimieren
#todo("Schreiben")
==== *04.04.10.03* Gesunde, sichere und produktive Arbeitsumgebung schaffen und diese aufrecht erhalten
#todo("Schreiben")
==== *04.04.10.04* Das Projekt, seine Prozesse und Ergebnisse unterstützen und diese 'verkaufen'
#todo("Schreiben")
==== *04.04.10.05* Ergebnisse liefern und Akzeptanz erhalten
#todo("Schreiben")

#pagebreak()
=== 04.05.13 Change und Transformation
==== *04.05.13.01* Adaptionsfähigkeit der Organisation(en) zu Veränderung beurteilen
==== *04.05.13.02* Veränderungsanforderungen und Transformationschancen identifizieren
==== *04.05.13.03* Veränderungs- oder Transformationsstrategie für das Projekt entwickeln
==== *04.05.13.04* Veränderungs- oder Transformationsmanagement implementieren

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

#show table.cell.where(y: 0): set text(weight: "bold")
= Abkürzungsverzeichnis
#table(columns: (1fr, 3fr), stroke: none, table.header("Abkürzung", "Bedeutung"), ..abbr_entries)

= Glossar
#table(
  columns: (1fr, 3fr),
  stroke: none,
  table.header("Begriff", "Erläuterung"),
  ..glossary_entries,
)

= Anhang
#todo("Graphik nochmal als Vektor-Graphik bauen")
#figure(caption: "Design des QRS im Überblick", image("QRS_design.pdf"))<qrs_design>

#figure(caption: "", image("optadata_gateway_tasks.svg"))<gateway_tasks>

#[]<appendix_numbering_end>
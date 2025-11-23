#import "../utils.typ": todo
#import "@preview/cheq:0.3.0": checklist
#show: checklist

#let TODO = text(fill: red, weight: "bold", "TODO")

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
=== #TODO 04.03.02 Governance, Strukturen und Prozesse
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
=== #TODO 04.03.03 Compliance, Standards und Regularien
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
Im Rahmen des #glossary("optadata_focus") Projektes hatten wir unter anderem Kontakt mit der Einkaufsgemeinschaft #glossary("meditrend"), die ebenfalls ihre Produktdatenkataloge im neuen ERP-System anbieten und damit in direkte Konkurrenz mit uns treten wollten.

==== *04.03.04.01* Persönliche Ambitionen und Interessen Dritter und deren potenzielle Auswirkungen auf das Projekt beurteilen sowie diese Kenntnisse zum Nutzen des Projekts einsetzen
Der Projektleiter seitens der #glossary("optadata"), Thomas Schraga, war durchweg mit viel Energie bemüht darum, das Projekt voranzubringen. Er hat zudem selbst aktiv daran gearbeitet das Projekt mit "Bonus-Features" möglichst gut dastehen zu lassen.

Die persönlichen Ambitionen und Interessen waren herauszufinden und zu berurteilen.

In meinen regelmäßigen Update-Meetings mit Thomas habe ich neben den Themen, für die wir zuständig waren, mit ihm auch über das gesamte Projekt gesprochen.
Mein Ziel war es dabei sowohl seine persönlichen Beweggründe herauszufinden, als auch nach weiteren Themen zu suchen, bei denen wir unterstützen können.
Dabei konnte ich herausfinden, dass die Abteilung, die er anleitet, erst vor kurzem aufgestellt wurde, um das #glossary("optadata_focus") Projekt umzusetzen.
Da in dieser Abteilung langfristig mehrere Entwicklungsbereiche zusammengeführt werden sollen, ist das Projekt quasi der Test, ob die Abteilung in ihrer jetzigen Form effektiv arbeiten kann.
Wenn das Projekt ein Erfolg wird, dann bleibt Thomas in seiner Position bestehen und fördert damit seine eigene Karriere.

Aus den Erkenntnissen aus dem persönlichen Austausch konnte ich folgern, dass Thomas ein sowohl organisationales als auch persönliches Interesse am Projekterfolg hat und auf seine Unterstützung gezählt werden kann.

==== *04.03.04.02* Informellen Einfluss von Einzelpersonen und Personengruppen und deren potenzielle Auswirkungen auf das Projekt beurteilen sowie diese Kenntnisse zum Nutzen des Projekts verwenden
Der Vorstand der #glossary("meditrend"), Maximilian Schwab, hatte bereits in der Vergangenheit unsere verschiedenen Vorhaben blockiert oder zumindest versucht zu bremsen.

Es galt seine Macht, sowie seinen konkreten Einfluss und Wirkungsbereich, einzuschätzen.

Für die Einschätzung musste ich beachten, dass in der Hörakustik-Branche, aufgrund ihrer geringen Größe, viele Geschäfte und Absprachen hinter verschlossenen Türen stattfinden.
Dabei stehen insb. die Geschäftsführungen der verschiedenen Unternehmen in sehr engem Kontakt.
Aus diesem Wissen konnte ich schließen, dass sich der Wirkungsbereich von Hr. Schwab potentiell über die gesamte Branche erstrecken könnte.
Realistisch sind dem natürlich Grenzen gesetzt, diese sind allerdings schwierig genau zu identifizieren.\
Gleichermaßen musste ich berücksichtigen, dass er gegenüber den Mitgliedern der #glossary("meditrend") einen erhebliche Einfluss besitzt.
Auch wenn er keine formelle Befugnis hat, diesen unternehmerische Vorgaben zu machen, so tragen seine Aussagen dennoch Gewicht, da davon auszugehen ist, dass sich die Mitglieder in ihren unternehmerischen Entscheidungen nach dem richten werden, was der Vorstand ihrer Einkaufsgemeinschaft so von sich gibt.

Wir haben festgehalten, dass seine Möglichkeiten Einfluss auf unsere Projekte zu nehmen sehr umfassend sind.
Entsprechend haben wir in unserer Kommunikationsstrategie eingeplant damit umzugehen und dem proaktiv entgegenzuwirken.

==== #strike[*04.03.04.03* Persönlichkeiten und Arbeitsstile Dritter beurteilen und zum Nutzen des Projekts einsetzen]

#pagebreak()
=== #TODO 04.04.05 Führung
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
=== #TODO 04.05.01 Projektdesign
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
Im Folgenden geht es um ein Projekt, in dem wir in unserem System den Support für das Import-Format "#abbr("axc")" des weit verbreiteten ERP-Systems #glossary("amparex") eingebaut haben.

==== *04.05.02.01* Hierarchie der Projektziele definieren und entwickeln
Das Projekt verfolgte im Kern zwei strategische Ziele:
- Die Zufriedenheit der Akustiker innerhalb unseres Netzwerkes, die #glossary("amparex") verwenden, erhöhen
- Das Netzwerk Hörgesundheit durch unser Angebot attraktiver für neue Partner, die ebenfalls #glossary("amparex") verwenden, zu gestalten

Die operativen Zielen des Projekts mussten definiert werden und zu den strategischen Zielen in Bezug gesetzt werden.

Als primäres operatives Ziel habe ich abgeleitet, dass wir das Import-Format "#abbr("axc")" in unserem Produktdaten-Download-Center mit unterstützen müssen.
Darunter habe ich weitere Qualitätsziele abgeleitet, um beide strategischen Ziele zu erfüllen:
- Die Daten sind möglichst vollständig im #glossary("amparex")-System abgebildet
- Alle Verknüpfungen zwischen Daten (z.B. Zugehörigkeiten zwischen Geräten und Zubehör) sind im #glossary("amparex")-System abgebildet
- Alle Daten sind hierarchisch sauber abgebildet (Produktfamilien als Gruppierung, Produktvarianten als Unterteilung, etc.)
#v(-10pt)
Um zusätzlich das erste strategische Ziel besser zu erfüllen, haben wir die Etablierung von direktem Support von Import-Vorgängen mit Video-Calls als weiteres operatives Ziel mit aufgenommen.

Als Ergebnis hatten wir einen klaren Überblick über die konkreten Ziele des Projektes und zugleich die Sicherheit, dass der Projektscope auf das Notwendige beschränkt wurde.

==== *04.05.02.02* Bedürfnisse und Anforderungen der Projekt-Stakeholder identifizieren und analysieren
Eine wichtige Stakeholder-Gruppe des Projektes waren die Endanwender in den Akustiker-Unternehmen.

Die Bedürfnisse und Anforderungen der Endanwender waren zu identifizieren und dokumentieren.

Wir hatten bereits ein Netzwerk an Akustikern, die an einer Import-Lösung für #glossary("amparex") interessiert waren.
Mit diesen habe ich Kontakt aufgenommen und in den Gesprächen systematisch durchleuchtet, wie die Akustiker mit den Produktdaten arbeiten.
Dabei konnte ich einige konkrete Anforderungen an die Produktdaten ableiten, z.B. die Vollständigkeit und Korrektheit der #abbr("hmv")-Nummern, sowie dass insb. die Daten neuerer Produkte regelmäßig zur Verfügung gestellt werden.
Zusätzlich konnte ich im Laufe der Gespräche einige Bedürfnisse einschätzen, z.B. dass die Akustiker gerne einen möglichst einfachen Import-Prozess mit wenigen Schritten möchten.
Das konnte ich daraus schließen, dass nur wenig technisches Verständnis vorhanden war und dass die Aufgabe insgesamt als eine notwendige aber nervige Ablenkung von ihrer eigentlichen Arbeit mit ihren Kunden wahrgenommen wurde.

Nach den Gesprächen hatte ich eine Übersicht über die Anforderungen und Bedürfnisse der Endanwender, mit der ich die konkreten Features des Imports planen konnte.

==== *04.05.02.03* Anforderungen und Abnahmekriterien priorisieren und darüber entscheiden
Hörgeräte sind fast immer in verschiedenen Farbvarianten erhältlich.
Für #abbr("ric")-Geräte, eine Unterkategorie von Hörgeräten, gibt es zugehörige Empfänger mit unterschiedlichen Lautsprecher-Stärken.
Die Farb- und Empfängervarianten lassen sich beliebig miteinander kombinieren.
#abbr("hmv")-Nummern werden nur für Kombinationen vergeben, wobei sich manche Kombinationen dieselbe #abbr("hmv")-Nummer teilen.\
Das Datenmodell, mit dem diese Daten in unserer Datenbank abgebildet sind, ist inkompatibel mit dem Datenmodell des #glossary("amparex")-Systems.
In diesem konnten wir entweder die Hierarchie von Produkten und Varianten oder die Verknüpfungen mit den #abbr("hmv")-Nummern exakt abbilden.

Gegeben dieser Einschränkung, galt es die Bedürfnisse und Anforderungen der Endanwender zu priorisieren.

Um diese Gegenüberstellung zu klären, bin ich mit einigen Endanwendern erneut in den Austausch gegangen.
Dadurch konnte ich bestimmen, dass die Vollständigkeit und Korrektheit der #abbr("hmv")-Nummern von hoher Wichtigkeit sind.
Die hierarchische Struktur der Daten hingegen wurde nur als Bonus gesehen.
Entsprechend habe ich die Abbildung der #abbr("hmv")-Nummern priorisiert.

Gemäß der Priorisierung wurden die betroffenen Arbeitspakete angepasst.

#pagebreak()
=== #TODO 04.05.03 Leistungsumfang und Lieferobjekte
#todo("Überarbeiten")
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
=== #TODO 04.05.04 Ablauf und Termine
#todo("Überarbeiten")
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
=== #TODO 04.05.05 Organisation, Information und Dokumentation
#todo("Überarbeiten")
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
=== #TODO 04.05.06 Qualität
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
=== #TODO 04.05.07 Kosten und Finanzierung
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
Das Projekt für die Entwicklung des #abbr("qrs") deckte mehrere Bereiche von bereits bestehender Software ab, die weiterentwickelt werden sollte.
Für diese Bereiche, sowie die anfallenden Aufgaben, waren unsere verschiedenen Entwickler unterschiedlich qualifiziert.

==== *04.05.08.01* Strategische Ressourcenplanung entwickeln, um die Projektergebnisse liefern zu können
Auf Grundlage der Ressourcenplanung waren die für das Projekt erforderlichen Entwickler zu ermitteln.

Anhand der angereicherten Arbeitspaket-Übersicht (im nächsten KCI beschrieben), konnte ich den Arbeitspaketen jeweils die am besten dafür geeigneten Entwickler (einschließlich mir selbst) zuweisen.
Dabei habe ich sowohl eine "erste Wahl" definiert, also der am besten geeignete Entwickler für die Aufgabe, sowie weitere Fallback-Optionen von Entwicklern, die auch in der Lage wären die Aufgabe zu übernehmen.
Mit dieser Übersicht habe ich abschließend zusammengestellt, wer für das Projekt absolut notwendig ist, sowie welche Entwickler ich noch gebrauchen könnte, um das Projekt zu beschleunigen.

Eine Übersicht über die erforderlichen Entwickler wurde erstellt und der Geschäftsführung vorgelegt.
Diese hat, nach etwas Verhandlung (s.u.), beschlossen wer dem Projekt für wie lange zugeteilt wird.

==== *04.05.08.02* Qualität und Menge der benötigten Ressourcen definieren
Für die Umsetzung des gesamten Projektes galt es, eine Ressourcenplanung aufzustellen.

Ich habe für jedes Arbeitspaket, das ich in meiner vorherigen Planung definiert hatte, den Bedarf an Wissen & Kompetenzen bestimmt.
Dabei habe ich die benötigten Frontend- und Backend-Entwicklungsskills beurteilt, sowie die benötigten Vorkenntnisse zu bestehenden Systemen (sofern relevant).

Die Übersicht der Arbeitspakete wurde mit den dafür notwendigen Kompetenzen angereichert und stand für die weitere Planung zur Verfügung.

==== *04.05.08.03* Potenzielle Ressourcenquellen identifizieren und ihre Beschaffung verhandeln
Unter anderem sollten die Funktionen des #abbr("qrs") über die bereits bestehende Management-Plattform verfügbar gemacht werden.
Der Entwickler, der diese Management-Plattform designed hatte, sollte auch die Integration aufbauen.
Dieser Entwickler war jedoch bereits in anderen Projekten stark eingebunden.

Die Verfügbarkeit dieses Entwicklers war mit der Geschäftsführung zu verhandeln.

Ich habe zu diesem Zweck zunächst mit der Geschäftsführung zusammen gegenübergestellt, welche Prioritäten die verschiedenen betroffenen Projekte untereinander haben.
Dabei stellte sich heraus, dass mein Projekt strategisch auf derselben Ebene stand wie die anderen, in denen der Entwickler bereits eingeplant war.
Ich habe daher das Arbeitspaket für die Integration nochmals in zwei Teile zerlegt.
Einen, für den das Spezialwissen des Entwicklers von hoher Wichtigkeit war, sowie ein zweites, das auch von jemand anderem umgesetzt werden kann, sofern der erste Teil bereits abgearbeitet wurde.
Ich habe anschließend der Geschäftsführung die Option angeboten, den Entwickler nur für das erste Teilpaket einzusetzen, um die Verzögerung in den anderen Projekten so gering wie möglich zu halten.

Der Entwickler wurde für begrenzte Zeit meinem Projekt zugewiesen, wobei der Umfang der Aufgaben wie vereinbart reduziert wurde.

==== *04.05.08.04* Ressourcen gemäß dem festgelegten Bedarf zuweisen und verteilen
Für den im letzten KCI beschriebenen Entwickler war eine klare Aufgabenliste zu erstellen.

Um die Aufteilung des oben beschriebenen Arbeitspaketes zu ermöglichen, hatte ich zunächst das anvisierte Ergebnis des Arbeitspaketes in die kleinstmöglichen Teilergebnisse zerlegt und diese dann wie beschrieben unterteilt.
Daraus ergab sich bereits eine klare Liste von Aufgaben, sowie eine Liste von Aufgaben, die explizit nicht durch den Entwickler zu erledigen waren.
Diese Listen habe ich in einer für den Entwickler sinnvollen Form abgefasst.

Der Entwickler hat eine Liste von Aufgaben vorgelegt bekommen, sowie eine Liste expliziter Abgrenzungen zu Teilen, die nicht durch ihn zu implementieren waren.

==== #strike[*04.05.08.05* Ressourcenverbrauch evaluieren und erforderliche Korrekturmaßnahmen ergreifen]

#pagebreak()
=== 04.05.09 Beschaffung
Über die aufgebaute Schnittstelle zu #glossary("optadata_focus") werden in regelmäßigen Abständen unsere Produktdaten übertragen.
Um für Nutzer eine möglichst gute User-Experience sicherzustellen, sollten unsere Daten in #glossary("optadata_focus") zwischengespeichert werden, um sie von dort aus schneller an Nutzer verteilen zu können.
Dabei sollte weiterhin die Hoheit über die Daten, also die Vergabe von Zugängen, bei uns bleiben.

==== *04.05.09.01* Beschaffungsbedarf, Optionen und Prozesse vereinbaren
Unsere Geschäftsführung benötigte Unterstützung in der Vorbereitung des Kooperationsvertrages, insb. dessen fachlichen Inhalte.

Ich habe die konkreten Risiken, die sich aus der Herausgabe unserer Daten ergeben, beurteilt und daraus konkrete Anforderungen, die von der #glossary("optadata") zu erfüllen waren, abgeleitet.
Diese beinhalteten technische Anforderungen an die Absicherung der in #glossary("optadata_focus") liegenden Daten gegen unberechtigten Zugriff, die Beschränkung des Zugriffs auf berechtigte User, sowie die Überprüfung von User-Berechtigungen über von uns zur Verfügung gestellte Gateway-Endpoints.\
Zudem habe ich die Anforderungen seitens #glossary("optadata") bzgl. der Verfügbarkeit unseres Gateways im Gespräch geklärt und in die Zusammenstellung der vertraglich festzuhaltenden Anforderungen mit aufgenommen.

Die Geschäftsführung hat anschließend aus der Aufstellung der Anforderungen den Kooperationsvertrag erstellt.

==== *04.05.09.02* Zur Evaluation und Auswahl von Lieferanten und Partnern beitragen
Es musste beurteilt werden, welche Besonderheiten in der Zusammenarbeit mit #glossary("optadata") existierten, und ein geeignetes Partnerschaftsmodell entschieden werden.

Zunächst habe ich zwei mögliche Modelle für die Absicherung unserer Daten entworfen, die unterschiedliche Level an Kontrolle über die Daten abbilden:
- #underline[Nutzerschlüssel]: Wir sichern unsere Daten selber mittels Zugangsschlüsseln gegen unbefugten Zugriff ab. Jeder User erhält dabei einen Schlüssel, der nur dem User (und nicht der #glossary("optadata")) bekannt ist.
- #underline[Kooperationsvertrag]: Wir sichern den Zugang zu unseren Daten nur so ab, dass außer der #glossary("optadata") niemand sonst Zugriff hat. Die Herausgabe unserer Daten an die Nutzer von #glossary("optadata_focus") wird dabei über einen Kooperationsvertrag geregelt.
#v(-10pt)
Diese Modelle habe ich anschließend im Austausch mit der Geschäftsführung gegenübergestellt und die Vor- und Nachteile mit ihnen diskutiert.

Die Geschäftsführung hat sich für die Vereinbarung eines Kooperationsvertrages entschieden.

==== *04.05.09.03* Zu Verhandlungen und Vereinbarungen von Vertragsbestimmungen beitragen, um diese in Einklang mit den Projektzielen zu bringen
Eine der Bestimmungen des Kooperationsvertrages war es, dass wir eine hohe Zuverlässigkeit in unserem Gateway sicherzustellen hatten.

Es galt diese Vertragsbestimmung und ihre Auswirkungen auf das Projekt zu reflektieren.

Ich habe analysiert wie die beiden größten Faktoren für die geforderte Zuverlässigkeit, Serverlast und Antwortgeschwindigkeit, in unserem Gateway optimiert werden können.
Dabei habe ich eine handvoll möglicher Änderungen in unseren geplanten Gateway-Endpoints identifiziert.
Die Änderungen habe ich zudem in ihrem Umfang eingeschätzt.

Die notwendigen Änderungen konnten anschließend eingeplant und umgesetzt werden (s.u.).

==== *04.05.09.04* Vertragsausführung überwachen, Probleme ansprechen und, falls notwendig, Entschädigungen verlangen
Es galt die identifizierten Maßnahmen zum Managen der Vertragserfüllung umzusetzen.

Die im vorherigen KCI identifizierten Änderungen an unseren Endpoints habe ich in die entsprechenden Arbeitspakete mit eingeplant.
Da ich eingeschätzt hatte, dass es sich dabei weitesgehend um geringfügige Anpassungen handelte, änderte der Umfang der Arbeitspakete sich nicht nennenswert.
Eine Anpassung des Terminplans habe ich entsprechend als nicht notwendig bewertet.

Durch die Einführung der Änderungen in unseren Endpoints wurde die Serverlast reduziert und eine höhere Antwortgeschwindigkeit sichergestellt.
Damit haben wir eine hohe Gesamtzuverlässigkeit unseres Gateways erreicht und unsere vertragliche Verpflichtung erfüllt.

#pagebreak()
=== #TODO 04.05.10 Planung und Steuerung
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
=== #TODO 04.05.11 Chancen und Risiken
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
=== #TODO 04.05.12 Stakeholder
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
=== #TODO 04.03.01 Strategie
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
=== #TODO 04.03.05 Kultur und Werte
==== *04.03.05.01* Kultur und Werte der Gesellschaft und deren Auswirkungen auf das Projekt beurteilen
#todo("Schreiben")
==== *04.03.05.02* Das Projekt mit der formellen Kultur und den Werten der Organisation in Einklang bringen
#todo("Schreiben")
==== *04.03.05.03* Die informelle Kultur und Werte der Organisation und deren Auswirkungen auf das Projekt beurteilen
#todo("Schreiben")

#pagebreak()
=== #TODO 04.04.01 Selbstreflexion und Selbstmanagement
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
=== #TODO 04.04.02 Persönliche Integrität und Verlässlichkeit
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
=== #TODO 04.04.03 Persönliche Kommunikation
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
=== #TODO 04.04.04 Beziehungen und Engagement
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
=== #TODO 04.04.06 Teamwork
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
=== #TODO 04.04.07 Konflikte und Krisen
==== *04.04.07.01* Konflikte und Krisen antizipieren und, wenn möglich, verhindern
#todo("Schreiben")
==== *04.04.07.02* Ursachen und Auswirkungen von Konflikten und Krisen analysieren und angemessene Reaktionen auswählen
#todo("Schreiben")
==== *04.04.07.03* Konflikte und Krisen und/oder deren Auswirkungen lösen bzw. in ihnen vermitteln
#todo("Schreiben")
==== *04.04.07.04* Lernergebnisse aus Konflikten und Krisen identifizieren und weitergeben, um die zukünftige Arbeit zu verbessern
#todo("Schreiben")

#pagebreak()
=== #TODO 04.04.08 Vielseitigkeit
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
=== #TODO 04.04.09 Verhandlungen
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
=== #TODO 04.04.10 Ergebnisorientierung
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
=== #TODO 04.05.13 Change und Transformation
==== *04.05.13.01* Adaptionsfähigkeit der Organisation(en) zu Veränderung beurteilen
#todo("Schreiben")
==== *04.05.13.02* Veränderungsanforderungen und Transformationschancen identifizieren
#todo("Schreiben")
==== *04.05.13.03* Veränderungs- oder Transformationsstrategie für das Projekt entwickeln
#todo("Schreiben")
==== *04.05.13.04* Veränderungs- oder Transformationsmanagement implementieren
#todo("Schreiben")

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
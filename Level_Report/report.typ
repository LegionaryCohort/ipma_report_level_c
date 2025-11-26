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
        [*Angestrebtes Level*], [*Level C*],
        [IZR-Nummer], [26-200],
        [Prüfungsdatum], [14.--16. Jan 2026],
        [Prüfungsort], [Online],
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
        "", "", "", "",
    )

    pagebreak()

    show outline.entry: it => {
        if it.element.numbering == none {
            link(it.element.location(), it.indented(it.prefix(), [#h(11pt)#it.body()]))
        } else {
            it
        }
    }
    outline(
        title: [
            Inhaltsverzeichnis
            #v(10pt)
        ],
        depth: 3,
    )
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
#show heading: it => {
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

= #TODO Management-Zusammenfassung
#todo("Überarbeiten")
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

Die Geschäftsführung der Audoora GmbH besteht aus #glossary("sebastian_long") und #glossary("nils_long").
Mit letzterem hatte ich im Rahmen meiner Aufgaben sehr viel Kontakt.
Im weiteren Verlauf des Reports werden beide nur mit Vornamen genannt.

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
=== 04.05.01 Projektdesign
==== *04.05.01.01* Erfolgskriterien anerkennen, priorisieren und überprüfen
Das Produktdatenprogramm zielte als strategisches Programm darauf ab unsere politische Position innerhalb der Branche zu stärken und parallel neue Partner zu gewinnen.

Um das Programm zum Erfolg führen zu können, galt es sowohl formelle als auch informelle Erfolgskriterien zu erkennen und beurteilen.

Die Erfolgskriterien bezogen auf die Gewinnung neuer Partner konnte ich direkt aus dem Wachstum unseres Netzwerks ableiten.
Die weiteren Erfolgskriterien waren hingegen schwieriger zu beurteilen.
Die politische Situation innerhalb der Branche ist an und für sich bereits eine eher ungreifbare Sache, bei der wir (#glossary("sebastian"), #glossary("nils") und Ich) uns viel auf unser Gefühl verlassen mussten.
Konkreter einschätzen konnten wir das Ganze, indem wir den regelmäßigen Austausch mit den anderen Unternehmen in der Branche gesucht haben.
Darüber konnten wir oft am Rande über neue Entwicklungen erfahren und die Positionen und Pläne der (potentiellen) Konkurrenz einschätzen.

Über unsere laufende Beurteilung der Situation innerhalb der Branche konnten wir oft frühzeitig auf neue Entwicklungen reagieren.
Gerade als kleineres Startup war diese Fähigkeit zeitweise überlebenswichtig für das Unternehmen.

==== *04.05.01.02* Lessons Learned aus --und mit-- anderen Projekten überprüfen, anwenden und austauschen
Einige Zeit nach Abschluss des #abbr("qrs") Projektes, wollten wir unser Produktdatenmanagementsystem erneut erweitern, diesmal um ein umfangreiches Import-Modul, das den Import von Neu-Daten erheblich erleichtern sollte.

In der Planung des Projektes galt es die Lessons Learned, insb. aus dem #abbr("qrs") Projekt, mit einzubeziehen entsprechende Maßnahmen umzusetzen.

Das Produktdatenmanagementsystem ist in #glossary("python") geschrieben.
Im Abschluss des #abbr("qrs") Projektes habe ich unter anderem als Lesson Learned festgehalten, dass #glossary("python")s dynamisches Type-System wiederholt zu Fehlern in der Implementierung geführt hat.
#glossary("python") bietet seit Version 3.5 Type-Hinting an, um diesem Problem entgegenzuwirken.
Für das nun anstehende Projekt habe ich dementsprechend die umfassende Verwendung von Type-Hinting als Code-Vorgabe mit aufgenommen.

Im Laufe des Projektes sind erheblich weniger Fehler der Kategorie aufgetreten, die aufgrund von dynamischen Type-Systemen entstehen könnnen.

==== *04.05.01.03* Projektkomplexität und ihre Konsequenzen für den Projektmanagementansatz bestimmen
Ganz zu Beginn des #abbr("qrs") Projektes war noch gar nicht klar, dass wir ein solches System entwickeln würden.
Vielmehr hatten wir im täglichen Umgang mit unseren Produktdatenkatalogen immer wieder festgestellt, dass sich darin Datenfehler wiederfanden.
Daraus hatten wir abgeleitet, dass wir ein Projekt aufsetzen sollten, um diesen entgegenzuwirken.
Die Zielsetzung ("Datenfehler in unserer Datenbank frühzeitig erkennen und korrigieren") stand dabei schnell fest, nicht jedoch wie das Ganze in der Praxis am Ende aussehen sollte.

Den Mangel an Klarheit über das Ergebnis habe ich als Komplexitätstreiber erkannt.

Konkret war mir klar, dass wir ohne ein klares Konzept des Ergebnisses hier viel Zeit und Energie in den Sand setzen könnten.
Ich habe mich daher mit #glossary("nils") nochmal zusammengesetzt und genauer ausgearbeitet was die konkrete Funktionalität des Endproduktes sein sollte, um sowohl das Kernziel zu erfüllen, als auch in der Praxis sinnvoll verwendbar zu sein.
Dabei wurde klar, dass eine Integration des neuen Systems in unsere bestehende Management-Plattform unabdingbar sein würde.
Da diese nochmals spezielle Anforderungen bzgl. der Implementierung aufweist, ergab sich hierdurch nochmals zusätzliche Komplexität im Projekt, die es zu managen galt.

Über die frühzeitige Erkennung der Komplexitätstreiber, sowie die frühe Adressierung derselben in unseren Planungsmeetings, konnten wir den Umfang und Aufwand des Projektes vor Beginn besser einschätzen und steuern.
Die spätere Umsetzung verlief angenehmen flüssig, da keine nennenswerten Überraschungen aufgrund von übersehener Komplexität aufgetreten sind.

==== *04.05.01.04* Generellen Projektmanagementansatz auswählen und anpassen
Das Produktdatenprogramm lief über einen recht langen Zeitraum.
Da wir uns als Unternehmen laufend weiterentwickeln wollten, haben wir dies beim Aufsetzen des Programmes selbstverständlich mit berücksichtigt.

Für das Programm sollte der Managementansatz und die angewendeten Methoden laufend reflektiert und nach Bedarf angepasst werden.

Im Laufe meiner Zeit bei der Audoora GmbH habe ich, unabhängig vom Produktdatenprogramm, mit unseren Entwicklern in regelmäßigen Abständen Gespräche geführt, in denen wir über ihre Arbeit und vor allem ihre Zufriedenheit im Unternehmen gesprochen haben.
Da diese Gespräche insgesamt ein großer Erfolg waren, haben #glossary("nils") und ich dasselbe Format für uns selbst übernommen und derartige Gespräche miteinander geführt.
Dabei haben wir vermehrt den Fokus darauf gelegt unsere jeweilige Arbeitsweise näher zu beleuchten.
Für Probleme, die wir dabei identifizieren konnten, haben wir im Rahmen des Gespräches Lösungen entwickelt und diese anschließend umgesetzt.

Durch unsere regelmäßigen Reflektionen unserer eigenen Arbeitsweise konnten wir wiederholt Anpassungen vornehmen, um unsere Effizienz zu steigern.
Beispielsweise haben wir die Art und Weise überarbeitet, wie der Status von Arbeitspaketen in #glossary("notion") festgehalten wird, damit wir schneller überblicken können, in welchem Test- & Deployment-Status sich bestimmte Features befinden.

==== #strike[*04.05.01.05* Konzept für die Projektdurchführung entwerfen, überwachen und anpassen]

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
=== 04.05.03 Leistungsumfang und Lieferobjekte
Im Folgenden geht es um das Projekt, in dem wir ein Quality Reporting System (#abbr("qrs")) für unsere Produktdatenbank aufgebaut haben.
Ziel des Projektes war es, dass wir Qualitätsmängel in den Daten zuverlässig erkennen und korrigieren können.

==== *04.05.03.01* Lieferobjekte definieren
Die Lieferobjekte waren zu definieren.

Das #abbr("qrs") war dabei als eine Erweiterung unseres Datenbank-Management-Systems vorgesehen.
In der Planung des Projektes haben wir per Brainstorming zunächst den Funktionsumfang der Erweiterung ausdefiniert.
Anschließend habe ich den typischen Ablauf einer Qualitätsprüfung designed.
Aus diesem Design habe ich die benötigten Systemmodule abgeleitet und die Stuktur der tatsächlichen Report-Spezifikationen festgelegt.
Das gesamte Design im Überblick ist nochmal in @qrs_design visuell dargestellt.\
Aus diesem Design habe ich folgende Lieferobjekte abgeleitet:
- Das #abbr("qrs") Framework (zuständig für die gesamte Ausführung von #abbr("qrs")-Reports)
    - Das Datenbank-Prüf-Modul (zuständig für die Ausführung der Report-Prüfungs-Ablaufe)
    - Das Report-Protokoll-Modul (zuständig für die Erstellung der Report-Prüf-Protokolle)
    - Das Import-Modul (zuständig für die Durchführung von Report-Korrektur-Vorgängen)
- Mehrere #abbr("qrs")-Reports zu konkreten Qualitätskriterien
    - Überprüfung von Artikelnummern und #abbr("gtin")s
    - Überpüfung von Produktverknüpfungen und #abbr("hmv")-Nummern
- Dokumentation zur Verwendung des QRS für die Kollegen, die damit arbeiten sollten

Anhand der definierten Lieferobjekte wurde die weitere Arbeitspaketplanung vorgenommen.

==== *04.05.03.02* Leistungsumfang strukturieren
Für das Projekt musste nun ein Vorgehensmodell begründet ausgewählt werden.

Auf der einen Seite hatte ich die Lieferobjekte klar definiert und konnte daraus bereits erste Arbeitspakete ableiten.
Auf der anderen Seite hatten die Entwickler im Unternehmen sich im Laufe vergangener Projekte auf eine agile Arbeitsweise eingependelt.
Um den etablierten und gewohnten Workflow aufrecht zu erhalten, aber die Klarheit der vorhandenen Planung voll auszunutzen, habe ich mich für einen hybriden Ansatz entschieden.
Dabei wurden die einzelnen Arbeitspakete in dem üblichen Ablauf bearbeitet, aber die übergreifende Planung folgte einem planbasierten Ansatz.

Entsprechend stand das Vorgehensmodell fest und wurde anschließend umgesetzt.

==== *04.05.03.03* Arbeitspakete definieren
Für die Projektumsetzung waren Arbeitspakete zu definieren.

Die Arbeitspakete habe ich Schrittweise im Laufe des Projektes aus den Lieferobjekten abgeleitet.
Da zu Beginn die Details des #abbr("qrs")-Frameworks noch nicht alle feststanden, habe ich zunächst ein Arbeitspaket für den einfachsten der #abbr("qrs")-Reports erstellt, damit dieser als Orientierung für das Design des Frameworks verwendet werden kann.
Für die einzelnen Module des Frameworks habe ich jeweils ein Arbeitspaket definiert, um aus den bekannten Schnittstellen und Rahmenbedingungen eine erste Struktur zu entwickeln.
Weitere Pakete habe ich eingeplant, um aus den ersten Strukturen und dem ersten Report anschließend das Framework zu verfeinern und weiter auszubauen.
Diese "Ausbau"-Pakete wurden mit den Erkenntnissen aus den vorangegangenen Paketen (nach deren Abschluss) verfeinert und finalisiert.

Mit der beschriebenen Planung von Arbeitspaketen stand zu jedem Zeitpunkt fest, woran aktuell zu arbeiten ist, sowie welche Aufgaben zukünftig noch zu bearbeiten sind (auch wenn letztere meist noch nicht abschließend feststanden).

==== #strike[*04.05.03.04* Konfiguration des Leistungsumfangs erstellen und aufrechterhalten]

#pagebreak()
=== 04.05.04 Ablauf und Termine
Zu Beginn des Schnittstellenprojektes zum ERP-System #glossary("optadata_focus") musste zunächst ein Überblick geschaffen werden, anhand dessen wir das Projekt kalkulieren und später umsetzen können.

==== *04.05.04.01* Aktivitäten definieren, die nötig sind, um das Projekt (ab)liefern zu können
Für die Umsetzung des Projektes galt es die notwendigen Aufgaben zu definieren.

Um die notwenigen Aufgabe zu ermitteln, habe ich zunächst aus den zuvor definierten Lieferobjekten grobe Aufgabenbereiche abgeleitet.
Diese umfassten das Gateway selbst, ein Admin-Interface für die interne Steuerung, sowie Anpassungen im #glossary("optadata_focus") System.
Hinzu kam, aus den Qualitätszielen abgeleitet, der Bereich Integration & Testing.\
Die Aufgabenbereiche habe ich anschließend schrittweise in konkrete Aufgaben, die sich jeweils mit Teilen des zugehörigen Lieferobjektes befassten, heruntergebrochen.
Die Aufgaben habe ich als Kacheln in einem Diagramm festgehalten und sie farblich den Aufgabenbereichen zugeordnet (siehe @gateway_tasks).

Mit den definierten Aufgaben wurde die weitere Planung vorgenommen.
Im weiteren Verlauf der Planung wurden die Abhängigkeiten zwischen den Aufgaben, sowie die Phasen, in die das Projekt unterteilt wurde, hinzugefügt (siehe die nächsten KCIs).

==== *04.05.04.02* Arbeitsaufwand und Dauer von Aktivitäten festlegen
Für alle Aufgaben musste identifiziert werden, wer die Aufgaben umsetzen sollte.

Für alle Aufgaben habe ich zwei Aspekte überprüft:
- In welchem System müssen Anpassungen vorgenommen werden?
- Wird für die Aufgabe spezielles Wissen benötigt, und wenn ja, welches?
#v(-10pt)
Aus den Antworten auf die erste Fragen konnte ich zunächst ableiten welche Aufgaben von der #glossary("optadata") umzusetzen waren (da sie Änderungen am #glossary("optadata_focus") System erforderten).
Alle restlichen Aufgaben waren durch uns umzusetzen.
Dabei musste ich, gemäß den Antworten auf die zweite Frage, die Aufgaben denjenigen Entwicklern zuordnen, die über das nötige Spezialwissen verfügen.
Beispielsweise erforderten die Aufgaben bzgl. des Admin-Interfaces, dass der Entwickler sich mit unserer selbstentwickelten Management-Plattform auskennt, um das Interface dort korrekt einzubauen.

Mit der Zuordnung der Aufgaben konnte ich zum einen sehr schnell und klar dem Kunden kommunizieren welchen Aufgaben er nachkommen muss, und ich konnte mit #glossary("nils") die Verfügbarkeiten unserer Entwickler abklären.

==== *04.05.04.03* Vorgehensweise für Termine und Phasen, ggf. Sprints festlegen
Für die Umsetzung und eindeutige Kommunikation mit dem Kunden, waren die Phasen des Projektes festzulegen.

Ich habe das Projekt in 4 Phasen unterteilt:
- Spezifikationsphase: _Design der Gateway-Endpoint Spezifikationen_
- Aufbau eines Test-Gateways: _Bereitstellung des Gateway-Servers inkl. aller Endpoints mit vorläufigen Beispieldaten_
- Umsetzung der Backend-Logik: _Implementierung der tatsächlichen Logik innerhalb aller Endpoints_
- Testing & Fine-Tuning: _Gemeinsamer Integrations-Test des vollen Schnittstellenprozesses_
Der Abschluss jeder Phase stellte dabei einen Meilenstein dar, für den ich mit der #glossary("optadata") eine Deadline vereinbart habe.

Dank der groben Phasenplanung konnten wir besser mit der #glossary("optadata") koordinieren.
Anhand der Phasenplanung wurden alle weiteren (Detail-)Schritte definiert.
Siehe auch @gateway_tasks, in der die Phasen übergreifend mit abgebildet sind.

==== *04.05.04.04* Abfolge der Projektaktivitäten bestimmen und einen Ablauf- und Terminplan erstellen
Einige der Aufgaben, z.B. die Bereitstellung von Testdaten, konnten erst umgesetzt werden, wenn andere Aufgaben zuvor erledigt wurden (Im Fall des Beispiels die Bereitstellung des Gateway-Servers mit entsprechenden Endpoints).

Für alle Aufgaben im Projekt waren die Abhängigkeiten untereinander zu bestimmen.

Für jede Aufgabe habe ich, im Rahmen der Definition der Aufgabe, bereits festgehalten welche Vorbedingungen erfüllt sein müssen, damit die Aufgaben beginnen kann, z.B.:
- Implementierung Gateway-Logik: _Gateway-Framework muss fertiggestellt sein_
- Admin-Interface für die Verwaltung deployen & testen: _alle internen Gateway-Endpoints sind fertiggestellt, deployed und getestet_
#v(-10pt)
Anhand der Vorbedingungen konnte ich bestimmen welche Aufgaben erledigt sein müssen (bzw. genauer welche Ergebnisse aus welchen Aufgaben geliefert worden sein müssen), damit die betrachtete Aufgabe beginnen kann.
Diese Verhältnisse habe ich in Form eines Ablaufdiagramms festgehalten (siehe @gateway_tasks).

Die fertige Ablaufplanung diente für die Umsetzung des Projektes als leitende Referenz und de facto Todo-Liste.

==== #strike[*04.05.04.05* Fortschritt anhand des Terminplans überwachen und notwendige Anpassungen vornehmen]

#pagebreak()
=== 04.05.05 Organisation, Information und Dokumentation
Für das gesamte Programm habe ich mich zu Beginn im Rahmen der Übergabe mit #glossary("nils") zusammengesetzt, um die Details der Zusammenarbeit zu klären.
Ein Teil dieser Gespräche war die Klärung der verwendeten Informations- und Kommunikationsstrukturen.

==== *04.05.05.01* Bedürfnisse der Stakeholder bezüglich Information und Dokumentation beurteilen und bestimmen
Im Rahmen der initialen Planung waren die verschiedenen (formellen und informellen) Kommunikationsarten festzulegen und einzuführen.

Für das Programm selbst war lediglich #glossary("nils") informiert zu halten.
Dazu habe ich mich mit dieser zusammen ausdefiniert, in welcher Form und Häufigkeit der Informationsaustausch stattfinden sollte.
Akute Probleme oder Hindernisse wurden in unserem bereits etablierten täglichen Meeting behandelt (nach Bedarf mit dedizierten Folge-Meetings).
Für allgemeine Status-Updates, sowie alle Themen, die von geringerer Dringlichkeit waren, haben wir einen 2 bis 4-wöchigen Regeltermin eingeführt.\
Die Dokumentation, sowohl für das Projektmanagement, als auch die Projektinhalte, habe ich in eigens dafür angelegten Bereichen in unserer bereits etablierten Plattform für Wissensmanagement, #glossary("notion"), abgelegt.

Über die festgelegten Kommunikationswege konnten wir im Laufe des gesamten Programms stets zügig und effizient über alle anstehenden Themen kommunizieren.

==== *04.05.05.02* Struktur, Rollen und Verantwortlichkeiten im Projekt definieren
Es galt die konkreten Verantwortlichkeiten zu verteilen.

Allgemein sind wir im Unternehmen Aufgaben meist kollaborativ angegangen, d.h. Verantwortung für Aufgaben wurde nicht auf Einzelpersonen übertragen, sondern auf mehrere Personen zusammen (in den allermeisten Fällen Personenpaare).
Da sich dieser Ansatz in der Vergangenheit bewährt hatte, haben wir entschieden ihn für das Programm mit zu übernehmen.
Konkret hieß das, dass ich die Planung der einzelnen Projekte in Leistungen, Zeit und Budget meist kollaborativ mit #glossary("nils") im Vier-Augen-Prinzip durchgeführt habe.
Die Verantwortung für die tatsächliche Umsetzung und Überwachung derselben lag wiederum bei mir allein.

Durch die geteilten Verantwortlichkeiten konnten wir sicherstellen, dass Blind-Spots früher erkannt wurden.
Auch haben wir damit sichergestellt, dass alle Ideen und Ansätze robuster waren und es in der praktischen Umsetzung durch Abwesenheiten o.ä. nicht zu Verzögerungen kam.

==== *04.05.05.03* Infrastruktur, Prozesse und Informationssysteme aufbauen
Es war sicherzustellen, dass redundante Informationen begrenzt und/oder vermieden werden.

Alle Programme & Projekte im Unternehmen wurden in #glossary("notion") geplant und überwacht.
#glossary("notion") ist in der Erstellung eigener Datenstrukturen und -hierarchien sehr flexibel und ermöglicht umfassende Querverlinkungen zwischen hinterlegten Inhalten.
Den Großteil der Plattform habe ich zusammen mit #glossary("nils") eingerichtet und verwaltet.
Dabei haben wir darauf geachtet, dass jede Information einen klaren Ort hat, an den sie gehört.
Mittels Querverlinkungen konnten wir die Information dann an allen Orten verfügbar machen, wo sie gebraucht wurde.\
Da #glossary("notion") die Basis unserer gesamten Kommunikation im Unternehmen darstellte, haben wir damit zusätzlich erreicht, dass Informationen nicht redundant kommuniziert wurden.
In allen Nachrichten, Berichten und Besprechungen wurden nur die Links auf die entsprechenden Seiten in #glossary("notion") verteilt, alles weitere wurde in #glossary("notion") festgehalten.

Durch die Verwendung von #glossary("notion"), sowie unsere fortlaufende Optimierung unserer Seiten und Templates darin, kam es nur selten zu Fehlkommunikationen oder Missverständnissen.

==== #strike[*04.05.05.04* Organisation des Projekts implementieren, überwachen und anpassen]

#pagebreak()
=== 04.05.06 Qualität
==== *04.05.06.01* Qualitätsmanagementplan für das Projekt entwickeln, die Implementierung überwachen und gegebenenfalls überarbeiten
Das Projekt für die Implementierung eines Import-Moduls in unser Produktdatensystem beinhaltet viel Entwicklung mit der Programmiersprache #glossary("python").
Aus der Erfahrung aus vergangenen Projekten heraus war bekannt, dass es im Rahmen der Entwicklung mit #glossary("python") häufiger zu Type-Fehlern, einer bestimmten Klasse von Programmierfehlern, kommen kann.

Um dem vorzubeugen waren Qualitätsmaßnahmen zu definieren und einzuführen.

#glossary("python") bietet seit Version 3.5 Type-Hinting an, ein Werkzeug das dabei hilft Type-Fehler zu vermeiden.
Für das nun anstehende Projekt habe ich dementsprechend die umfassende Verwendung von Type-Hinting als Code-Vorgabe mit aufgenommen.
Konkret habe ich ein Tool vorgegeben, das den gesamten Sourcecode des Projektes analysiert, dabei die besagten Type-Hints berücksichtigt und potentielle Type-Fehler hervorhebt.
Jegliche Fehlermeldungen und Warnungen des Tools waren durch Anpassung des Codes zu beheben, damit der betroffene Code akzeptiert wird.

Durch die strikte Einhaltung dieser Vorgaben, sind im Laufe des Projektes erheblich weniger Type-Fehler aufgetreten.

==== *04.05.06.02* Projekt mit seinen Lieferobjekten überprüfen, um sicherzustellen, dass sie die Anforderungen des Qualitätsmanagementplans weiterhin erfüllen
Für das Schnittstellenprojekt zum ERP-System #glossary("optadata_focus") musste mit dem Kunden abgeklärt werden, wie wir die Qualität der von uns entwickelten Endpoints sicherstellen wollen.

Dazu musste festgelegt werden, wie die Qualitätsziele des Projekts kommuniziert werden.

Da es sich bei der Frage nach der Qualität hauptsächlich um die Endpoints drehte, habe ich dem Kunden angeboten, dass wir vorweg eine eindeutige Spezifikation für alle Endpoints erstellen.
Diese würden wir dann sowohl in unseren eigenen Tests, als auch den vereinbarten gemeinsamen Tests, verwenden, um sicherzustellen, dass alle Endpoints sich wie von beiden Seiten vereinbart verhalten.

Mithilfe der Spezifikationen konnten wir alle Tests reibungslos durchführen und auch im Vorfeld schon einige Detailfragen sicher aus dem Weg räumen.

==== *04.05.06.03* Erreichung der Qualitätsziele des Projekts verifizieren und erforderliche korrektive und/oder präventive Maßnahmen empfehlen
Im Rahmen der Entwicklung des #abbr("qrs") wurden wiederholt Tests mit Test-Daten durchgeführt, wobei die Testdaten gezielte Fehlerklassen abgebildet haben, die von den entsprechenden Reports erkannt werden sollten.
Dabei kam es vor, dass ein Report eine bestimmte Fehlerklasse nur unvollständig ermittelt hat.
Konkret war das Problem, dass wenn ein Produkt mit Varianten (z.B. verschiedene Farb-Ausführungen) einen Datenfehler in mehreren Varianten aufwies, dann sollte der Report auch alle Fehler in den Varianten erkennen und melden.
Dies war nicht der Fall, es wurde lediglich einer der Fehler erkannt und gemeldet.

Für den beschriebenen Fehler galt es eine Fehler-Ursachen-Analyse durchzuführen.

Anhand der betroffenen Daten, konnten wir die möglichen Ursachen des Fehlers einschränken und den Teil des Codes, der für diese Art von Daten zuständig war, isolieren.
Anschließend haben wir mithilfe der Test-Daten den genauen Codepfad rekonstruiert.
Mithilfe dieser Rekonstruktion konnten wir ermitteln, dass die Fehlererkennung selbst einwandfrei funktionierte.
Vielmehr war das Problem, dass die fehlerhaften Daten, die nicht erkannt wurden, nie in der Fehlerüberprüfung ankamen.
Diesen Umstand konnten wir, ebenfalls mithilfe der Codepfad-Analyse, dahin zurückverfolgen, dass die Fehleranalyse für die Varianten eines Produktes abgebrochen wurde, sobald ein Fehler in einer Variante gefunden wurde.

Durch die Fehler-Ursachen-Analyse konnte die konkrete Ursache ermittelt und behoben werden. Der Report hat anschließend den Anforderungen entsprechend funktioniert.

==== *04.05.06.04* Validierung von Projektergebnissen planen und organisieren
Das #abbr("qrs") war ausschließlich für die Verwendung durch interne Mitarbeiter vorgesehen.

Um sicherzustellen, dass das System den Anforderungen der Endanwender entsprach, war eine Validierung der Projektergebnisse durchzuführen.

Für die Sicherstellung der Qualität in unseren Projekten, haben wir einen allgemeinen Qualitätsprozess entworfen, der für alle Projekte implementiert wurde (siehe nächster KCI).
Teil dieses Standards ist, dass fertig entwickelte Software(-komponenten) auf einem Testserver deployed werden, auf dem Bedingungen herrschen, die möglichst nah an der reellen Deployment-Umgebung sind.
Unter anderem wird auf diesem die Software zur Abnahme durch den Endanwendern validiert.
Für das #abbr("qrs") Projekt habe ich den gewohnten Prozess wie oben beschrieben eingeführt und dementsprechend die Validierung mit den Endanwendern durchgeführt.

Das #abbr("qrs") wurde erfolgreich validiert und anschließend abgenommen.

==== *04.05.06.05* Qualität im Verlauf des Projekts sicherstellen
Im Laufe der Jahre haben wir im Unternehmen ein Standard-Vorgehen für unsere Projekte entwickelt.
Dieses beinhaltete einen Standard-Prozess für die Qualitätssicherung:
- Jeglicher entwickelter Code wird von den Entwicklern lokal getestet
- Code, der vom Entwickler als fertig erachtet und lokal getestet wurde, wird auf einem Test/QA-Server deployed
- Dort wird der Code erneut vom Entwickler unter live-ähnlichen Bedingungen getestet
- Wenn keine Fehler gefunden wurden, wird der Code aus Nutzer-Sicht von mindestens einem Endanwender getestet und validiert
- Wenn dieser Test ebenfalls erfolgreich verlief, dann wird der Code in eine Live-Umgebung deployed und nochmals von den Endanwendern getestet, um zu verifizieren, dass das Deployment fehlerfrei verlaufen ist
- Anschließend erfolgt die offizielle Abnahme

Für jedes der Projekte unter meiner Verantwortung galt es diesen Qualitätsprozess mit einzuführen.

Ich habe für jedes Projekt zunächst beurteilt, ob der zugehörige Code auf einem eigenen Server laufen sollte, oder auf einem bereits bestehenden Server deployed werden soll.
Da wir für jeden Server im Live-Betrieb einen zugehörigen QA-Server haben, ergab sich aus dieser Zuordnung entweder direkt der zu verwendende QA-Server, oder (im Falle eines neuen Live-Servers für das Projekt) die Notwendigkeit einen neuen QA-Server mit aufzusetzen.\
Desweiteren wurden die Deploymentprozesse für Software übernommen und für das jeweilige Projekt konfiguriert.

Durch den konsequenten Einsatz unseres Prozesses wurden wiederholt Fehler und Probleme mit der Software frühzeitig entdeckt und konnten behoben werden, bevor ein größerer Schaden entstehen konnte.

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

Eine Übersicht über die erforderlichen Entwickler wurde erstellt und #glossary("nils") vorgelegt.
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

Die Verfügbarkeit dieses Entwicklers war mit #glossary("nils") zu verhandeln.

Ich habe zu diesem Zweck zunächst mit #glossary("nils") zusammen gegenübergestellt, welche Prioritäten die verschiedenen betroffenen Projekte untereinander haben.
Dabei stellte sich heraus, dass mein Projekt strategisch auf derselben Ebene stand wie die anderen, in denen der Entwickler bereits eingeplant war.
Ich habe daher das Arbeitspaket für die Integration nochmals in zwei Teile zerlegt.
Einen, für den das Spezialwissen des Entwicklers von hoher Wichtigkeit war, sowie ein zweites, das auch von jemand anderem umgesetzt werden kann, sofern der erste Teil bereits abgearbeitet wurde.
Anschließend habe ich #glossary("nils") die Option angeboten, den Entwickler nur für das erste Teilpaket einzusetzen, um die Verzögerung in den anderen Projekten so gering wie möglich zu halten.

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
#glossary("nils") benötigte Unterstützung in der Vorbereitung des Kooperationsvertrages, insb. dessen fachlichen Inhalte.

Ich habe die konkreten Risiken, die sich aus der Herausgabe unserer Daten ergeben, beurteilt und daraus konkrete Anforderungen, die von der #glossary("optadata") zu erfüllen waren, abgeleitet.
Diese beinhalteten technische Anforderungen an die Absicherung der in #glossary("optadata_focus") liegenden Daten gegen unberechtigten Zugriff, die Beschränkung des Zugriffs auf berechtigte User, sowie die Überprüfung von User-Berechtigungen über von uns zur Verfügung gestellte Gateway-Endpoints.\
Zudem habe ich die Anforderungen seitens #glossary("optadata") bzgl. der Verfügbarkeit unseres Gateways im Gespräch geklärt und in die Zusammenstellung der vertraglich festzuhaltenden Anforderungen mit aufgenommen.

#glossary("nils") hat anschließend aus der Aufstellung der Anforderungen den Kooperationsvertrag erstellt.

==== *04.05.09.02* Zur Evaluation und Auswahl von Lieferanten und Partnern beitragen
Es musste beurteilt werden, welche Besonderheiten in der Zusammenarbeit mit #glossary("optadata") existierten, und ein geeignetes Partnerschaftsmodell entschieden werden.

Zunächst habe ich zwei mögliche Modelle für die Absicherung unserer Daten entworfen, die unterschiedliche Level an Kontrolle über die Daten abbilden:
- #underline[Nutzerschlüssel]: Wir sichern unsere Daten selber mittels Zugangsschlüsseln gegen unbefugten Zugriff ab. Jeder User erhält dabei einen Schlüssel, der nur dem User (und nicht der #glossary("optadata")) bekannt ist.
- #underline[Kooperationsvertrag]: Wir sichern den Zugang zu unseren Daten nur so ab, dass außer der #glossary("optadata") niemand sonst Zugriff hat. Die Herausgabe unserer Daten an die Nutzer von #glossary("optadata_focus") wird dabei über einen Kooperationsvertrag geregelt.
#v(-10pt)
Diese Modelle habe ich anschließend im Austausch mit #glossary("nils") gegenübergestellt und die Vor- und Nachteile mit ihnen diskutiert.

#glossary("nils") hat sich für die Vereinbarung eines Kooperationsvertrages entschieden.

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
=== 04.05.10 Planung und Steuerung
==== *04.05.10.01* Projekt starten, Projektmanagement-Plan entwickeln und Zustimmung einholen
Für den Aufbau des Import-Moduls für unser Produktdatenmanagementsystem war zu Beginn nur klar, dass das allgemeine Ziel sein sollte, den Import-Prozess zu vereinfachen und das benötigte Spezialwissen zu reduzieren.

Es war ein Projektstart-Workshop zu organisieren (und moderieren), um den gewünschten Funktionsumfang und die Ziele des Projektes näher auszuarbeiten.

Ich habe zunächst die wichtigsten Stakeholdergruppen ermittelt:
- Unsere Geschäftsführung, die das Projekt in Auftrag gegeben hat
- Die Endanwender, die mit dem Import-Modul später arbeiten sollten
#v(-10pt)
Anschließend habe ich ein Meeting aufgesetzt, in dem beide Gruppen repräsentiert waren, und die Agenda für das Meeting zusammengestellt.
Die Agenda für dieses Meeting umfasste im Wesentlichen folgende Punkte:
- Ermittlung der zu lösenden Probleme des bestehenden Import-Prozesses
- Ableitung konkreter Features und Nutzungsziele aus den identifizierten Problemen
- Identifikation zusätzlicher notwendiger Eigenschaften (Qualitäts- und Nutzungsziele)
- Festlegung der Entwicklungsphasen und ihrer jeweiligen Ziele

In dem Workshop konnten wir den gewünschten Funktionsumfang festlegen (Import von Daten in tabellarischem Format), den Umfang gegenüber unerwünschten Features abgrenzen (z.B. haben wir die Bearbeitung und Korrektur der Import-Daten über das Import-Modul als Feature ausgeschlossen) und zusätzliche Qualitäts- und Nutzungsziele herausarbeiten (z.B. waren die Import-Daten vor dem Import in die Datenbank auf diverse Qualitätsmerkmale zu prüfen und ggf. Fehlermeldungen auszuspielen).
Zudem haben wir einen groben Zeitplan aufgestellt, anhand dem die weitere Planung sich orientieren konnte.

==== *04.05.10.02* Übergang in eine neue Projektphase einleiten und managen
Für das im letzten KCI beschriebene Projekt wurde als erste Phase eine Prototyping-Phase definiert.
In dieser sollten einige Ansätze für die Architektur des Moduls evaluiert werden, bevor die tatsächliche Entwicklung des Moduls beginnt.

Für die Prototyping-Phase waren die konkreten Lieferobjekte zu definieren.

Da das Kernziel dieser Phase war, die interne Architektur des Moduls zu ermitteln, habe ich zunächst festgehalten, dass eine Entscheidung bzgl. der konkreten Architektur zu liefern war, inkl. einer Begründung mittels Gegenüberstellung der verschiedenen Optionen.
Außerdem habe ich die Architektur selbst, also eine Dokumentation der relevanten Eigenschaften, als weiteres Lieferobjekt festgehalten, da mit dieser in der nachfolgenden Implementierungsphase weitergearbeitet werden sollte.
Im Laufe der Prototyping-Phase würden zudem Codefragmente entstehen, die für die Evaluierung der Optionen genutzt werden.
Diese habe ich ebenfalls als Lieferobjekte mit aufgenommen, da sie eine gute Orientierung für die spätere Implementierung darstellen.

Anhand der klaren Definition der Lieferobjekte konnte im Laufe der Prototyping-Phase durchgehend sichergestellt werden, dass die entwickelten Beispiele und Ideen sich an dem Ziel der Phase orientieren und keine unnötigen Experimente gestartet wurden.

==== *04.05.10.03* Projektleistung mit dem Projektplan abgleichen und Korrekturmaßnahmen treffen
Für das #glossary("optadata_focus") Schnittstellenprojekt hatte ich die abzuwickelnden Aufgaben bereits klar ausdefiniert.
Dabei waren einige Aufgaben von unserem Kunden umzusetzen, der Rest durch uns.

Im Laufe des Projektes musste der Fortschritt im Blick behalten werden, um diesen sowohl an unsere Geschäftsführung, als auch an den Kunden, zu kommunizieren.

Den Fortschritt habe ich anhand der zuvor definierten Aufgaben gemessen.
Dabei habe ich mir für die Aufgaben, die beim Kunden lagen, in unseren regelmäßigen Update-Meetings ein grobes Status-Update geben lassen.
Für die Aufgaben, die auf unserer Seite lagen, habe ich den Fortschritt in 3 Stufen gemessen:
"Offen", "In Arbeit" und "Abgeschlossen".

Mit den Fortschrittsmessungen konnte ich sowohl unsere Geschäftsführung, als auch den Kunden, jederzeit darüber informiert halten, wo wir im Projekt stehen und ob wir im geplanten Zeitrahmen fertig werden.

==== #strike[*04.05.10.04* Bericht über den Projektfortschritt erstatten]

==== #strike[*04.05.10.05* Projektänderungen beurteilen, Zustimmung für diese einholen und sie implementieren]

==== *04.05.10.06* Eine Phase oder das Projekt abschließen und evaluieren
Im Allgemeinen haben wir als Unternehmen immer versucht aus unseren Projekten zu lernen.

Dazu war es notwendig zu jedem Projekt, bzw. zu jeder Phase (sofern ihr Umfang dies rechtfertigte), die Lessons Learned herauszuarbeiten und festzuhalten.

Unseren üblichen Prozess für Lessons Learned habe ich mit #glossary("nils") zusammen entworfen und mit der Zeit verfeinert.
Da wir festgestellt haben, dass insb. nach längeren Projekten die Beteiligten sich nur schwer an alles erinnern konnten, was im Laufe des Projektes passiert war, haben wir stattdessen einen Prozess eingeführt, der regelmäßig Lessons Learned festhält.
Dazu wurden regelmäßige Gespräche mit den verschiedenen Entwicklern geführt, in denen unter anderem die folgenden zwei Fragen gestellt wurden:
- "Was ist seit dem letzten Gespräch vor- oder aufgefallen, das wir besser handhaben könnten?"
- "Was ist seit dem letzten Gespräch vor- oder aufgefallen, das besonders gut lief?"
#v(-10pt)
Die Fragen sind dabei bewusst offen formuliert, um die Mitarbeiter anzuregen aktiv nachzudenken und ggf. auch Verbesserungsvorschläge selbst zu erdenken und einzubringen.\
Im Anschluss an diese Gespräche sind #glossary("nils") und ich die Ergebnisse zusammen durchgegangen und haben daraus ggf. Maßnahmen abgeleitet und Erkenntnisse in unsere Prozesse integriert.

Über diesen allgemeinen Prozess konnten wir wiederholt Probleme frühzeitig erkennen.
Außerdem haben wir mit den Erkenntnissen über besonders gut gelaufene Situationen unsere Prozesse im Unternehmen weiter optimieren können.

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
#table(
    columns: (1fr, 3fr),
    stroke: none,
    table.header("Abkürzung", "Bedeutung"),
    ..abbr_entries,
)

#pagebreak()
= Glossar
#table(
    columns: (5cm, 1fr),
    stroke: none,
    table.header("Begriff/Name", "Erläuterung"),
    ..glossary_entries,
)

#pagebreak()
= Anhang
#todo("Graphik nochmal als Vektor-Graphik bauen")
#figure(caption: "Design des QRS im Überblick", image("QRS_design.pdf"))<qrs_design>

#todo("Gateway Tasks überarbeiten: Aufgaben checken, Phasen einbauen")
#figure(caption: "", image("optadata_gateway_tasks.svg"))<gateway_tasks>

#[]<appendix_numbering_end>

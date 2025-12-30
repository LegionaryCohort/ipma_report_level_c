#import "@preview/cheq:0.3.0": checklist
#show: checklist

#import "report_abbr.typ": abbr, abbr_entries
#import "report_glossary.typ": glossary, glossary_entries

#let report_version = "2.0"
#let report_date = "27.12.2025"


#let change_mode = true
#let delete(content) = {
    if change_mode {
        text(fill: maroon, strike(content))
    } else {
        []
    }
}
#let add(content) = {
    if change_mode {
        text(fill: olive, underline(evade: true, stroke: 1pt, content))
    } else {
        content
    }
}

#set page(margin: 2.4cm, numbering: none)
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
    set ref(form: "page")
    table(
        columns: (1.7cm, 2cm, 1fr, 2cm),
        table.header("Version", "Datum", "Änderung", "Seite/n"),
        "1.0", "16.12.2025", "Fertigstellung der Version 1.0", "-",
        "1.1", "22.12.2025", "KCI 04.03.02.05 entfernt", [@governance_5],
        "1.1", "22.12.2025", "KCI 04.05.02.02 entfernt", [@anforderungen_2],
        "1.1", "22.12.2025", "KCI 04.05.06.01 entfernt", [@qualitaet_1],
        "1.1", "22.12.2025", "KCI 04.05.09.01 entfernt", [@beschaffung_1],
        "1.1", "22.12.2025", "KCI 04.05.09.03 entfernt", [@beschaffung_3],
        "1.1", "22.12.2025", "KCI 04.03.01.01 detaillierter ausgeführt", [@strategie_1],
        "1.1", "22.12.2025", "KCI 04.04.03.04 detaillierter ausgeführt", [@kommunikation_4],
        "1.2", "23.12.2025", "KCI 04.03.03.04 entfernt", [@compliance_4],
        "1.2", "23.12.2025", "KCI 04.03.03.06 hinzugefügt und beschrieben", [@compliance_6],
        "1.2", "23.12.2025", "KCI 04.04.05.02 entfernt", [@fuehrung_2],
        "1.2", "23.12.2025", "KCI 04.05.01.03 entfernt", [@design_3],
        "1.2", "23.12.2025", "KCI 04.05.03.01 detaillierter ausgeführt", [@leistung_1],
        "1.2", "23.12.2025", "KCI 04.05.04.03 detaillierter ausgeführt", [@termine_3],
        "1.2", "23.12.2025", "KCI 04.05.05.01 detaillierter ausgeführt", [@org_info_1],
        "1.2", "23.12.2025", "KCI 04.05.07.04 entfernt", [@kosten_4],
        "1.3", "24.12.2025", "KCI 04.05.08.02 detaillierter ausgeführt", [@ressourcen_2],
        "1.3", "25.12.2025", "KCI 04.05.03.02 detaillierter ausgeführt", [@leistung_2],
        "1.3", "25.12.2025", "KCI 04.05.04.02 detaillierter ausgeführt", [@termine_2],
        "1.3", "25.12.2025", "KCI 04.05.11.03 detaillierter ausgeführt", [@risiken_3],
        "1.3", "25.12.2025", "KCI 04.05.11.05 detaillierter ausgeführt", [@risiken_5],
        "1.3", "25.12.2025", "KCI 04.03.05.02 detaillierter ausgeführt", [@kultur_2],
        "1.4", "26.12.2025", "KCI 04.05.05.02 detaillierter ausgeführt", [@org_info_2],
        "1.4", "26.12.2025", "KCI 04.05.08.04 detaillierter ausgeführt", [@ressourcen_4],
        "1.4", "26.12.2025", "KCI 04.03.05.01 hinzugefügt und beschrieben", [@kultur_1],
        "1.4", "26.12.2025", "KCI 04.04.03.03: andere Situation gewählt und beschrieben", [@kommunikation_3],
        "1.4", "26.12.2025", "KCI 04.05.06.05 entfernt", [@qualitaet ff.],
        "2.0",
        "27.12.2025",
        "KCI 04.05.09.04: Rückbezug zu anderem KCI entfernt und Satz für Kontext ergänzt",
        [@beschaffung_4],
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
#set par(justify: true, leading: 0.475em, spacing: 1.2em)
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
        v(-2pt)
    }
}

#pagebreak()
#counter(page).update(1)

= Management-Zusammenfassung
In diesem Report gehe ich auf die verschiedenen Herausforderungen und Management-Situationen ein, die im Laufe des von mir verantworteten Produktdaten-Programms, sowie den darin enthaltenen Projekten, bei der #glossary("audoora") aufgetreten sind.

== Anmerkung zum Inhalt dieses Reports
Ich arbeite nicht mehr bei der #glossary("audoora") und habe daher keinen Zugriff auf die entsprechenden Unterlagen.
Alle Inhalte in diesem Report sind nach besten Wissen und Gewissen aus meinem Gedächtnis heraus wiedergegeben.
Die im Anhang befindlichen Abbildungen und Diagramme sind Visualisierungen und/oder Rekonstruktionen der Informationen und Strukturen, auf die im Text Bezug genommen wird.

== Kontext & Umfeld
Die #glossary("audoora") ist ein IT-Startup aus Köln, das sich auf die Hörgerätebranche spezialisiert hat.
Das Unternehmen entwickelt maßgeschneiderte Softwarelösungen für Hörgeräteakustiker und unterstützt bei der Digitalisierung und Optimierung von Geschäftsprozessen.
Die #glossary("audoora") steht zudem im Zentrum des #glossary("nh"), einem Zusammenschluss von Unternehmen und Personen, die einen gesamtheitlichen Ansatz für den Erhalt und Wiederaufbau von Hörgesundheit verfolgen.

Die Geschäftsführung der #glossary("audoora") besteht aus #glossary("sebastian_long") und #glossary("nils_long").
Mit letzterem hatte ich im Rahmen meiner Aufgaben sehr viel Kontakt.
Im weiteren Verlauf des Reports werden beide nur mit Vornamen genannt.

Die politische Situation innerhalb der Hörakustik-Branche, insbesondere bezogen auf das Produktdaten-Programm, war recht angespannt.
Die Hörakustik-Branche wird von einigen großen Herstellern und Einkaufsgemeinschaften dominiert, die mit ihren aktuellen Geschäftsmodellen sehr hohe Margen erzielen.
Diese Geschäftsmodelle werden allerdings derzeit durch neue Akteure am Markt, insb. Online-Händler, stark in Frage gestellt.
Als eines der ersten Software-Unternehmen, die diesen Trend erkannt haben, steht die #glossary("audoora") im Kreuzfeuer zwischen den etablierten Unternehmen der Branche und den Neuankömmlingen.

== Ziele des Programms
Die #glossary("audoora") verfolgt als Unternehmen das Gesamtziel die Hörgesundheitsversorgung in Deutschland zugänglicher und umfassender zu gestalten. Ein großes Hindernis hierfür ist, dass die Hersteller und Einkaufsgemeinschaften, die die Branche derzeit dominieren, die Preise ihrer Produkte unter anderem damit hoch halten, dass sie Informationen über ihre Produkte streng kontrollieren und Vergleiche zwischen Produkten (und damit den Wettbewerb allgemein) schwieriger gestalten.\

Das Programm verfolgte im Kern das daraus abgeleitete strategische Ziel die Produktdaten der Hörakustik-Branche zugänglicher und transparenter zu machen.
Die Motivation hinter diesem Ziel ist zweigeteilt:\
Zum einen führt die erhöhte Transparenz zu einer Vereinfachung von Produktvergleichen, treibt damit den Wettbewerb innerhalb der Branche an und senkt somit die Preise.\
Zum anderen erleichtert die Zugänglichkeit der Daten die Arbeit der Hörakustiker, die die Produkte an die Endverbraucher verkaufen.
Das erspart ihnen Zeit und Geld, das sie stattdessen in eine bessere Beratung und Versorgung der Endkunden investieren können, um selbst wettbewerbsfähig zu bleiben.

Aus diesem Kern-Ziel habe ich mit der Geschäftsführung zusammen weitere Ziele abgeleitet.
Für die Umsetzung dieser abgeleiteten Ziele habe ich dann konkrete Projekte definiert.
Diese Ziele umfassten zum Beispiel:
- _Nutzungsziel:_ Unsere Produktdaten lassen sich mittels standardisierten Katalogen in die gängigen ERP-Systeme der Branche importieren (um den Arbeitsaufwand der Akustiker zu reduzieren).
- _strategisches Ziel:_ Die Qualität unserer Daten ist hoch und überzeugt potentionelle Partner davon, unser Produkdatensystem zu nutzen.
- _Nutzungs- & strategisches Ziel:_ Unsere Daten werden automatisch mit dem neuen ERP-System #glossary("optadata_focus") synchronisiert (um neue potentielle Kunden zu erreichen).

#pagebreak()
= Beschreibung der Management-Herausforderungen
== PM-Pflichtelemente
=== 04.03.02 Governance, Strukturen und Prozesse <governance>
==== *04.03.02.01* Die Grundlagen des Projektmanagements und deren Einführung kennen
Das Produkdatensystem war eines der Software-Angebote, das die #glossary("audoora") angeboten hat.
Die Weiterentwicklung dieses Produkdatensystems war ein umfassendes und vielseitiges Unterfangen, bei dem diverse Dimensionen zu berücksichtigen waren.
Es wurden an verschiedenen Aspekten gearbeitet:
- den zugrundeliegenden Daten
- dem System, das diese in der Datenbank verwaltet
- der Plattform, über die Daten unseren Partnern zur Verfügung gestellt wurden
- Schnittstellen zu anderen Systemen in der Branche
- und der Marketing- und Kommunikationsstrategie, mit der unser Produktdaten-Angebot beworben wurde
#v(-6pt)
Um diesem umfangreichen Vorhaben Herr zu werden, haben wir (#glossary("nils") und Ich) entschieden, dass wir das Vorhaben projektbasiert angehen würden.\
Dazu haben wir konkrete strategische Ziele für das Produkdatensystem entwickelt und aus diesen einzelne Projekte abgeleitet.
Diese Projekte wurden dann als Programm zusammengefasst und in meine Verantwortung überreicht.

Mit der Strukturierung in Form von Projekten haben wir uns selbst einen klaren Überblick über die (geplante) Weiterentwicklung des Systems verschaffen können.
Im weiteren Verlauf konnten wir durch diese Unterteilung auch schneller und gezielter auf Entwicklungen innerhalb der Branche reagieren.

==== *04.03.02.04* Das Projekt mit den Supportfunktionen in Einklang bringen
Innerhalb der #glossary("audoora") haben wir bereits für alle Managementvorgänge das Tool #glossary("notion") verwendet.
In diesem Tool haben wir mithilfe von selbst entworfenen Templates unsere eigenen Prozesse möglichst präzise abgebildet.

Im Rahmen der Vorbereitung und Planung des Programms, sowie der jeweiligen Projekte darin, habe ich für alle benötigten Vorgänge die bereits vorhandenen Templates übernommen und ggf. geringfügig angepasst.
Mit #glossary("nils") habe ich zudem darüber gesprochen wie wir die fortlaufenden Berichterstattung gestalten wollen.
Daraus ergaben sich weitere geringfügige Anpassungen der Templates für das Programm, die ich ebenfalls mit umgesetzt habe.

Im Verlauf des Programms und der einzelnen Projekte haben wir diese Strukturen aktiv für die Verwaltung und Berichterstattung verwendet und nach Bedarf nachjustiert.

#delete([
    ==== *04.03.02.05* Das Projekt mit den Entscheidungs- und Berichterstattungsstrukturen sowie den Qualitätsanforderungen der Organisation in Einklang bringen <governance_5>
    Als kleines Startup fand die endgültige Entscheidung über jegliche strategische Entwicklungen, sowie Budgets und größere Managemententscheidungen, stets auf der Ebene der Geschäftsführung statt.
    Diese haben sich dafür von den jeweils involvierten Mitarbeitern Input geholt, meist in der Form von klärenden Meetings/Workshops.

    Für die Umsetzung des Programmes wurden mir geringfügige Entscheidungsbefugnisse erteilt, um den Ablauf meiner Projekte flüssiger zu gestalten.
    Für die meisten Entscheidungen blieb der etablierte Prozess jedoch bestehen.\
    Ich habe im Falle von solchen Entscheidungen die relevanten Informationen vorbereitet und bin diese anschließend mit #glossary("nils") durchgegangen.
    In einigen Fällen konnte #glossary("nils") damit sofort eine Entscheidung fällen, in anderen hat er sich zuvor mit #glossary("sebastian") abgestimmt und die Entscheidung mir anschließend kommuniziert.
])

==== *04.03.02.06* Das Projekt mit den Prozessen und Funktionen des HR (Personalwesens) in Einklang bringen
Als kleines Startup haben wir bei der #glossary("audoora") keine Schulungen/Fortbildungen im klassischen Sinne durchgeführt (dafür war nie die Zeit oder das Budget da).
Allerdings haben wir vor einiger Zeit als Alternative eingeführt, dass sich jeder Entwickler einmal im Monat einen Tag nehmen kann, um an selbstgewählten Themen zu arbeiten.
Der Tag soll dazu dienen, dass sich Entwickler selbst weiterentwickeln können und dass Technologien und Lösungen getestet werden können, um sie für spätere Projekte als Option besser bewerten zu können.

Ich selbst habe von diesem Tag regelmäßigen Gebrauch gemacht, um mir selbst Technologie-Optionen anzuschauen, die für zukünftige Projekte potentiell in Frage kommen.
Dazu habe ich mir zunächst die geplanten zukünftigen Projekte angeschaut, um deren Anforderungen grob abzuschätzen.
Ich habe dann Technologien ausgewählt, die dazu passen könnten, in denen ich aber noch keine Erfahrungen gesammelt habe.
Anschließend habe ich mittels Prototyping die Möglichkeiten und Grenzen der Technologie erforscht und somit mich selbst weitergebildet und mir ein umfassenderes Bild der Optionen für anstehende Projekte verschafft.

==== *04.03.02.07* Das Projekt mit den Finanz- und Controlling-Prozessen in Einklang bringen
Die übergreifende Kontrolle und Steuerung der Finanzen der #glossary("audoora") lag, wie so vieles, direkt bei der Geschäftsführung.
Entsprechend bestand der übliche Controlling-Prozess in Gesprächen, vor allem mit #glossary("nils"), der die übergreifende Verantwortung für alle Entwicklungsprojekte trug.

Für das Produktdaten-Programm habe ich mit #glossary("nils") regelmäßige Update-Termine vereinbart.
In diesen Gesprächen habe ich ihm den Status der Projekte, sowie die angefallenen und noch geplanten Aufwände, berichtet und diese mit ihm durchgesprochen.

Über die regelmäßigen Updates konnte #glossary("nils") alle notwendigen Informationen erhalten, die er brauchte, um seiner Verantwortung bzgl. der Finanzen nachzukommen.

=== 04.03.03 Compliance, Standards und Regularien
==== *04.03.03.01* Die für das Projekt gültigen Rechtsvorschriften identifizieren und einhalten
Ein Teil der Schnittstelle zu #glossary("optadata_focus") erfordert die Übermittlung von E-Mail-Adressen und Kundennummern der Nutzer des #glossary("optadata_focus") Systems.

Da es sich hierbei um personenbezogene Daten handelt, und mir bekannt war, dass Verstöße gegen die DSGVO hohe Strafen mit sich ziehen können, habe ich diese Tatsache zunächst als Risiko für das Projekt (und das Unternehmen) verbucht.
Ich selbst habe nur begrenzte Erfahrung damit, wie mit solchen Daten zu verfahren ist, um sie DSGVO-konform zu handhaben.
Aus diesem Grund habe ich unseren Datenschutzbeauftragten zu Rate gezogen.\
Diesem habe ich zunächst die geplanten Schnittstellen-Prozesse dargelegt und aufgezeigt an welchen Stellen diese Daten verwendet werden.
Ich habe ihn dann gebeten zu beurteilen, welche Maßnahmen zur Sicherung der Daten notwendig sein würden und mir eine Übersicht über die einzuhaltenden Richtlinien zu erstellen.

Mit der mir zur Verfügung gestellten Übersicht konnte ich in der weiteren Planung sicherstellen, dass die betroffenen Daten korrekt gehandhabt werden und alle Vorgaben der DSGVO eingehalten werden.

#delete([
    ==== *04.03.03.04* Für das Projekt relevante Prinzipien und Ziele der Nachhaltigkeit identifizieren und einhalten <compliance_4>
    Eines der allgemeinen Ziele unseres Unternehmens war es, die Büroarbeit der Akustiker zu vereinfachen.
    Dazu gehörte unter anderem das Ersetzen von Papier-Prozessen durch digitale Vorgänge.
    Damit wurden nicht nur die Effizienzsteigerungen, die mit digitalen Prozessen einhergehen, verfolgt, sondern auch der positive Effekt auf die Umwelt durch die Reduzierung des Papierverbrauchs im operativen Alltag der Akustiker.

    Während dieses Ziel nicht direkt im Vordergrund stand, so habe ich es dennoch oft in Gesprächen mit Akustikern mit angebracht als "Bonus-Effekt", der sich aus einer Umstellung ergibt.
    Tatsächlich wurde in einer früheren Version unserer Produktdatenplattform auch damit geworben, dass #glossary("audoora") für abgeschlossene Einkäufe über die Plattform Bäume pflanzt. Zu dieser Zeit war ich in dem Projekt jedoch nur als Entwickler tätig, die Verantwortung für das Programm habe ich erst später übernommen.
])

==== *04.03.03.05* Für das Projekt relevante fachliche Standards und Tools beurteilen, nutzen und weiterentwickeln
Für die Produktdaten der Hörakustik-Branche existiert der #abbr("himsa") Standard.
Dieser definiert eine Struktur, in der Produktdaten dargestellt und übermittelt werden können.
Der Standard ist innerhalb der Branche weit verbreitet, wird jedoch nicht überall verwendet.
Unser Produktdatenmanagementsystem nutzt beispielsweise eine eigene Struktur, die sich lediglich am #abbr("himsa") Standard orientiert.\
Der Standard ist insb. unter Akustikern gut bekannt und wird oft verwendet, wenn über Produktdaten gesprochen wird.

In meiner Arbeit an den verschiedenen Projekten, die ich verantwortet habe, war dieser Standard quasi omni-präsent.
Zwar war er nicht für jedes Projekt gleichermaßen relevant (beispielsweise beschäftigte sich das #abbr("qrs") nur mit unser eigenen Satenstruktur, während im #glossary("optadata_focus") Projekt der Standard explizit als Übertragungsformat für Produktdatenkataloge gewählt wurde), aber sein Einfluss war dennoch sichtbar.

Für unsere Produktdatenplattform war eine Erweiterung der Geräte-Featuredaten angedacht.
Diese hatte ich angefangen zu planen, bevor sie aus strategischen Gründen in der Gesamtplanung nach hinten geschoben wurde.
Im Rahmen dieser Planung habe ich festgestellt, dass der #abbr("himsa") Standard nicht in der Lage sein würde, die von uns geplanten Erweiterungen mit abzudecken.
Als Konsequenz daraus habe ich mit in die Planung aufgenommen, dass wir die Konvertierung zwischen unserer Struktur und dem Standard deutlich genauer betrachten müssen.
Da eine Anpassung des Standards nicht in unserer Hand lag, wäre es notwendig geworden in der Konvertierung um diesen Umstand herumarbeiten zu müssen.

#add([
    ==== *04.03.03.06* Die Projektmanagementkompetenz der Organisation beurteilen, vergleichen und verbessern <compliance_6>
    Im Rahmen diverser Projekte, auch außerhalb meiner Verantwortung, war es immer wieder notwendig ein direktes Gespräch zwischen unseren Entwicklern auf der einen Seite und den Projekt-Kunden und -Stakeholdern auf der anderen, zu führen, um Detailfragen zu klären.
    Bei diesen Gesprächen kam es wiederholt zu Missverständnissen und unproduktiven Diskussionen.

    Als Kern-Ursache haben wir ermittelt, dass die Kompetenzen einiger unserer Entwickler im Bereich Stakeholder-Management und -Kommunikation ausbaufähig waren.

    Um dem entgegenzuwirken, habe ich für meine Projekte im Vorfeld zu solchen Gesprächen mit den Entwicklern eine Vorbereitung durchgeführt.
    In dieser haben wir die zu klärenden Fragen sauber strukturiert und Formulierungen gesucht, die für den Kunden möglichst verständlich waren.
    Außerdem habe ich die Entwickler darin unterstützt sich mental auf die nicht-technische Natur des Gespräches einzustellen und einzulassen.

    Durch diese Vorbereitungen konnten wir in den Kundengesprächen unnötige Diskussionen vermeiden und Fragen schnell klären.
    Es war uns zudem möglich dem Kunden klar zu vermitteln, dass wir seine Anforderungen und Bedürfnisse verstanden haben und berücksichtigen.
])

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

=== 04.04.05 Führung
==== *04.04.05.01* Initiative ergreifen und proaktiv mit Rat und Tat zur Seite stehen
Das Import Modul, das eine Erweiterung unseres Produktdatenmanagementsystems darstellte, musste zunächst in Funktionalität und Architektur designed werden.

Um auch für die Zukunft gut aufgestellt zu sein, galt es die Architektur möglichst zukunftsorientiert zu wählen.

Ich habe zunächst zusammengetragen welche Anpassungen an unseren Produktdaten in naher bis mittlerer Zukunft noch anstehen.
Da es dazu schon die ein oder anderen Überlegungen gab, konnte ich hier bereits einige Erkenntnisse gewinnen, die für das Design der Architektur nützlich waren.
Zusätzlich habe ich berücksichtigt, dass auch derzeit noch unbekannte Änderungen an unseren Daten anstehen könnten.\
All diese Überlegungen habe ich anschließend im Architekturdesign mit aufgenommen und eine Struktur entwickelt, die eine gewisse Modularität aufweist, um sich später leicht ergänzen zu lassen.

Die Modularität erlaubte es auch im Nachgang neue Import-Protokolle zu definieren, die bisher unbekannte Datenstrukturen mit abbilden können.
Auch ermöglichte dieses Design, dass Änderungen in der Datenstruktur unserer Datenbank mit geringfügigen Änderungen in den bestehenden Import-Protokollen abgebildet werden konnten.

#delete([
    ==== *04.04.05.02* Ownership übernehmen und Commitment zeigen <fuehrung_2>
    Im Frühjahr 2025 haben wir als Unternehmen den ersten #glossary("tdh") veranstaltet.
    Dabei handelt es sich um ein Event in der Hörakustik-Branche, das den Fokus auf den Experten-Austausch innerhalb der Branche legt.
    Auf diesem Event habe ich mich zwischendurch mit Pedro Garcia, dem Geschäftsführer der #glossary("audio_direkt"), über unsere aktuellen Projekte unterhalten.

    Ich habe mit ihm unter anderem über die Entwicklung der Schnittstelle zum #glossary("optadata_focus") ERP-System gesprochen.
    Dabei habe ich vor allem die gute Zusammenarbeit mit #glossary("optadata") hervorgehoben, sowie die Tatsache, dass das Projekt besonders gut voran kommt.
    Da das Thema für einige der Partner seiner Einkaufsgemeinschaft von Interesse war, hat er mir noch einige Fragen zum Projekt gestellt, die ich ihm gerne beantwortet habe.

    Pedro ging, zumindest meinem Eindruck nach, mit einem sehr positiven Bild von der Zusammenarbeit zwischen uns under der #glossary("optadata") aus dem Gespräch heraus.
])

==== *04.04.05.04* Macht und Einfluss angemessen auf Dritte ausüben, um die Ziele zu erreichen
Im Rahmen des Produktdatenprogrammes hatte ich wiederholt Kontakt mit verschiedenen Kunden, die unsere Produktdatenkataloge verwendet haben.
Oftmals habe ich bei konkreten Fragen oder Problemen geholfen, die der Kunde gerade hatte.
Durch mein Auftreten und den wiederholten Kontakt wurde ich oftmals als der Entscheider wahrgenommen, selbst für Themen, die nicht unter meiner Verantwortung lagen.\
Konkret für die Projekte, die ich verantwortet habe, stand für unsere Kunden nie in Frage an wen sie sich bei Fragen oder Anregungen richten können.
Dort wurde ich stets in meiner Rolle als Projektleiter auch als solcher wahrgenommen und behandelt.

==== *04.04.05.05* Entscheidungen treffen, durchsetzen und überprüfen
Viele der Projekte, die ich verantwortet habe, beinhalteten in den initialen Phasen einige Design-Arbeit bzgl. der Code-Architektur.
Da sich die konkreten Herausforderungen dabei immer unterschieden haben, wollte ich sichergehen, dass meine Entscheidungen (und deren zugehörige Begründungen) dennoch robust sind und ich keine groben Fehler in meiner Planung hatte.

Zu diesem Zweck habe ich mir regelmäßig unseren erfahrensten Entwickler hinzugezogen, um die geplante Architektur nochmals zu durchleuchten und meine Entscheidungen zu prüfen.
Insb. beim Design von größeren Strukturen, wie z.B. dem #abbr("qrs"), war der zusätzliche technische Input von außen sehr wertvoll.

Mit diesem Input konnte ich diverse Male Probleme auflösen und habe mir insgesamt eine hohe Sicherheit und Zuverlässigkeit in meine Entscheidungsfindung mit reingeholt.

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

#delete([
    ==== *04.05.01.03* Projektkomplexität und ihre Konsequenzen für den Projektmanagementansatz bestimmen <design_3>
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
])

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
#v(-6pt)
Um zusätzlich das erste strategische Ziel besser zu erfüllen, haben wir die Etablierung von direktem Support von Import-Vorgängen mit Video-Calls als weiteres operatives Ziel mit aufgenommen.

Als Ergebnis hatten wir einen klaren Überblick über die konkreten Ziele des Projektes und zugleich die Sicherheit, dass der Projektscope auf das Notwendige beschränkt wurde.

#delete([
    ==== *04.05.02.02* Bedürfnisse und Anforderungen der Projekt-Stakeholder identifizieren und analysieren <anforderungen_2>
    Eine wichtige Stakeholder-Gruppe des Projektes waren die Endanwender in den Akustiker-Unternehmen.

    Die Bedürfnisse und Anforderungen der Endanwender waren zu identifizieren und dokumentieren.

    Wir hatten bereits ein Netzwerk an Akustikern, die an einer Import-Lösung für #glossary("amparex") interessiert waren.
    Mit diesen habe ich Kontakt aufgenommen und in den Gesprächen systematisch durchleuchtet, wie die Akustiker mit den Produktdaten arbeiten.
    Dabei konnte ich einige konkrete Anforderungen an die Produktdaten ableiten, z.B. die Vollständigkeit und Korrektheit der #abbr("hmv")-Nummern, sowie dass insb. die Daten neuerer Produkte regelmäßig zur Verfügung gestellt werden.
    Zusätzlich konnte ich im Laufe der Gespräche einige Bedürfnisse einschätzen, z.B. dass die Akustiker gerne einen möglichst einfachen Import-Prozess mit wenigen Schritten möchten.
    Das konnte ich daraus schließen, dass nur wenig technisches Verständnis vorhanden war und dass die Aufgabe insgesamt als eine notwendige aber nervige Ablenkung von ihrer eigentlichen Arbeit mit ihren Kunden wahrgenommen wurde.

    Nach den Gesprächen hatte ich eine Übersicht über die Anforderungen und Bedürfnisse der Endanwender, mit der ich die konkreten Features des Imports planen konnte.
])

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

=== 04.05.03 Leistungsumfang und Lieferobjekte
Im Folgenden geht es um das Projekt, in dem wir ein Quality Reporting System (#abbr("qrs")) für unsere Produktdatenbank aufgebaut haben.
Ziel des Projektes war es, dass wir Qualitätsmängel in den Daten zuverlässig erkennen und korrigieren können.

==== *04.05.03.01* Lieferobjekte definieren <leistung_1>
#add([
    Die primären Nutzungsziele des #abbr("qrs") umfassten die Überprüfung unserer Daten auf konkrete Qualitätskriterien, die Zusammenfassung und Darstellung gefundener Probleme in menschen-lesbarer Form, sowie die Möglichkeit manuelle Korrekturen für gefundene Probleme vorzunehmen.
])

#delete([
    Die Lieferobjekte waren zu definieren.
])\
#add([
    Die Lieferobjekte waren zu definieren und mit diesen Nutzungszielen in Verbindung zu setzen.
])

#delete([
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
    #v(-6pt)
])
#add([
    Übergeordnet wurde das gesamtheitliche #abbr("qrs") von #glossary("nils") als Lieferobjekt betrachtet.
    Dieses habe ich zur besseren Übersicht in drei Module aufgeschlüsselt, die weitesgehend unabhängig voneinander entwickelt werden konnten.
    Diese Module waren dabei für die Erfüllung je eines der drei primären Nutzungsziele zuständig.\
    Diese Zusammenhänge sind in der #abbr("qrs")-Übersicht (@qrs_design) visuell dargestellt.
    Die Nutzungsziele sind dort als "Benötigte Kernfunktionen" aufgeführt.
    Mit einem Pfeil sind diese jeweils mit dem zugehörigen Modul verbunden, das dieses Ziel erfüllen soll.\
    Um das #abbr("qrs") tatsächlich für den vorgesehenen Nutzen einsetzen zu können, war es zudem notwendig Qualitätskriterien zu definieren, auf die konkret geprüft werden sollte.
    Diese Kriterien habe ich in Form von Report-Definitionen festgehalten, die die konkreten Arbeitsanweisungen für das #abbr("qrs") enthielten.
    Da das #abbr("qrs") insgesamt so designed war, dass es sich mühelos um beliebige Report-Definitonen erweitern ließ, habe ich zunächst nur zwei konkrete Reports ausdefiniert.
    Diese habe ich ebenfalls als Lieferobjekte mit aufgenommen, da ohne diese das #abbr("qrs") nicht sinnvoll in Betrieb genommen werden könnte.
    Diese Reports sind in @qrs_design als blaue Kacheln wiederzufinden.
])

#delete([
    Anhand der definierten Lieferobjekte wurde die weitere Arbeitspaketplanung vorgenommen.
])\
#add([
    In der weiteren Planung habe ich die konkreten Arbeitspakete anhand der übergeordneten Lieferobjekte ausdefiniert.
    Mit der Aufschlüsselung der Lieferobjekte konnte ich im späteren Verlauf den Fortschritt im Projekt auch detaillierter an #glossary("nils") berichten, ohne unübersichtlich zu werden.
])

==== *04.05.03.02* Leistungsumfang strukturieren <leistung_2>
#delete([
    Für das Projekt musste nun ein Vorgehensmodell begründet ausgewählt werden.
])\
#add([
    Es galt für die Umsetzung des Projektes die Lieferobjekte und daran hängenden Leistungen zu strukturieren und über das Vorgehensmodell zu entscheiden.
])

#delete([
    Auf der einen Seite hatte ich die Lieferobjekte klar definiert und konnte daraus bereits erste Arbeitspakete ableiten.
    Auf der anderen Seite hatten die Entwickler im Unternehmen sich im Laufe vergangener Projekte auf eine agile Arbeitsweise eingependelt.
    Um den etablierten und gewohnten Workflow aufrecht zu erhalten, aber die Klarheit der vorhandenen Planung voll auszunutzen, habe ich mich für einen hybriden Ansatz entschieden.
    Dabei wurden die einzelnen Arbeitspakete in dem üblichen Ablauf bearbeitet, aber die übergreifende Planung folgte einem planbasierten Ansatz.
])\
#add([
    Um den Leistungsumfang genauer aufzuschlüsseln, habe ich zunächst für jedes im vorherigen KCI beschriebene Modul die bekannten Rahmenfaktoren und -Bedingungen festgehalten.
    Aus diesen konnte ich jeweils ableiten welche Strukturen aufzubauen waren, um die Details später umsetzen zu können.
    Ich habe damit quasi jeweils ein Mini-Framework definiert, innerhalb dessen alles weitere einzubauen war.\
    Für diese Frameworks war zunächst unklar wie genau im Detail weiter vorzugehen war.
    Ab dieser Detailtiefe standen noch viele offene Fragen im Raum, die sich erst mit der Umsetzung der konkreten Report-Definitionen (mit denen das ganze System später arbeiten sollte) klären würden.
    Für die betroffenen Bereiche habe ich zunächst nur festgehalten, dass an dieser Stelle weitere Konzeptionierungsarbeit notwendig sein würde.\
    Aufgrund der unvollständigen und noch nicht klar ausdefinierbaren Teile der Struktur, habe ich entschieden das Projekt in einem hybriden Ansatz abzuwickeln.
    Dabei wurden die planbaren und bekannten Teile des Projektes planbasiert umgesetzt.
    Die noch unbekannten Bereiche wurden dann parallel iterativ in agiler Arbeitsweise ausgearbeitet.
    Dabei wurde aus den Struktur- und Architekturentscheidungen, die für die Umsetzung der Reports getroffen wurden, abgeleitet wie genau die Struktur der jeweils betroffenen Module aussehen muss.
    Mit diesen Informationen konnte dann ausgearbeitet werden wie die Module im Detail umzusetzen waren.
])

#delete([
    Entsprechend stand das Vorgehensmodell fest und wurde anschließend umgesetzt.
])\
#add([
    Gemäß meiner Entscheidung wurde das Projekt hybrid umgesetzt.
    Durch die Schrittweise Entwicklung konnte flexibel auf nötige Änderungen in der Detailstruktur der Module, die erst mit der Umsetzung der Reports auffielen, reagiert werden.
    Dadurch konnten wir viel unnötige Anpassungsarbeit einsparen und das Projekt verhältnismäßig zügig umsetzen.
])

==== *04.05.03.03* Arbeitspakete definieren
Für die Projektumsetzung waren Arbeitspakete zu definieren.

Die Arbeitspakete habe ich Schrittweise im Laufe des Projektes aus den Lieferobjekten abgeleitet.
Da zu Beginn die Details des #abbr("qrs")-Frameworks noch nicht alle feststanden, habe ich zunächst ein Arbeitspaket für den einfachsten der #abbr("qrs")-Reports erstellt, damit dieser als Orientierung für das Design des Frameworks verwendet werden kann.
Für die einzelnen Module des Frameworks habe ich jeweils ein Arbeitspaket definiert, um aus den bekannten Schnittstellen und Rahmenbedingungen eine erste Struktur zu entwickeln.
Weitere Pakete habe ich eingeplant, um aus den ersten Strukturen und dem ersten Report anschließend das Framework zu verfeinern und weiter auszubauen.
Diese "Ausbau"-Pakete wurden mit den Erkenntnissen aus den vorangegangenen Paketen (nach deren Abschluss) verfeinert und finalisiert.

Mit der beschriebenen Planung von Arbeitspaketen stand zu jedem Zeitpunkt fest, woran aktuell zu arbeiten ist, sowie welche Aufgaben zukünftig noch zu bearbeiten sind (auch wenn letztere meist noch nicht abschließend feststanden).

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
Im weiteren Verlauf der Planung wurden die Abhängigkeiten zwischen den Aufgaben, sowie die Phasen, in die das Projekt unterteilt wurde, hinzugefügt (siehe die nachfolgenden KCIs).

==== *04.05.04.02* Arbeitsaufwand und Dauer von Aktivitäten festlegen <termine_2>
#delete([
    Für alle Aufgaben musste identifiziert werden, wer die Aufgaben umsetzen sollte.
])

#delete([Für alle Aufgaben habe ich zwei Aspekte])#add([Für alle anstehend Aufgaben habe ich einige planungsrelevante Faktoren]) überprüft:
- In welchem System müssen Anpassungen vorgenommen werden?
- Wird für die Aufgabe spezielles Wissen benötigt, und wenn ja, welches?
#v(-6pt)
#delete([
    Aus den Antworten auf die erste Fragen konnte ich zunächst ableiten welche Aufgaben von der #glossary("optadata") umzusetzen waren (da sie Änderungen am #glossary("optadata_focus") System erforderten).
    Alle restlichen Aufgaben waren durch uns umzusetzen.
    Dabei musste ich, gemäß den Antworten auf die zweite Frage, die Aufgaben denjenigen Entwicklern zuordnen, die über das nötige Spezialwissen verfügen.
    Beispielsweise erforderten die Aufgaben bzgl. des Admin-Interfaces, dass der Entwickler sich mit unserer selbstentwickelten Management-Plattform auskennt, um das Interface dort korrekt einzubauen.
])\
#add([
    Mithilfe dieser Informationen habe ich anschließend ermittelt, an wen die Aufgabe konkret abzugeben war.
    Diese Information war insofern wichtig, da ich die Schätzung des Zeitaufwandes den jeweils zuständigen Personen überlassen habe.
    Insb. im Falle von Aufgaben, zu denen ich selbst nicht die nötige Expertise hatte, war dies wichtig, um eine möglichst realistische Einschätzung zu erhalten.\
    Mit dem Wissen über die Zeitaufwände und zuständige Personen, konnte ich genauer prüfen inwiefern die Zuteilung umsetzbar war.
    Da sowohl auf unserer Seite, als auch seitens #glossary("optadata"), bestimmte Entwickler zeitweise nicht verfügbar waren, habe ich für einige Aufgaben ermittelt an welche andere Entwickler ich diese ggfs. übertragen kann.
    Gerade für die Konzeptionierung und die abschließenden Integration und Test-Phase habe ich sichergestellt, dass das dafür notwendige Expertenwissen verfügbar war.
])

#delete([
    Mit der Zuordnung der Aufgaben konnte ich zum einen sehr schnell und klar dem Kunden kommunizieren welchen Aufgaben er nachkommen muss, und ich konnte mit #glossary("nils") die Verfügbarkeiten unserer Entwickler abklären.
])\
#add([
    Mit den ermittelten Rahmenbedingungen der Aufgaben (Aufwand, erforderliches Wissen, etc.) konnte ich sowohl mit dem Kunden, als auch mit #glossary("nils"), die Verfügbarkeit der nötigen Leute abklären.
    In Teilen konnte ich dadurch auch Abhängigkeiten zwischen Aufgaben ermitteln, die ich zuvor nicht ermittelt hatte.
    Diese sind in die spätere Planung mit eingeflossen.
])

==== *04.05.04.03* Vorgehensweise für Termine und Phasen, ggf. Sprints festlegen <termine_3>
#add([
    Aus dem Fluss-Diagramm, in dem wir die Aufgaben festgehalten haben, ergab sich für das Projekt de facto ein Wasserfall-Ansatz.
    Dies haben wir jedoch im Projektverlauf nie explizit als solches festgehalten oder benannt.
])

#delete([Für die Umsetzung und])#add([Für die weitere Planung der Umsetzung und die]) eindeutige Kommunikation mit dem Kunden, waren die Phasen des Projektes festzulegen.

#delete([
    Ich habe das Projekt in 4 Phasen unterteilt:
    - Spezifikationsphase: _Design der Gateway-Endpoint Spezifikationen_
    - Aufbau eines Test-Gateways: _Bereitstellung des Gateway-Servers inkl. aller Endpoints mit vorläufigen Beispieldaten_
    - Umsetzung der Backend-Logik: _Implementierung der tatsächlichen Logik innerhalb aller Endpoints_
    - Testing & Fine-Tuning: _Gemeinsamer Integrations-Test des vollen Schnittstellenprozesses_
    Der Abschluss jeder Phase stellte dabei einen Meilenstein dar, für den ich mit der #glossary("optadata") eine Deadline vereinbart habe.
])\
#add([
    Zunächst habe ich das Projekt in 3 Phasen unterteilt: "Specification", "Implementation" und "Integration & Test".
    Da die Phasen primär als Orientierung zur Kommunikation dienten, haben wir keine konkreten Zeiträume je Phase festgelegt.
    Vielmehr haben wir im Verlauf des Projektes Deadlines für einzelne Aufgaben definiert sobald wir diese angegangen sind.\
    Zu Beginn des Projektes sollte auf Kundenwunsch hin im Rahmen der Spezifikation auch geprüft werden, dass das Projekt so funktionieren würde, wie wir uns das vorgestellt haben.
    Aufgrund dieses Wunsches habe ich zusätzlich die "Test-Gateway"-Phase mit aufgenommen, in der zum Abschluss der Spezifikation genau diese Prüfung stattfinden sollte.
])

#delete([
    Dank der groben Phasenplanung konnten wir besser mit der #glossary("optadata") koordinieren.
    Anhand der Phasenplanung wurden alle weiteren (Detail-)Schritte definiert.
    Siehe auch @gateway_tasks, in der die Phasen übergreifend mit abgebildet sind.
])\
#add([
    Da wir die Umsetzung und Kontrolle des Projektes direkt anhand des Aufgaben-Fluss-Diagrammes vorgenommen haben, hatten die Phasen selbst hierfür wenig Bedeutung.
    Vielmehr dienten sie, wie bereits erwähnt, der klaren Kommunikation mit dem Kunden.
    Durch die Unterteilung in die verschiedenen Phasen konnte ich in Gesprächen mit dem Kunden immer schnell einen Orientierungspunkt geben, wo wir gerade stehen und was noch passieren muss, ohne dass wir jedes mal das Diagramm nach konkreten Aufgaben durchsuchen mussten.
])

==== *04.05.04.04* Abfolge der Projektaktivitäten bestimmen und einen Ablauf- und Terminplan erstellen
Einige der Aufgaben, z.B. die Bereitstellung von Testdaten, konnten erst umgesetzt werden, wenn andere Aufgaben zuvor erledigt wurden (Im Fall des Beispiels die Bereitstellung des Gateway-Servers mit entsprechenden Endpoints).

Für alle Aufgaben im Projekt waren die Abhängigkeiten untereinander zu bestimmen.

Für jede Aufgabe habe ich, im Rahmen der Definition der Aufgabe, bereits festgehalten welche Vorbedingungen erfüllt sein müssen, damit die Aufgaben beginnen kann, z.B.:
- Implementierung Gateway-Logik: _Gateway-Framework muss fertiggestellt sein_
- Admin-Interface für die Verwaltung deployen & testen: _alle internen Gateway-Endpoints sind fertiggestellt, deployed und getestet_
#v(-6pt)
Anhand der Vorbedingungen konnte ich bestimmen welche Aufgaben erledigt sein müssen (bzw. genauer welche Ergebnisse aus welchen Aufgaben geliefert worden sein müssen), damit die betrachtete Aufgabe beginnen kann.
Diese Verhältnisse habe ich in Form eines Ablaufdiagramms festgehalten (siehe @gateway_tasks).

Die fertige Ablaufplanung diente für die Umsetzung des Projektes als leitende Referenz und de facto Todo-Liste.

=== 04.05.05 Organisation, Information und Dokumentation
Für das gesamte Programm habe ich mich zu Beginn im Rahmen der Übergabe mit #glossary("nils") zusammengesetzt, um die Details der Zusammenarbeit zu klären.
Ein Teil dieser Gespräche war die Klärung der verwendeten Informations- und Kommunikationsstrukturen.

==== *04.05.05.01* Bedürfnisse der Stakeholder bezüglich Information und Dokumentation beurteilen und bestimmen <org_info_1>
Im Rahmen der initialen Planung waren die verschiedenen (formellen und informellen) Kommunikationsarten festzulegen und einzuführen.

#delete([
    Für das Programm selbst war lediglich #glossary("nils") informiert zu halten.
    Dazu habe ich mich mit dieser zusammen ausdefiniert, in welcher Form und Häufigkeit der Informationsaustausch stattfinden sollte.
    Akute Probleme oder Hindernisse wurden in unserem bereits etablierten täglichen Meeting behandelt (nach Bedarf mit dedizierten Folge-Meetings).
    Für allgemeine Status-Updates, sowie alle Themen, die von geringerer Dringlichkeit waren, haben wir einen 2 bis 4-wöchigen Regeltermin eingeführt.\
    Die Dokumentation, sowohl für das Projektmanagement, als auch die Projektinhalte, habe ich in eigens dafür angelegten Bereichen in unserer bereits etablierten Plattform für Wissensmanagement, #glossary("notion"), abgelegt.
])\
#add([
    Das übergreifende Produktdatenprogram selbst wurde als rein internes Thema gehandhabt, bei dem unsere Entwickler auch nur bedingt involviert waren.
    Entsprechend war hier nur #glossary("nils") informiert zu halten.
    Die formelle Dokumentation haben wir dabei, wie sonst im Unternehmen üblich, über #glossary("notion") gehandhabt, während alle weiteren Themen informell und nach Bedarf in Meetings oder Gesprächen zwischendurch geklärt wurden.

    Für die einzelnen Projekte habe ich zusätzlich identifiziert wer zu informieren war und in welchem Umfang.
    Für interne Projekte, wie beispielsweise das #abbr("qrs") Projekt, waren die involvierten Entwickler zu informieren.
    Diese wurden über Meetings und im regelmäßigen täglichen Austausch informell auf dem aktuellen Stand gehalten.
    Die formelle Dokumentation der Tätigkeiten fand ebenfalls über #glossary("notion") statt, sowie innerhalb der Codebase, sofern angemessen.\
    Für externe Projekte, also solche, die für einen konkreten Kunden durchgeführt wurden, kamen zusätzlich die entsprechenden externen Stakeholder seitens des Kunden hinzu.
    Für diese habe ich zum Projektbeginn im direkten Gespräch den konkreten Bedarf an Informationen ermittelt und entsprechend Kommunikationswege eingeplant.
    Beispielsweise habe ich im #glossary("optadata_focus") Projekt mit dem Kunden geklärt, dass wir ihnen die technische Dokumentation online zur Verfügung stellen, während alles Organisatorische mittels regelmäßigen Meetings geklärt wird.
])

#delete([
    Über die festgelegten Kommunikationswege konnten wir im Laufe des gesamten Programms stets zügig und effizient über alle anstehenden Themen kommunizieren.
])\
#add([
    Über die verschiedenen Kommunikationsarten und -kanäle war es mir möglich stets die benötigten Informationen an die richtigen Leute zu leiten.
])

==== *04.05.05.02* Struktur, Rollen und Verantwortlichkeiten im Projekt definieren <org_info_2>
Es galt die konkreten Verantwortlichkeiten zu verteilen.

Allgemein sind wir im Unternehmen Aufgaben meist kollaborativ angegangen, d.h. Verantwortung für Aufgaben wurde nicht auf Einzelpersonen übertragen, sondern auf mehrere Personen zusammen (in den allermeisten Fällen Personenpaare).
Da sich dieser Ansatz in der Vergangenheit bewährt hatte, haben wir entschieden ihn für das Programm mit zu übernehmen.
Konkret hieß das, dass ich die Planung der einzelnen Projekte in Leistungen, Zeit und Budget meist kollaborativ mit #glossary("nils") im Vier-Augen-Prinzip durchgeführt habe.
Die Verantwortung für die tatsächliche Umsetzung und Überwachung derselben lag wiederum bei mir allein.\
Wir haben zudem festgelegt, dass die Zuteilung von zusätzlichen Ressourcen, insb. Entwicklern, auf einer case-by-case Basis stattfinden würde.
Dazu war es meine Aufgabe den Bedarf für das betreffende Projekt zu ermitteln und diesen an #glossary("nils") zu melden.
Im gemeinsamen Gespräch wurde dann ermittelt wie wir diesen Bedarf konkret decken wollen und ggfs. entsprechende Freigaben durch #glossary("nils") erteilt.
Mir wurde dabei nur die fachliche Weisungsbefugnis übertragen, und nur für die abgesprochene Dauer innerhalb des Projektes.

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

=== 04.05.06 Qualität <qualitaet>
#delete([
    ==== *04.05.06.01* Qualitätsmanagementplan für das Projekt entwickeln, die Implementierung überwachen und gegebenenfalls überarbeiten <qualitaet_1>
    Das Projekt für die Implementierung eines Import-Moduls in unser Produktdatensystem beinhaltet viel Entwicklung mit der Programmiersprache #glossary("python").
    Aus der Erfahrung aus vergangenen Projekten heraus war bekannt, dass es im Rahmen der Entwicklung mit #glossary("python") häufiger zu Type-Fehlern, einer bestimmten Klasse von Programmierfehlern, kommen kann.

    Um dem vorzubeugen waren Qualitätsmaßnahmen zu definieren und einzuführen.

    #glossary("python") bietet seit Version 3.5 Type-Hinting an, ein Werkzeug das dabei hilft Type-Fehler zu vermeiden.
    Für das nun anstehende Projekt habe ich dementsprechend die umfassende Verwendung von Type-Hinting als Code-Vorgabe mit aufgenommen.
    Konkret habe ich ein Tool vorgegeben, das den gesamten Sourcecode des Projektes analysiert, dabei die besagten Type-Hints berücksichtigt und potentielle Type-Fehler hervorhebt.
    Jegliche Fehlermeldungen und Warnungen des Tools waren durch Anpassung des Codes zu beheben, damit der betroffene Code akzeptiert wird.

    Durch die strikte Einhaltung dieser Vorgaben, sind im Laufe des Projektes erheblich weniger Type-Fehler aufgetreten.
])

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

=== 04.05.07 Kosten und Finanzierung
==== *04.05.07.01* Projektkosten abschätzen
Wir haben im Unternehmen stets darauf geachtet für unsere Projekte übergreifende Standards zu entwickeln und etablieren.
Die Projekte, die ich durchgeführt habe, waren alles Neu- oder Weiterentwicklungen von Systemen, um eine neue Idee bzw. ein neues Feature umzusetzen.
Als solche gab es keinen direkten Vergleichswert für das gesamte Projekt, auf den sich für Schätzung rückbezogen werden könnte.

Für meine Projekte galt es eine Methode der Kostenkalkulation zu wählen.

Im Rahmen der Planung meiner Projekte, habe ich die Projekte natürlich in ihre nötigen Aufgaben unterteilt.
Während für die Projekte als Ganzes keine direkten Vergleichswerte existierten, war es durchaus möglich die Aufgaben so zu definieren, dass sie Aufgaben aus anderen Projekten möglichst ähnlich waren.
Über diese Ähnlichkeiten konnten viele Aufgaben gut eingeschätzt werden, indem auf die Erfahrungswerte aus den anderen Projekten zurückgegriffen wurde.\
Für solche Aufgaben, für die es in anderen Projekten keinen Vergleichswert gab, habe ich auf die Einschätzung unserer Entwickler (mich eingeschlossen) zurückgegriffen.
Die Schätzungen wurden dabei bewusst großzügiger gemacht, um einen inhärenten Risikopuffer mit abzubilden.\
Auf den ermittelten Gesamtaufwand wurde zudem ein Pauschalpuffer hinzuaddiert (siehe nächster KCI).

Mittels der beschriebenen Schätzungen habe ich für meine Projekte klar an #glossary("nils") kommunizieren können mit welchem Aufwand zu rechnen ist.

==== *04.05.07.02* Projektbudget erstellen
In vergangenen Projekten hat sich gezeigt, dass die Abweichungen vom Zeitplan bei Neuentwicklungen erheblich sein können (in beide Richtungen).
Aus diesem Grund haben wir im Unternehmen etabliert, dass alle Projekte mit einem großen Pauschalpuffer geplant werden, um diese Abweichungen abzufedern.

Für die von mir verantworteten Projekte galt es den Puffer für Unvorhergesehenes mit einzuplanen.

Ich habe für jedes Projekt, gemäß dem im Unternehmen etablierten Vorgehen, den Pauschalpuffer berechnet und mit eingeplant.
Für die Berechnung habe ich jede Aufgabe grob in ihrem Aufwand eingeschätzt.
Der Puffer wurde dann gemäß Richtlinie aus dem Gesamtaufwand ermittelt und als in die Planung mit einbezogen.

==== *04.05.07.03* Projektfinanzierung sichern
Budgetfreigaben, die über geringfügige Beträge hinaus gingen, wurden grundsätzlich von den Geschäftsführern gemeinsam entschieden.
Dafür wurde für eine konkrete Projektidee mit #glossary("nils") zusammen ein Projektplan erstellt, aus dem Kosten und Dauer des Projektes hervorgehen.
Dieser Plan wurde dann als Entscheidungsgrundlage verwendet, um über die Freigabe des benötigten Budgets zu entscheiden.

Diesen Prozess galt es für meine Projekte zu befolgen.

Die Projekt-Ideen für die Projekte, die ich verantwortet habe, ergaben sich meist aus meinem regelmäßigen Austausch mit #glossary("nils").
Diese Ideen wurden dann von mir zunächst weiterentwickelt, um ein genaueres Bild davon zu bekommen, was die Umsetzung konkret erfordern und bedeuten würde.
Anschließend, sofern die Idee weiterhin sinnvoll erschien, habe ich, wie oben bereits beschrieben, daraus in Zusammenarbeit mit #glossary("nils") einen Projektplan aufgestellt.

Zu allen für sinnvoll erachteten Projektideen konnte #glossary("nils") einen Projektplan mit #glossary("sebastian") besprechen und über die Budgetfreigabe entscheiden.

#delete([
    ==== *04.05.07.04* Finanzmanagement- und Berichtssystem für das Projekt entwickeln, einrichten und aufrechterhalten <kosten_4>
    Für die Projekte, für die ich verantwortlich war, habe ich in regelmäßigen Abständen den Status im Rahmen eines Meetings an #glossary("nils") berichtet.

    Für diese Meetings galt es passende Berichte zu entwickeln.

    Grundsätzlich haben wir jegliche Organisation von unseren Projekten in #glossary("notion") verwaltet.
    Ebenso sind wir in unseren Meetings immer direkt durch unsere Strukturen in #glossary("notion") gegangen und haben über die Inhalte gesprochen.
    Dementsprechend habe ich die benötigten Informationen, die es zu berichten galt (darunter auch bisherige Aufwände & Kosten), möglichst in unseren Strukturen in #glossary("notion") eingetragen.
    Für Detail-Informationen, die keinen vorgesehenen Platz in unseren Strukturen hatten, habe ich gezielt ergänzende Strukturen aufgebaut.
    Beispielsweise musste im #glossary("optadata_focus") Projekt ein neuer Server aufgesetzt werden, für den entsprechende Kosten anfielen.
    Da die Verwaltung unserer eigenen Server nicht vorsah, dass wir Server für einzelne Kunden anlegen, habe ich die nötigen Daten hierzu in einem eigenen Bereich innerhalb der Projektorganisation angelegt.

    Über die Informationen innerhalb von #glossary("notion") konnte #glossary("nils") jederzeit nachvollziehen auf welchem Stand sich die Projekte befanden.
])

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

==== *04.05.08.02* Qualität und Menge der benötigten Ressourcen definieren <ressourcen_2>
#delete([
    Für die Umsetzung des gesamten Projektes galt es, eine Ressourcenplanung aufzustellen.
])\
#add([
    Für das Projekt galt es die Menge und Qualität der benötigten Ressourcen zu definieren.
])

Ich habe für jedes Arbeitspaket, das ich in meiner vorherigen Planung definiert hatte, den Bedarf an Wissen & Kompetenzen bestimmt.
#delete([Dabei])#add([Konkret]) habe ich die benötigten Frontend- und Backend-Entwicklungsskills beurteilt,
#delete([
    sowie die benötigten Vorkenntnisse zu bestehenden Systemen (sofern relevant).
])
#add([
    die für die Umsetzung der erforderlichen Änderungen benötigt wurden.
    Zudem habe ich analysiert welche Vorkenntnisse und/oder welches Spezialwissen zu bestehenden Systemen für die Aufgaben notwendig waren.
])
#add([
    Den ermittelten Bedarf an Wissen & Kompetenzen habe ich pro Arbeitspaket festgehalten.\
    Zudem bestand für die Umsetzung in jedem Fall pro eingesetztem Entwickler ein Bedarf an der nötigen Ausrüstung und zugehörigen Tools, um die Entwicklungsarbeit leisten zu können.
    Diese Bedarfe habe ich nicht mit aufgenommen, da diese Ressourcen unseren Entwicklern dauerhaft zugewiesen waren und somit nicht separat geplant werden mussten, da sie als "Gesamtpaket" gehandhabt wurden.\
    Zusätzlich habe ich den Bedarf an IT-Infrastruktur ermittelt.
    Da Teil unserer Aufgabe die Bereitstellung eines Gateway-Servers war, musste ich diesen (inkl. Einrichtungsaufwände & Co.) mit einplanen und von #glossary("nils") freigeben lassen.
    Diese Bedarfe an Infrastruktur habe ich separat zum Aufgabenplan aufgelistet und an #glossary("nils") übergeben.
])

#delete([
    Die Übersicht der Arbeitspakete wurde mit den dafür notwendigen Kompetenzen angereichert und stand für die weitere Planung zur Verfügung.
])\
#add([
    Mit den ermittelten Bedarfen an Expertenwissen und entwicklerischen Fähigkeiten habe ich die Arbeitspaket-Übersicht angereichert.
    Über diese Zuordnung konnte ich anschließend ermitteln in welchen Zeiträumen ich bestimmte Entwickler benötigen würde und bis wann der Gateway-Server verfügbar sein musste.
])

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

==== *04.05.08.04* Ressourcen gemäß dem festgelegten Bedarf zuweisen und verteilen <ressourcen_4>
Für das Projekt waren die Aufgaben klar zuzuteilen und entsprechende Aufgabenlisten zu erstellen.

Da der Großteil der Design-Arbeit bereits von mir durchgeführt wurde, habe ich die entsprechende Umsetzung ebenfalls mir selbst zugeteilt.
Dadurch entstanden an dieser Stelle keine zusätzlichen Aufwände durch Übergaben oder Missverständnisse im Design.
Die Umsetzung umfasste dabei den Aufbau der Reports sowie dem Kern des #abbr("qrs"), das die tatsächliche Datenverarbeitung vornahm.\
Die Kontrolle der Ergebnisse, insb. solcher, die später von anderen verwendet werden sollten (also die Report-Definitionen, sowie die Protokolle und Fehlerlisten, die als Zwischenergebnisse produziert werden), habe ich #glossary("nils") zugewiesen.
Dabei habe ich berücksichtigt, dass er noch diverse andere Tätigkeiten als Geschäftsführer auszuführen hatte.
Dementsprechend habe ich sichergestellt, dass die konkrete Aufgabenliste für ihn ausschließlich solche Aufgaben enthielt, die ich nicht selbst übernehmen konnte bzw. sollte.
Konkret waren vor allem die von mir entworfenen Zwischenergebnisse nicht von mir selber zu prüfen, hier war explizit ein 4-Augen-Prinzip vorgesehen.\
Für die Anbindung des #abbr("qrs") habe ich die im vorherigen KCI beschriebenen Aufgaben dem Entwickler zugewiesen, der bei uns das Expertenwissen zur Plattform hielt.
Auch hier habe ich eine Aufgabenliste erstellt, um dem Entwickler eine möglichst klare Übersicht zu schaffen was zu erledigen war.
Für diese Aufgabenliste habe ich ebenfalls geprüft, dass sie keine Aufgaben enthielt, die ich nicht auch selbst übernehmen könnte.\
Zu guter letzt habe ich mir eine eigene Übersicht über die verbleibenden Aufgaben erstellt.
Diese habe ich in Form eines Kanban-Boards für mich selbst angelegt, auf dem ich im weiteren Verlauf den Fortschritt festgehalten habe.
In dieser Übersicht habe ich zudem markiert, welche Aufgaben zwingend erfüllt sein mussten, bevor ich die ausgelagerten Aufgaben an den Entwickler bzw. an #glossary("nils") abgeben konnte.

Mithilfe der klaren Zuteilung und zugehörigen Aufgabenlisten konnte ich sicherstellen, dass stets einfach einsehbar war, was die nächsten zu erledigenden Schritte sind.
Der zusätzliche Entwickler und #glossary("nils") wurden von mir klar informiert welche Aufgaben sie wann erledigen mussten, sodass sie sich diese Tätigkeiten frühzeitig einplanen konnten.

=== 04.05.09 Beschaffung<beschaffung>
Über die aufgebaute Schnittstelle zu #glossary("optadata_focus") werden in regelmäßigen Abständen unsere Produktdaten übertragen.
Um für Nutzer eine möglichst gute User-Experience sicherzustellen, sollten unsere Daten in #glossary("optadata_focus") zwischengespeichert werden, um sie von dort aus schneller an Nutzer verteilen zu können.
Dabei sollte weiterhin die Hoheit über die Daten, also die Vergabe von Zugängen, bei uns bleiben.

#delete([
    ==== *04.05.09.01* Beschaffungsbedarf, Optionen und Prozesse vereinbaren <beschaffung_1>
    #glossary("nils") benötigte Unterstützung in der Vorbereitung des Kooperationsvertrages, insb. dessen fachlichen Inhalte.

    Ich habe die konkreten Risiken, die sich aus der Herausgabe unserer Daten ergeben, beurteilt und daraus konkrete Anforderungen, die von der #glossary("optadata") zu erfüllen waren, abgeleitet.
    Diese beinhalteten technische Anforderungen an die Absicherung der in #glossary("optadata_focus") liegenden Daten gegen unberechtigten Zugriff, die Beschränkung des Zugriffs auf berechtigte User, sowie die Überprüfung von User-Berechtigungen über von uns zur Verfügung gestellte Gateway-Endpoints.\
    Zudem habe ich die Anforderungen seitens #glossary("optadata") bzgl. der Verfügbarkeit unseres Gateways im Gespräch geklärt und in die Zusammenstellung der vertraglich festzuhaltenden Anforderungen mit aufgenommen.

    #glossary("nils") hat anschließend aus der Aufstellung der Anforderungen den Kooperationsvertrag erstellt.
])

==== *04.05.09.02* Zur Evaluation und Auswahl von Lieferanten und Partnern beitragen
Es musste beurteilt werden, welche Besonderheiten in der Zusammenarbeit mit #glossary("optadata") existierten, und ein geeignetes Partnerschaftsmodell entschieden werden.

Zunächst habe ich zwei mögliche Modelle für die Absicherung unserer Daten entworfen, die unterschiedliche Level an Kontrolle über die Daten abbilden:
- #underline[Nutzerschlüssel]: Wir sichern unsere Daten selber mittels Zugangsschlüsseln gegen unbefugten Zugriff ab. Jeder User erhält dabei einen Schlüssel, der nur dem User (und nicht der #glossary("optadata")) bekannt ist.
- #underline[Kooperationsvertrag]: Wir sichern den Zugang zu unseren Daten nur so ab, dass außer der #glossary("optadata") niemand sonst Zugriff hat. Die Herausgabe unserer Daten an die Nutzer von #glossary("optadata_focus") wird dabei über einen Kooperationsvertrag geregelt.
#v(-6pt)
Diese Modelle habe ich anschließend im Austausch mit #glossary("nils") gegenübergestellt und die Vor- und Nachteile mit ihnen diskutiert.

#glossary("nils") hat sich für die Vereinbarung eines Kooperationsvertrages entschieden.

#delete([
    ==== *04.05.09.03* Zu Verhandlungen und Vereinbarungen von Vertragsbestimmungen beitragen, um diese in Einklang mit den Projektzielen zu bringen <beschaffung_3>
    Eine der Bestimmungen des Kooperationsvertrages war es, dass wir eine hohe Zuverlässigkeit in unserem Gateway sicherzustellen hatten.

    Es galt diese Vertragsbestimmung und ihre Auswirkungen auf das Projekt zu reflektieren.

    Ich habe analysiert wie die beiden größten Faktoren für die geforderte Zuverlässigkeit, Serverlast und Antwortgeschwindigkeit, in unserem Gateway optimiert werden können.
    Dabei habe ich eine handvoll möglicher Änderungen in unseren geplanten Gateway-Endpoints identifiziert.
    Die Änderungen habe ich zudem in ihrem Umfang eingeschätzt.

    Die notwendigen Änderungen konnten anschließend eingeplant und umgesetzt werden (s.u.).
])

==== *04.05.09.04* Vertragsausführung überwachen, Probleme ansprechen und, falls notwendig, Entschädigungen verlangen <beschaffung_4>
Um die vertraglich geforderte Zuverlässigkeit, Serverlast und Antwortgeschwindigkeit unseres Gateways sicherzustellen, hatte ich eine handvoll nötige Änderungen an unseren Gateway-Endpoints identifiziert.

Es galt die identifizierten Maßnahmen zum Managen der Vertragserfüllung umzusetzen.

Die im identifizierten Änderungen an unseren Endpoints habe ich in die entsprechenden Arbeitspakete mit eingeplant.
Da ich eingeschätzt hatte, dass es sich dabei weitesgehend um geringfügige Anpassungen handelte, änderte der Umfang der Arbeitspakete sich nicht nennenswert.
Eine Anpassung des Terminplans habe ich entsprechend als nicht notwendig bewertet.

Durch die Einführung der Änderungen in unseren Endpoints wurde die Serverlast reduziert und eine höhere Antwortgeschwindigkeit sichergestellt.
Damit haben wir eine hohe Gesamtzuverlässigkeit unseres Gateways erreicht und unsere vertragliche Verpflichtung erfüllt.

=== 04.05.10 Planung und Steuerung
==== *04.05.10.01* Projekt starten, Projektmanagement-Plan entwickeln und Zustimmung einholen
Für den Aufbau des Import-Moduls für unser Produktdatenmanagementsystem war zu Beginn nur klar, dass das allgemeine Ziel sein sollte, den Import-Prozess zu vereinfachen und das benötigte Spezialwissen zu reduzieren.

Es war ein Projektstart-Workshop zu organisieren (und moderieren), um den gewünschten Funktionsumfang und die Ziele des Projektes näher auszuarbeiten.

Ich habe zunächst die wichtigsten Stakeholdergruppen ermittelt:
- Unsere Geschäftsführung, die das Projekt in Auftrag gegeben hat
- Die Endanwender, die mit dem Import-Modul später arbeiten sollten
#v(-6pt)
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

==== *04.05.10.06* Eine Phase oder das Projekt abschließen und evaluieren
Im Allgemeinen haben wir als Unternehmen immer versucht aus unseren Projekten zu lernen.

Dazu war es notwendig zu jedem Projekt, bzw. zu jeder Phase (sofern ihr Umfang dies rechtfertigte), die Lessons Learned herauszuarbeiten und festzuhalten.

Unseren üblichen Prozess für Lessons Learned habe ich mit #glossary("nils") zusammen entworfen und mit der Zeit verfeinert.
Da wir festgestellt haben, dass insb. nach längeren Projekten die Beteiligten sich nur schwer an alles erinnern konnten, was im Laufe des Projektes passiert war, haben wir stattdessen einen Prozess eingeführt, der regelmäßig Lessons Learned festhält.
Dazu wurden regelmäßige Gespräche mit den verschiedenen Entwicklern geführt, in denen unter anderem die folgenden zwei Fragen gestellt wurden:
- "Was ist seit dem letzten Gespräch vor- oder aufgefallen, das wir besser handhaben könnten?"
- "Was ist seit dem letzten Gespräch vor- oder aufgefallen, das besonders gut lief?"
#v(-6pt)
Die Fragen sind dabei bewusst offen formuliert, um die Mitarbeiter anzuregen aktiv nachzudenken und ggf. auch Verbesserungsvorschläge selbst zu erdenken und einzubringen.\
Im Anschluss an diese Gespräche sind #glossary("nils") und ich die Ergebnisse zusammen durchgegangen und haben daraus ggf. Maßnahmen abgeleitet und Erkenntnisse in unsere Prozesse integriert.

Über diesen allgemeinen Prozess konnten wir wiederholt Probleme frühzeitig erkennen.
Außerdem haben wir mit den Erkenntnissen über besonders gut gelaufene Situationen unsere Prozesse im Unternehmen weiter optimieren können.

=== 04.05.11 Chancen und Risiken
Die nachfolgenden KCIs beziehen sich alle auf den Aufbau des neuen Import-Moduls für unser Produktdatenmanagementsystem.
Konkret geht es dabei um die Schnittstelle zwischen dem Import-Modul und der Produktdatenbank, die gegen Fehler abzusichern war.

==== *04.05.11.02* Chancen und Risiken identifizieren
Da das Import-Modul direkten Zugang zu unserer Produktdatenbank zwingend erfordert, um die Imports durchzuführen, habe ich im Rahmen der Planung direkt das Risiko identifiziert, dass fehlerhafte Zugriffe auf die Datenbank zu erheblichem Schaden an unseren Daten führen könnte.
Dabei habe ich drei mögliche Fehlerkategorien festgehalten:
- Fehlerhaftes Abspeichern der Neudaten
- Fehlerhafte Anpassung bestehender Daten
- Unvollständigkeit der Daten bei abgebrochenem Import-Vorgang
#v(-6pt)
Alle drei Kategorien waren in der weiterführenden Bewertung zu betrachten und Maßnahmen zu ermitteln (siehe nächste KCIs).

==== *04.05.11.03* Wahrscheinlichkeit und Auswirkungen von Chancen und Risiken analysieren <risiken_3>
Die zuvor identifizierten Fehlerkategorien waren in ihrem potentiellen Ausmaß zu bewerten.

#delete([
    Die Fehlerkategorien habe ich jeweils quantitativ ("Wie viele Datensätze sind betroffen?") und qualitativ ("Wie aufwändig ist die Korrektur der einzelnen Fehler?") beurteilt.
])
#add([
    Bei den Fehlerkategorien handelt es sich jeweils um fehlerhafte Zugriffe auf die Datenbank.
    Entsprechend war mir klar, dass die Quelle dieser Fehler in jedem Fall der Code ist, der diesen Zugriff initiiert.\
    Ich konnte zudem unterschiedliche Bedingungen festhalten, die für das Eintreten der Fehler erfüllt sein mussten:
    - Unzureichende Kontrolle der abzuspeichernden Daten
    - Fehlerhafte Verwendung der Datenbank-Library, die den tatsächlichen Zugriff durchführt
    - Abbruch des Imports entweder durch den Nutzer, oder durch einen unbehandelten Fehler an beliebiger anderer Stelle des Codes
    #v(-6pt)
    Insb. die letzte Bedingung habe ich dabei als kritisch bewertet, da hier ein beliebiger Fehler an beliebiger Stelle zu einem Abbruch führen könnte. Es würde also nahezu unmöglich sein diese Eintrittsbedingung gänzlich zu vermeiden.\
    Um die Auswirkungen der Fehler besser einzuschätzen, habe ich zudem die Fehlerkategorien in 3 Messgrößen bewertet:
    - Auftrittswahrscheinlichkeit ("Wie wahrscheinlich sind Fehler dieser Kategorie?")
    - Tragweite ("Wie viele Datensätze sind im Normalfall betroffen, wenn dieser Fehler auftritt?")
    - Komplexität ("Wie aufwändig ist die Korrektur eines Fehlers der betrachteten Kategorie?")
    #v(-6pt)
])
Diese Beurteilung habe ich in einer Tabelle festgehalten (für eine Rekonstruktion siehe @import_error_analysis).
#delete([
    Zudem habe ich die Auftrittswahrscheinlichkeit der Kategorien beurteilt und in derselben Aufstellung festgehalten.
])\

#delete([
    Die Bewertung der Risiken wurde verwendet, um angemessene Maßnahmen zu entwerfen.
])\
#add([
    Anhand der Bewertung der Risiken konnte ich anschließend sinnvolle Maßnahmen entwerfen und vor allem meinen Fokus auf den Abbruch eines Imports als kritischstes Risiko legen.
    Eine nähere quantitative Bewertung der Risiken, um genauere Messgrößen zu erzeugen, wurde von #glossary("nils") und mir als überflüssig beurteilt und nicht durchgeführt.
])

==== *04.05.11.04* Strategien auswählen und Maßnahmen implementieren, um Chancen und Risiken zu adressieren
Durch die Bewertung der Risiken konnte ich einschätzen, dass der Abbruch eines laufenden Import-Vorganges das größte Risiko darstellt, sowohl in seiner Auftrittswahrscheinlichkeit, als auch in den Auswirkungen.
Aus diesem Grund habe ich in der Planung des Projektes den vorgesehenen Import-Vorgang um eine Rollback-Funktionalität erweitert.
Diese erlaubt mittels detailliertem Fortschrittstracking einen laufenden Import-Vorgang jederzeit zurückzurollen.
Die Umsetzung dieser Funktionalität habe ich anschließend im Zeit- und Aufwandsplan des Projektes mit eingebaut und von #glossary("nils") freigeben lassen.\
Durch diese Erweiterung des Import-Moduls konnte das Risiko der dritten Fehlerkategorie gänzlich eliminiert werden.

Die anderen beiden Fehlerkategorien habe ich wie folgt behandelt:
Da es sich in beiden Fällen im Zweifelsfall um Fehler in der Korrektheit des Moduls handelt, müssen diese Fehler in der Test-Phase erkannt und behoben werden.
Ich habe entsprechende Test-Cases eingeplant, die diese Fehlerkategorien abdecken.\
Mittels entsprechendem Testen nach Fertigstellung des Moduls konnten diese beiden Risiken ebenfalls minimiert werden.

==== *04.05.11.05* Chancen, Risiken und implementierte Maßnahmen evaluieren und überwachen <risiken_5>
Im Rahmen der Implementierung der Rollback-Funktion für den Import-Vorgang wurde schnell klar, dass diese in Teilen nur eine Verschiebung des Risikos darstellt, nicht eine Lösung.
In dem Fall, dass ein Rollback scheitert, ergeben sich die gleichen Probleme, die auch ein abgebrochener Import schon verursachen würde.

Diesen Aspekt der Rollback-Funktion habe ich zunächst näher analysiert, um zu beurteilen wie sich dieses neue Risiko verhält.
Dabei bin ich zu dem Schluss gekommen, dass die Tragweite zwar vergleichbar, aber die Eintrittswahrscheinlichkeit geringer ist.
Da die Quelle eines gescheiterten Rollbacks ausschließlich im Code liegen kann, nicht in den Daten selbst, handelt es sich hier zudem um einen Fehler, der mittels zusätzlichen Test-Cases in seiner Eintrittswahrscheinlichkeit reduziert werden kann.\
Mit dieser Erkenntnis habe ich als zusätzliche Maßnahme weitere Test-Cases eingeplant, die den Fall eines gescheiterten Rollbacks abdecken.

Das erkannte Risiko habe ich mit #glossary("nils") besprochen, um mir für die neue Maßnahme eine Freigabe erteilen zu lassen.
Diese wurde bewilligt und wir haben zusätzlich entschieden, dass im Notfall, sollten alle geplanten Maßnahme scheitern, wir die Datenbank aus unseren regulären Backups vollständig wiederherstellen können.
Dieser Schritt würde zwar zusätzlichen Aufwand erzeugen, da er händisch ausgeführt werden muss, aber fängt das Rest-Risiko nach Umsetzung der Maßnahmen ab.

=== 04.05.12 Stakeholder
==== *04.05.12.02* Stakeholder Strategie und einen Kommunikationsplan entwickeln und aufrechterhalten
Im Laufe des #glossary("optadata_focus") Schnittstellenprojektes ist uns bekannt geworden, dass die Einkaufsgemeinschaft #glossary("meditrend") ebenfalls Produktdatenkataloge neben unseren anbieten wollte.
Wir sahen darin eine Chance ein gemeinsames Angebot aufzustellen, um das anvisierte Marktsegment zusammen einzufangen, statt darum zu konkurrieren.

Diese von uns wahrgenommene Chance galt es näher zu analysieren und evaluieren.

Zunächst habe ich diese Chance mit #glossary("nils") näher besprochen.
Wir haben dabei beleuchtet inwiefern wir ein realistisches und sinnvolles Angebot für die #glossary("meditrend") haben, dass sich eine Zusammenarbeit für beide Seiten lohnen würde.
Dabei haben wir ausgearbeitet, dass wir anbieten können unsere Kataloge allen Mitgliedern der #glossary("meditrend") zur Verfügung zu stellen.
Im Gegenzug unterstützt uns die #glossary("meditrend") in der Sammlung neuer Produktdaten.
Durch das gemeinsame Auftreten bekämen wir zusätzlich einen Marketing Boost, da die #glossary("meditrend") im Gegensatz zu uns bereits in der gesamten Branche gut bekannt ist.\
Um das Ganze Thema weiter zu verfolgen und einzuschätzen, wie die #glossary("meditrend") zu unserer Idee steht, haben wir Kontakt zu Eduard Breitenbach, dem Geschäftsführer der #glossary("sonimatik") (die de facto IT-Abteilung der #glossary("meditrend")) aufgenommen.
Er war für die Umsetzung der Kataloge zuständig, die die #glossary("meditrend") selbst in #glossary("optadata_focus") platzieren wollte.
Wir haben ihn im Gespräch davon überzeugen können, dass eine Kooperation für beide Seiten von Vorteil wäre.

Eduard hat das Thema weiter an den Vorstand der #glossary("meditrend") getragen.
Dort wurde die Kooperation leider abgelehnt.

==== *04.05.12.03* Geschäftsführung, Auftraggeber und höheres Management einbinden, um Commitment zu erreichen und um Interessen und Erwartungen zu managen
In der Planung des #abbr("qrs") Projektes hatte #glossary("nils") als Auftraggeber bereits eine Vorstellung davon, was das #abbr("qrs") am Ende leisten sollte.
Konkret wollte er ein System, das die Fehler in unserer Datenbank erkennt und direkt beheben kann.
Ihm war klar, dass der Korrektur-Prozess nicht automatisch sein kann, da es sich bei Fehlern in den allermeisten Fällen um fehlende oder falsch eingetragene Daten handelte, die sich nicht automatisch korrigieren lassen.
Allerdings hatte er die Vorstellung, dass wir einmal ein allgemeines System bauen könnten, das es erlaubt beliebige Korrekturen vorzunehmen, ohne spätere Anpassungen zu erfordern.

Diese Erwartungen bzgl. des Projektes galt es zu managen.

Mir war recht früh klar, dass seine Vorstellung so nicht realisierbar war, bzw. so viel Komplexität und zusätzlichen Aufwand mit sich gezogen hätte, dass das Projekt nicht mehr wirtschaftlich wäre.
Um dem entgegenzuwirken, habe ich früh im Design-Prozess mit #glossary("nils") über die Diskrepanz gesprochen und anhand von konkreten Beispielen verdeutlicht weshalb ein solcher Ansatz nicht funktioniert.
Ich habe ihm dazu Alternativen aufgezeigt, die mit nur geringem Mehraufwand auf der Nutzer-Seite ein gleichwertiges Ergebnis erzielen, dabei aber in der Entwicklung erheblich einfacher sind.

Über das Gespräch konnte ich #glossary("nils") davon überzeugen, dass seine Vorstellung zu komplex war und habe mich mit ihm auf eine weniger komplexe Lösung einigen können.

==== *04.05.12.04* Benutzer, Partner und Lieferanten und andere Stakeholder einbinden, um deren Kooperation und Commitment zu erreichen
Für den Support des #abbr("axc") Formates in unserem Produktdatenexporter war der Input der Akustiker, die damit letztlich arbeiten würden, unabdingbar.

Um eine hohe Akzeptanz des Projektergebnisses sicherzustellen, waren die Akustiker mit in das Projekt einzubinden.

Im Rahmen der Anforderungsdefinition habe ich den Kontakt zu einigen Akustikern gesucht, die in der Vergangenheit Interesse an dem Support des #abbr("axc") Formats geäußert hatten.
Neben der Ermittlung der fachlichen Anforderungen, habe ich in diesen Gesprächen auch versucht sie möglichst stark in das Projekt mit einzubeziehen, indem ich ihnen klar gemacht habe, dass sie durch aktive Partizipation das Ergebnis mitgestalten und mehr den eigenen Bedürfnissen anpassen können.

Ein paar der Akustiker sind auf dieses Angebot angesprungen und haben proaktiv den Kontakt zu mir gesucht, um Informationen und neue Ideen zu liefern.

== PM-Wahlelemente
=== 04.03.01 Strategie
==== *04.03.01.01* Das Projekt mit der Mission und der Vision der Organisation in Einklang bringen <strategie_1>
#add([
    Zu Beginn des QRS Projektes stand zunächst nur die Idee im Raum, mittels Daten-Qualitätsprüfungen unsere Aufwände in der Datenpflege zu reduzieren und somit Kosten zu sparen.
])

#delete([
    Allgemein war für alle Projekte unter meiner Verantwortung sicherzustellen, dass deren Ziele im Einklang mit der Strategie des Unternehmens waren.
])\
#add([
    Im Rahmen der Konzeptionierung galt es mit den ersten Ideen eines möglichen Ergebnisses zu beurteilen, ob dieses Projekt dem Unternehmen einen wertvollen Nutzen bringen würde.
])

#delete([
    Die Ziele für alle Projekte im Rahmen unseres Produktdatensystems wurden aus unserer Strategie abgeleitet.
    Die Strategie war dabei stets der ursprüngliche Auslöser und Grund für das Aufsetzen der Projekte.\
    Entsprechend gab es hier keinen Bedarf zusätzlich zu handeln.
    Im Rahmen der Zieldefinition der Projekte wurde bereits sichergestellt, dass sie mit der Strategie im Einklang waren.
])\
#add([
    Der initial angenommene und erwartete Nutzen der Qualitätskontrollen war Sicherstellung von sauberen Daten und damit einhergehend die Senkung von Kosten in der Datenpflege.
    Bei der Konzeptionierung möglicher Ansätze für das QRS habe ich festgestellt, dass der tatsächliche Nutzen woanders liegt (unabhängig von der konkreten Form der Kontrollen): in der höheren Zuverlässigkeit unserer Daten für unsere Kunden und dem damit einhergehenden gesteigerten Kundenvertrauen.\
    Das hängt damit zusammen, dass fehlerhafte Daten in jedem Fall, egal wie sie erkannt wurden, händisch korrigiert werden müssen und somit Aufwand erzeugen.
    Die automatische Erkennung und entsprechend frühere Behebung der Fehler kostet nicht weniger, aber wirkt sich auf unsere Kunden aus, denen wir damit mehr Sicherheit bieten können, dass sie mit aktuellen und korrekten Daten arbeiten.

    Diese Erkenntnis habe ich mit #glossary("nils") geteilt und mit ihm durchgesprochen.
    Den erkannten tatsächlichen Nutzen hat er als geringer eingeschätzt, als den erhoffte Nutzen, aber immernoch als wertvoll genug erachtet, um das Projekt durchzuführen.
    In der weiteren Konzeptionierung haben wir den zu erwartenden Nutzen berücksichtigt und diverse Ideen wieder gestrichen, die zu diesem nichts beitragen würden.\
    Beispielsweise war angedacht die Daten laufend zu prüfen, während sie aus der Datenbank ausgelesen werden.
    Da es zu diesem Zeitpunkt im Prozess allerdings zu spät für sinnvolle Korrekturen ist (und stattdessen nur eine "post-mortem" Analyse stattfinden kann), haben wir diese Idee verworfen.
])

==== *04.03.01.02* Chancen identifizieren und ausschöpfen, die Strategie der Organisation zu beeinflussen
Bei der Einführung des Supports für das #abbr("axc") Format, habe ich festgestellt, dass es allgemein einen hohen Bedarf unter Akustikern für technischen Support gibt.
Dieser beschränkt sich dabei nicht nur auf den Umgang mit Produktdaten.
Generell habe ich viel Bedarf an Unterstützung in Entwurf und Umsetzung von digitalen Prozessen ermitteln können.\
Diesen Bedarf habe ich an #glossary("nils") weitergetragen, da ich darin eine Chance gesehen habe unser Unternehmen noch mehr bei potentiellen Partnern zu platzieren.
Die Idee hierbei war, dass wir unsere Strategie bzgl. Akustikern durch allgemeinen technischen Support und Beratung erweitern.

Diese Idee haben wir, nach etwas Diskussion, wieder verworfen.
Wir waren uns zwar über das Potential einig, haben aber bei der Gegenüberstellung von Aufwand und potentiellem Nutzen feststellen müssen, dass wir nicht die notwendigen Kapazitäten haben.
Die Kapazitäten dafür gezielt aufzubauen, wäre kostenspieliger gewesen als der erwartete Nutzen wert wäre.

==== *04.03.01.03* Rechtfertigung für das Projekt entwickeln und sicherstellen, dass die betriebswirtschaftlichen und/oder organisationalen Gründe, die zum Projekt geführt haben, weiterhin bestehen
Der Aufbau des Import-Moduls für unser Produktdatenmanagementsystem war dadurch motiviert, dass wir diverse Arten von Neudaten hatten, die immer wieder mal importiert werden mussten.
Dabei war ein großer Teil des anfallenden Aufwandes bereits durch einen alten Importer abgedeckt, der einige Jahre zuvor entwickelt worden war.

Es galt zu analysieren, inwiefern es hier zu unerwünschten Redundanzen kommt und ob das Projekt in anbetracht des existierenden Importers sinnvoll ist umzusetzen.

Ich habe zunächst ermittelt welche Arten von Daten es zu importieren galt.
Dabei habe ich überprüft inwiefern der bestehende Importer diese Art von Daten mit abdecken kann und die gesammelten Arten entsprechend kategorisiert.
Zudem habe ich für die bereits abgedeckten Datenarten getestet wie umfassend und zuverlässig der Import mit dem alten Importer funktioniert.
Dabei bin ich wiederholt auf Probleme wie unvollständige Imports gestoßen.\
Zuletzt habe ich die bereits angedachten zukünftigen Anpassungen in unserem Produkdatensystem berücksichtigt.
Dabei musste ich feststellen, dass der alte Importer dort schnell an seine Grenzen stoßen würde.

Alles in allem konnte ich ermitteln, dass der alte Importer zwar zum aktuellen Zeitpunkt noch für den Großteil unserer Neudaten funktioniert, aber bereits seine Schwächen aufzeigte.
In Zukunft würde der Importer schnell unzureichend werden.\
Aus diesem Grund konnte ich den Bau des neuen Import-Moduls als sinnvoll bewerten.
Für den Übergang, während das neue Modul aufgebaut wird, konnten wir den alten Importer weiter nutzen, aber das Ablösen des alten Importers war strategisch eine sinnvolle und notwendige Entscheidung.

=== 04.03.05 Kultur und Werte
==== *04.03.05.01* Kultur und Werte der Gesellschaft und deren Auswirkungen auf das Projekt beurteilen <kultur_1>
Die #glossary("audoora") hat ausschließlich Mitarbeiter in Deutschland.
Entsprechend gab es gewisse kulturellen Normen und Erwartungen, die einzuhalten waren.

Im Allgemeinen ist die Arbeitskultur in Deutschland bekannt dafür, dass Pünktlichkeit, Ordnung, Struktur und ein respektvoller Umgang mit der Freizeit der Kollegen sehr groß geschrieben werden.
So auch in unserem Unternehmen, wo von unseren Mitarbeitern insbesondere Wert auf die letzten beiden Punkte gelegt wurde.
Ich habe dementsprechend sichergestellt, dass ich bei der Übergabe von Informationen oder Aufgaben stets eine möglichst strukturierte Aufstellung der relevanten Punkte erstellt habe und diese in ordentlicher Form an den entsprechenden Kollegen überreicht habe.
Zudem habe ich darauf geachtet möglichst keine Nachrichten oder E-Mails an Kollegen zu senden, wenn diese gerade in ihrer Freizeit oder im Urlaub waren.
Sollte ich doch mal innerhalb dieser Zeiten geschrieben haben, habe ich immer darauf geachtet in der Nachricht klar zu betonen, dass ich keine Antwort erwarte, bis der Kollege wieder in seine reguläre Arbeitszeit zurückgekehrt ist.

Es gab wiederholt das Feedback von unseren Mitarbeitern, dass sie es sehr schätzen wie ihre Freizeit respektiert wird.
Insgesamt herrschte eine hohe Zufriedenheit im gesamten Unternehmen bzgl. der Arbeitskultur.

==== *04.03.05.02* Das Projekt mit der formellen Kultur und den Werten der Organisation in Einklang bringen <kultur_2>
Die #glossary("audoora") strebt als Teil des #glossary("nh") die Verbesserung der gesamtheitlichen Hörgesundheitsversorgung an#delete([ (im Gegensatz zu dem weit verbreiteten Fokus auf nur Hörgeräte)]).
Teil dieser #add([übergeordneten ])Mission ist
#delete([
    es, die Transparenz und Vergleichbarkeit von Produkten innerhalb der Branche zu steigern, um Endkunden darin zu unterstützen das für sie beste Gerät zu finden.\
    Als Software-Unternehmen legt die #glossary("audoora") zudem viel Wert auf hochwertige und moderne Software-Standards.
    Das schließt neben modernen Nutzeroberflächen auch das Design der dahinterliegenden Code-Base, sowie die Qualität von Daten und Datenstandards, mit ein.
])
#add([
    die Verwendung hochwertiger und moderner Software-Standards (moderne Nutzeroberflächen, hohe Code- und Datenqualität, etc.).\
    Als kleines Startup war unsere gesamte Kultur mit ihren Normen und Werten sehr flexibel und im Wandel.
    Vieles entwickelte sich im Laufe der Zeit und wurde ebenso regelmäßig wieder angepasst, wenn neue Erkenntnisse gewonnen wurden.
    Entsprechend gab es (abgesehen von der Mission) keine formell definierten Normen und Werte, dafür umsomehr informelle.
    Im Laufe unserer verschiedenen Projekte wollten wir das, was sich für uns informell als Best-Practice mit der Zeit etabliert hatte, schrittweise festhalten und formalisieren.
])

#delete([
    Unsere Mission und Werte waren stets in meinen Projekten einzubringen und anzuwenden.
])\
#add([
    Unsere Mission war stets in meinen Projekten einzubringen und anzuwenden.
    Ebenso galt es die Normen und Werte, die wir informell einhielten, schrittweise festzuhalten und damit einen formellen Rahmen zu schaffen.
])

#delete([
    Um unsere Mission in meine Projekte einzubringen, musste ich nichts weiter tun, da das gesamte Projektdesign sich bereits aus dieser Mission ergab.
    Die Leistungs- und Nutzungsziele der Projekte waren stets auf diese Mission ausgerichtet.\
    Um zudem sicherzustellen, dass die entwickelte Software unseren Werten bzgl. Qualität entsprach, habe ich Coding-Standards für unsere Projekte mitentwickelt und in meinen Projekten etabliert.
    Außerdem habe ich das allgemeine Test-Vorgehen in unserem Unternehmen mit entworfen und ebenfalls in meinen Projekten eingeführt.
])\
#add([
    Die Leistungs- und Nutzungsziele meiner Projekte habe ich in jedem Fall zusammen mit #glossary("nils") entworfen.
    Dabei haben wir stets berücksichtigt inwiefern das Projekt zu unserer Mission beiträgt und die Ziele entsprechend formuliert.
    Damit haben wir sichergestellt, dass die Projekte mit der Mission des Unternehmens im Einklang waren.\
    Den Mangel an detaillierteren formellen Werten bzw. Normen habe ich wiederholt mit #glossary("nils") besprochen.
    Mir war schon in vorherigen Projekten aufgefallen, dass wir zwar stets gute Arbeit geleistet haben, diese aber im Detail sehr unterschiedlich ausfallen konnte, je nach verantwortlichem Entwickler.
    Insbesondere wenn für ein Projekt auf vorherige Arbeit eines anderen Entwicklers zurückgegriffen wurde, führte dies zu Ineffizienzen, da man sich zunächst in die Arbeit des anderen Entwicklers eindenken musste.\
    Um dem entgegen zu wirken, habe ich angefangen einige Standards, über die sich alle einig waren, zu dokumentieren.
    Zusätzlich habe ich einige unserer Coding-Standards und Test-Vorgehen formalisiert und weiterentwickelt.
    Diese Dokumentation und Standards habe ich dann sowohl in meinen eigenen Projekten als Grundlage verwendet, um einheitlichere Code-Qualität sicherzustellen, als auch für alle anderen Projekte zur Verfügung gestellt.
])

#delete([
    Durch die Etablierung der besagten Standards und Prozesse konnte ich sicherstellen, dass die Ergebnisse meiner Projekte dem allgemeinen Qualitäts-Niveau der #glossary("audoora") entsprachen.
])\
#add([
    Durch die Etablierung der besagten Standards konnte ich erreichen, dass wir für den Qualitätsanspruch unseres Unternehmens formelle Normen haben.
    Für meine eigenen Projekte haben diese bereits in der Entwicklung einige Fehler verhindern können, die sonst wahrscheinlich aufgetreten wären.
    Inwiefern die Standards in anderen Projekten, bzw. auch Projekt-übergreifend, Mehrwerte erzeugt haben, kann ich nicht beurteilen, da ich das Unternehmen verlassen habe, bevor die Ergebnisse in dieser Hinsicht nochmals reflektiert wurden.
])

==== *04.03.05.03* Die informelle Kultur und Werte der Organisation und deren Auswirkungen auf das Projekt beurteilen
Innerhalb des Unternehmens haben wir allgemein einen sehr lockeren und vertrauensbasierten Umgang miteinander gepflegt.
Das bedeutet vor allem, dass den Entwicklern sehr viel Spielraum für Design-Entscheidungen gelassen wurde und Qualitätsvorgaben und -prozesse zwar besprochen, aber deren Umsetzung nicht weiter kontrolliert wurde.
Diese Arbeitsweise war vor allem aufgrund der kleinen Unternehmensgröße möglich und da die Endergebnisse stets den Qualitätsstandards entsprachen, wurde diese Kultur bewusst von der Geschäftsführung gefördert.\
Die Kehrseite des Ganzen war dabei, dass es generell zum guten Ton gehörte, die Arbeitsweise untereinander nicht in Frage zu stellen.

Die Auswirkungen dieser Kultur waren in meinen Projekten zu berücksichtigen und die Arbeit damit in Einklang zu bringen.

Alle Aufgaben, die ich an andere Entwickler abgegeben habe, habe ich im Vorfeld mit diesen im Detail besprochen, um sicherzustellen, dass die gewünschten Ergebnisse und alle Rahmenbedingungen genau bekannt waren.
Nach Übergabe der Aufgabe habe ich mich dann bewusst mit näheren Kontrollen zurückgehalten, die Entwickler ihre Arbeit verrichten lassen und lediglich regelmäßige Statusupdates eingefordert.
Die Kontrolle der Qualität der Ergebnisse wurde von mir erst zum Abschluss von Arbeitspaketen durchgeführt, da ich mich darauf verlassen konnte, dass die Entwickler sich bereits selbstständig an die etablierten Prozesse und Standards halten.

Wir haben insgesamt durch unsere Arbeitsweise ein durchweg angenehmes Klima geschaffen, in dem sich alle optimal einbringen konnten und ihren eigenen Arbeitsstil leben konnten.
Ich bin fest davon überzeugt, dass dieser Umstand auch ausschlaggebend für die hohe Qualität unserer Arbeit war, da alle ein Interesse daran hatten diese Qualität zu liefern.

=== 04.04.01 Selbstreflexion und Selbstmanagement
==== *04.04.01.02* Selbstvertrauen auf der Basis von persönlichen Stärken und Schwächen aufbauen
Allgemein habe ich im Laufe der letzten Jahre immer wieder festgestellt, dass ich große Schwierigkeiten damit habe, bei Stille zu arbeiten.
Wenn um mich herum nichts weiter passiert, dann füllt mein Kopf die Leere, indem er anfängt über meinen Alltag und meine Freizeit zu sinnieren.

Ich musste einen Weg finden, um diesen Ablenkungsfaktor in den Griff zu bekommen.

Ich habe zunächst versucht zu differenzieren, wieso mein Kopf das Bedürfnis hat die Stille zu füllen.
Dabei bin ich zu dem Schluss gekommen, dass es der Mangel an "Leben" in meiner Umgebung ist, den mein Kopf versucht auszugleichen.
Daraus konnte ich folgern, dass ich tatsächlich an meiner Arbeitsumgebung etwas ändern muss, da das Problem nicht in meiner Konzentration selbst liegt.
Ich habe anschließend mehrere Optionen getestet und verglichen, um diese Änderung zu erreichen (Musik hören, Videos im Hintergrund laufen lassen, im gleichen Raum mit anderen Menschen arbeiten, etc.).

Ich bin letztlich zu dem Schluss gekommen, dass die effektivste Methode ist, in einem Raum mit anderen Menschen zusammen zu arbeiten.
Diese hat zu erheblichen Fokus-Steigerungen geführt.
Als Fallback-Option für Situationen, in denen dies keine Option ist, z.B. bei der Arbeit im Home-Office, wenn meine Partnerin nicht da ist, konnte ich diverse Videos finden, in denen sich in ruhiger Atmosphäre mit diversen Themen beschäftigt wird.
Diese haben den gleichen Effekt, wenn auch in reduziertem Maße.

==== *04.04.01.03* Persönliche Motivationen identifizieren und reflektieren, um persönliche Ziele zu setzen und darauf zu fokussieren
Zu meiner persönlichen und beruflichen Weiterbildung mache ich mir schon seit langem regelmäßige Gedanken.
Dabei lege ich großen Wert darauf eine klare Richtung zu haben, um meine Ziele und Prioritäten festzulegen, ohne mich dabei zu sehr einzuschränken.

Ich habe vor einigen Jahren für mich ein Zielbild gestaltet; eine Persona, die repräsentiert, wer ich sein möchte.
Mithilfe dieser Persona kann ich beurteilen, welche Aspekte meines Lebens noch nicht so sind, wie ich sie gerne hätte, und aus diesem Vergleich Ziele für mich selbst ableiten.
Beispielsweise entspricht mein derzeitiges sportliches Niveau nicht dem, das ich in meiner Idealvorstellung habe.
Daraus habe ich für mich das Ziel abgeleitet mindestens 3 mal pro Woche das Fitness-Studio zu besuchen (bzw. handelt es sich hier eher um ein KPI, da das Ganze kein definiertes Ende hat).\
Gleichermaßen hilft mir diese Ziel-Persona bei der Priorisierung und Entscheidungsfindung, da ich mich in unklaren Situationen fragen kann "Was würde meine Ziel-Persona jetzt tun?".
So habe ich beispielsweise beschlossen mich beruflich in die Projektmanagement Richtung umzuorientieren, da das mehr dem entsprach, was meine Ziel-Persona tun würde.

==== *04.04.01.04* Eigene Arbeit abhängig von der Situation und den eigenen Ressourcen organisieren
Neben der Planung und Umsetzung der von mir verantworteten Projekte, war ich außerdem der allgemeine Ansprechpartner für alle Themen rund um unsere Produktdaten.
In diesem Zusammenhang haben immer wieder mal Akustiker mit mir Kontakt aufgenommen, um Fragen zu klären oder technischen Support für unsere Produktdatenservices zu erfragen.\
Im Laufe des #glossary("optadata_focus") Projektes wurde ich von einem Akustiker für technischen Support kontaktiert.
Ich musste nun entscheiden was nun zu priorisieren war.

Unsere normale Policy besagt, dass Nutzer-/Kundenanfragen grundsätzlich Priorität gegenüber Entwicklungsprojekten haben.
Da es sich jedoch bei dem #glossary("optadata_focus") Projekt ebenfalls um ein Kundenprojekt handelt, waren die Anfrage und das Projekt zunächst als gleichwertig zu betrachten.
In der Dringlichkeit unterschieden sich die Aufgaben ebenso wenig.
Die Projektaufgabe hatte eine schnell herannahende Deadline und der Kunde konnte nicht sinnvoll weiterarbeiten, solange sein Problem nicht aufgelöst wurde.\
Ich habe schließlich den potentiellen Schaden bewertet, der entstehen könnte, und dabei ermittelt, dass ein Reißen der Projekt-Deadline höhere Folgekosten mit sich ziehen würde als eine Verzögerung in der Bearbeitung der Kunden-Anfrage.
Aus diesem Grund habe ich den Akustiker mit seiner Anfrage nach hinten geschoben und zunächst die Projektaufgabe erledigt.

==== *04.04.01.05* Verantwortung für das persönliche Lernen und die persönliche Weiterentwicklung übernehmen
Der Entwicklungsprozess, den ich für die Umsetzung des #abbr("qrs") aufgesetzt hatte, sah eine bestimmte Reihenfolge von Entwicklungs- und Test-Schritten vor.
Dabei sollte durch die Einhaltung von Qualitäts-Standards in der Entwicklung der Bedarf an Testung reduziert werden, weshalb weniger Test-Schritte als üblich geplant waren.
Letzenendes erzielten die eingeführten Qualitäts-Standards nicht den nötigen Effekt, um die gestrichenen Tests vollständig zu ersetzen.
Hinzu kam, dass durch die Umstellung des Prozesses das Reporting bzgl. des Projektfortschrittes schwieriger wurde, weil erst spät abgeschätzt werden konnte wie viel Korrekturarbeit noch notwendig sein würde.

Da der Prozess im Laufe des Projektes zu Reibungspunkten geführt hatte, wurde er im Rahmen der Lessons Learned näher unter die Lupe genommen.
Unter anderem hatte mein Mangel an Verständnis für die Grenzen dessen, was die Qualitäts-Standards leisten können und wo sie keine Garantien liefern können, mit zu den Problemen beigetragen.
Neben den Ergebnissen der Lessons Learned habe ich mir also selbst noch mitgenommen mich tiefer in das Thema der Qualitäts-Standards einzulesen und mein Wissen dort zu erweitern.

=== 04.04.03 Persönliche Kommunikation
==== *04.04.03.01* Eindeutige und strukturierte Informationen an andere weitergeben und deren gleiches Verständnis sicherstellen
Im Rahmen meiner Aufgaben hatte ich viel Kontakt sowohl mit unseren Entwicklern, als auch mit unseren Partner-Akustikern.
Diese beiden Personengruppen haben dabei erhebliche Unterschiede in der Art und Weise wie sie Informationen aufnehmen, verarbeiten und selber kommunizieren.
Um eine klare Kommunikation sicherzustellen, musste ich die benötigten Informationen gezielt für die jeweilige Zielgruppe sinnvoll strukturieren und präsentieren.

In meiner Erfahrung tendieren Entwickler dazu Informationen sehr exakt aufzunehmen, d.h. die korrekte Bezeichnung und das konkrete Wording der Inhalte sind enorm wichtig.
Gleichermaßen liegt der Fokus meist bei technischen Details und Feinheiten, nicht beim Big Picture.\
Im Gegensatz dazu verhält es sich bei den Akustikern nahezu umgekehrt.
Zwar ist durchaus wichtig die Inhalte einer Aussage sauber zu formulieren, aber sie hängen sich nicht allzu sehr an konkretem Wording auf, sondern haben eher das Gesamtbild im Sinn.
Hinzu kommt hier natürlich oft ein Mangel von tiefgreifendem technischen Verständnis, daher galt es diese Informationen entweder auszulassen oder vereinfacht zu erklären.\
Anhand dieser Erfahrungen und Kenntnisse habe ich eine jeweils sinnvolle Kommunikationsform entwickelt und angewendet.
Bei Entwicklern habe ich darauf geachtet mithilfe von Diagrammen und technischer Sprache möglichst präzise die Details zu kommunizieren. Bei Akustikern habe ich im Gegensatz dazu immer beim Gesamtbild angefangen und bin nur bei Bedarf mit bildhaften Beispielen in die Details tiefer eingestiegen.

Mit den gewählten Kommunikationsansätzen konnte ich in Gesprächen stets sicherstellen, dass alle wichtigen Informationen bei meinem Gegenüber ankamen.

==== *04.04.03.02* Offene Kommunikation ermöglichen und fördern
Ich habe bereits oft in Gesprächen erlebt, dass Informationen verloren gegangen sind, weil die Beteiligten dachten, sie hätten alles verstanden, aber die Dinge anders gemeint waren.
Mir selbst ist das auch allzu oft schon passiert.

Aus diesem Grund habe ich mir angewöhnt in Gesprächen meinen Fokus zunächst darauf zu legen die Position und Informationen meines Gegenübers möglichst klar zu verstehen.
Dazu gehört für mich nicht nur das aktive zuhören, sondern auch, dass ich mir die Bestätigung des Gegenübers einhole, dass ich Inhalte korrekt verstanden habe.\
Beispielsweise hatte ich mit einer Ansprechpartnerin bei einem Kunden zu tun, die recht viel technisches Wissen besaß, aber sich schnell in Details verlor, wenn sie über ihre selbst entworfenen Lösungen sprach.
In meinen Gesprächen mit ihr konnten wir regelmäßig Missverständnisse dadurch aufklären, dass ich meine Annahmen und mein Verständnis ihrer Aussagen ausformuliert habe und sie diese dann korrigieren konnte.\
Beispielsweise sprachen wir zu einem Punkt über ihre selbstgebauten Datenbanklösungen für ihre Kundenverwaltung.
Ich fasste anschließend den eigentlichen Prozess zusammen, den ich aus ihren Ausführungen herausgehört hatte, und sie konnte mich dann korrigieren und einen Schritt klarstellen, den ich falsch verstanden hatte.
Dadurch konnte ich ihr dann anschließend einen gezielten Ratschlag geben, wie sie ihre Strukturen optimieren konnte.

==== *04.04.03.03* Kommunikationsarten und -kanäle auswählen, um die Bedürfnisse der Zielgruppe, der Situation und der Führungsebene zu erfüllen <kommunikation_3>
Im Rahmen der Weiterentwicklung unserer Online-Plattformen wurde von unserem Geschäftsführer #glossary("sebastian") der Vorschlag eingebracht einen allgemeinen KI-Chatbot mit einzubauen.
Dieser sollte unsere Partner in der Verwendung unserer Tools unterstützen und einen vereinfachten Zugang zu unseren Services ermöglichen.
Der Vorschlag wurde in einer Besprechung mit dem IT-Team stark kritisiert und auf technischer Ebene auseinandergenommen.
Zum einen gab es Datenschutz-Bedenken, da davon auszugehen war, dass manche Partner auch medizinische Daten von Endkunden mit dem Chatbot teilen könnten.
Zum anderen wurde hinterfragt, ob eine KI, die alle notwendigen Sicherheitskriterien erfüllt, überhaupt technisch in der Lage wäre den erhofften Support auf einem Qualitätsniveau zu leisten, das unseren Ansprüchen entsprach.

Im Rahmen dieses Gespräches habe ich, zusammen mit den anderen ITlern, versucht #glossary("sebastian") klar zu machen welche Einschränkungen wir einhalten müssten, um mit einer solchen KI Datenschutz-konform zu bleiben, und wie die damit einhergehenden technischen Einschränkungen sich auf die Funktionalität auswirken würden.
Mir wurde allerdings im Gespräch schnell klar, dass diese Erklärungen sich zu sehr auf einer technischen Ebene bewegten, auf der #glossary("sebastian") dem Ganzen nicht sinnvoll folgen konnte.
Ich habe im Anschluss an das Gespräch erneut den Kontakt zu #glossary("sebastian") gesucht und ihm angeboten in einem Einzelgespräch nochmal über das Thema zu sprechen und Fragen aufzuklären.
In diesem Einzelgespräch habe ich ihm die Probleme, die wir identifiziert hatten, nochmals dargelegt.
Dafür habe ich allerdings bewusst viel mit Metaphern und bildlicher Sprache gearbeitet, aus der Erfahrung heraus, dass #glossary("sebastian") eine Person ist, die sehr stark in dieser Art und Weise denkt.

Mittels dieser Veranschaulichungen konnte ich ihm verständlich machen welche Probleme wir mit dem Ansatz sehen und wie wir die notwendigen Kosten einschätzen, um so ein KI-Projekt für unseren Anwendungsfall erfolgreich umzusetzen.
Durch unser Gespräch hat #glossary("sebastian") anschließend selbst nachvollziehen können, dass seine Idee so nicht umsetzbar wäre und hat diese anschließend verworfen.

==== *04.04.03.04* Mit virtuellen Teams effektiv kommunizieren <kommunikation_4>
Die Hälfte der Leute bei der #glossary("audoora") haben zu 100% remote gearbeitet.
Dieser Umstand hatte sich bereits in den Anfängen des Unternehmens etabliert, da wir damals schon mit Leuten zusammengearbeitet haben, die nicht ansatzweise in der Nähe von Köln gewohnt haben.

Um eine möglichst optimale Kommunikation für das gesamte Team sicherzustellen, haben wir diverse Tools verwendet.
#delete([
    Dabei haben wir als gesamtes Team zusammen verschiedene Tools evaluiert und uns schließlich für die Verwendung von Microsoft Teams entschieden.
    Für unsere Projekt- und Aufgabenverwaltung haben wir zunächst #glossary("jira") verwendet.\
    Nach den ersten 1-2 Jahren der Arbeit mit diesen Tools, haben wir #glossary("jira") durch #glossary("notion") abgelöst.
])\
#add([
    Die beiden wichtigsten Aspekte waren für uns dabei zum einen die direkte Kommunikation im Gespräch, sowie sie Planung und Nachverfolgung von Aufgaben.

    Aufgrund der Verfügbarkeit über das Office 365 Paket, kam für die direkte Kommunikation Microsoft Teams zum Einsatz.
    Unsere Kommunikation fand dabei auf Deutsch statt.\
    Die mündliche Kommunikation auf Deutsch erwies sich mit dem späteren Beitritt einer Englisch-sprachigen Kollegin ins Unternehmen als problematisch, da dies eine erhebliche Sprachbarriere darstellte.
    Es wurde zunächst versucht durch dolmetschen dem Problem entgegen zu steuern.
    Ich schlug nach kurzer Zeit als Alternative vor, dass wir unsere gesamte Kommunikation auf Englisch umstellen könnten.
    Unsere schriftliche Dokumentation war an vielen Stellen technisch bedingt bereits auf Englisch und fast alle Team-Mitglieder konnten mindestens gebrochenes Englisch, daher erschien mir die Umstellung für realistisch machbar.\
    Nach Rücksprache mit dem restlichen Team wurde dieser Vorschlag anschließend umgesetzt, um die neue Kollegin besser zu integrieren.
])

#delete([
    Für diese Entscheidung war ausschlaggebend, dass wir zum einen mit #glossary("jira") nicht alles abbilden konnten, was wir an Informationen ablegen wollten, und zum anderen dass wir mit #glossary("notion") deutlich genauer unsere tatsächlichen Arbeitsprozesse abbilden konnten.
])\
#add([
    Da einige unserer Team-Mitglieder in der Vergangenheit bereits mit #glossary("jira") gearbeitet hatten, bot sich dieses Tool für die Planung und Dokumentation der Aufgaben an.
    Dabei orientierten wir uns gänzlich an dem von #glossary("jira") vorgesehenen Prozessen und nutzten diese.\
    Mit dem Laufe der Zeit wurde klar, dass es erhebliche Diskrepanzen zwischen diesen Prozessen und den tatsächlichen Arbeitsprozessen des Teams gab.
    Bei der Suche nach Alternativen stießen wir auf #glossary("notion"), ein Tool das uns vielversprechend erschien.
    Um zu evaluieren inwiefern dieses Tool geeignet wäre, haben #glossary("nils") und ich zusammen die Arbeitsprozesse des Teams skizziert und versucht diese in Notion abzubilden.\
    Nachdem uns dies recht erfolgreich gelungen war, führten wir eine Testphase mit dem Team zusammen durch.
    #glossary("jira") wurde als Tool schließlich abgelöst, da sich die Arbeit mit #glossary("notion") als produktiver erwies.
])


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
    align: (left + bottom, right + horizon),
    columns: (4cm, 8cm),
    row-gutter: 0.2cm,
    [Elmenhorst, #report_date], image(".signature.svg", width: 6cm),
    grid.hline(),
    [], [],
    text(size: 9pt, "Ort, Datum"), text(size: 9pt, "Unterschrift"),
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
#box(height: 97%, width: 100%, align(center, rotate(90deg, reflow: true, [#figure(
    caption: "Design des QRS im Überblick",
    image("QRS_design.svg"),
)<qrs_design>])))
#pagebreak()
#align(center, rotate(90deg, reflow: true, [#figure(
    caption: "Aufgabenplanung für das optadata Gateway",
    image("optadata_gateway_tasks.svg"),
)<gateway_tasks>]))
#pagebreak()
#{
    let table = table(
        align: horizon,
        columns: (4.3cm, 5.3cm, 6.25cm, 6cm),
        "Fehlerkategorie", "Auftrittswahrscheinlichkeit", "Tragweite", "Komplexität",
        "Fehlerhaftes abspeichern von Neudaten",
        [
            gering\
            _über Tests ausschließbar_
        ],
        [
            gering - mittel\
            _nur die Import-Daten selbst_
        ],
        [
            gering\
            _fehlerhafte Daten können gelöscht und reimportiert werden_
        ],

        "Fehlerhafte Anpassung bestehender Daten",
        [
            gering\
            _über Tests ausschließbar_
        ],
        [
            mittel - hoch\
            _potentiell weitreichend, wenn viele Produktverknüpfungen vorhanden sind_
        ],
        [
            mittel\
            _fehlerhafte Verknüpfungen sind zu ermitteln und löschen_
        ],

        "Unvollständigkeiten bei abgebrochenem Import",
        [
            hoch\
            _datenabhängig,_\
            _nicht ausschließbar_
        ],
        [
            mittel - hoch\
            _sowohl Import-Daten als auch verknüpfte Daten betroffen_\
            _Tragweite abhängig vom Zeitpunkt des Abbruchs_
        ],
        [
            hoch\
            _fehlerhafte Daten und Verknüpfungen sind zu ermitteln und löschen_\
            _Ermittlung der betroffenen Daten aufwändiger, da abhängig vom Abbruchpunkt_
        ],
    )
    let figure = [#figure(caption: "Bewertung der Import-Fehlerkategorien", table)<import_error_analysis>]
    align(center, rotate(90deg, reflow: true, figure))
}

#[]<appendix_numbering_end>

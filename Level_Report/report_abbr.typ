
#let abbr_dict = (
  axc: (
    link(<axc>, "AXC"),
    [AXC <axc>],
    [
      Amparex Import-Format\
      _Das von Amparex definierte Format für den Import von Produktdaten in das Amparex ERP-System_
    ],
  ),
  ric: (link(<ric>, "RIC"), [RIC <ric>], [
    Receiver-In-Canal\
    _Hörgeräte-Kategorie, bei denen der Empfänger/Lautsprecher direkt im Gehörgang sitzt_
  ]),
  hmv: (
    link(<hmv>, "HMV"),
    [HMV <hmv>],
    [
      Hilfsmittelverzeichnis\
      _Das Hilfsmittelverzeichnis ist ein Verzeichnis aller medizinischen Hilfsmittel, die über die Krankenkassen abgerechnet werden. Jedes abrechenbare Gerät bekommt dazu im Verzeichnis eine eindeutige Nummer zur Identifikation_
    ],
  ),
  qrs: (
    link(<qrs>, "QRS"),
    [QRS <qrs>],
    [
      Quality-Reporting-System\
      _Teilsystem des Datenbankmanagementsystems, das für die Überprüfung und Verbesserung der Datenqualität zuständig ist_
    ],
  ),
  gtin: (
    link(<gtin>, "GTIN"),
    [GTIN <gtin>],
    [
      Global Trade Item Number\
      _Die Global Trade Item Number ist eine Identifikationsnummer, mit der Handelseinheiten ausgezeichnet werden_
    ],
  ),
  himsa: (
    link(<himsa>, "HIMSA"),
    [HIMSA <himsa>],
    [
      Hearing Instrument Manufacturers' Software Association\
      _Internationale Organisation, die Software- und Daten-Standards für Hörgeräte-bezogene digitale Infrastruktur definiert_
    ],
  ),
)

#let abbr(name) = {
  abbr_dict.at(name).at(0)
}
#let abbr_entries = abbr_dict.pairs().sorted(key: pair => pair.at(0)).map(pair=>(pair.at(1).at(1), pair.at(1).at(2))).flatten()

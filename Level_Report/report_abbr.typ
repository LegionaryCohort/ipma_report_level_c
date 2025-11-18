
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
      _Das Hilfsmittelverzeichnis ist ein Verzeichnis aller medizinischen Hilfsmittel, die über die Krankenkassen abgerechnet werden. Jedes abrechenbare Gerät bekommt dazu im Verzeichnis eine eindeutige Nummer zur Identifikation._
    ],
  ),
)

#let abbr(name) = {
  abbr_dict.at(name).at(0)
}
#let abbr_entries = abbr_dict.values().map(data=>(data.at(1), data.at(2))).flatten()

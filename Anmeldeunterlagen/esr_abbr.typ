
#let abbr_dict = (
  rpa: (
    link(<rpa>, "RPA"),
    [RPA <rpa>],
    [
      Robotic Process Automation\
      _Digitale Automatisierung von Prozessen durch direkte Imitation menschlicher Bearbeitungsschritte_
    ],
  ),
  euha: (link(<euha>, "EUHA"), [EUHA <euha>], [
    Europäische Union der Hörakustiker e.V.\
    _Zentraler, in der Branche anerkannter, fachwissenschaftlicher Verband für Hörakustiker_
  ]),
)

#let abbr(name) = {
  abbr_dict.at(name).at(0)
}
#let abbr_entries = abbr_dict.values().map(data=>(data.at(1), data.at(2))).flatten()

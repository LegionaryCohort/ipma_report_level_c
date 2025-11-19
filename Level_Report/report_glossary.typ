
#let glossary_dict = (
  notion: (
    link(<gl_notion>, [_Notion_]),
    [Notion <gl_notion>],
    [
      Eine Plattform, die diverse Produktivitätswerkzeuge wie Notizen, Aufgabenmanagement, Projektverwaltung und Lesezeichen anbietet
    ],
  ),
)

#let glossary(name) = {
  glossary_dict.at(name).at(0)
}
#let glossary_entries = glossary_dict.pairs().sorted(key: pair => pair.at(0)).map(pair=>(pair.at(1).at(1), pair.at(1).at(2))).flatten()
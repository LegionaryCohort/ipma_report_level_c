
#let abbr_dict = (placeholder: (link(<placeholder>, "PlHd"), [PlHd <placeholder>], [
  Placeholder GmbH\
  _Eine Placeholder Abkürzung_
]))

#let abbr(name) = {
  abbr_dict.at(name).at(0)
}
#let abbr_entries = abbr_dict.values().map(data=>(data.at(1), data.at(2))).flatten()

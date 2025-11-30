
#let glossary_dict = (
    audoora: (
        link(<gl_audoora>, [_Audoora GmbH_]),
        [Audoora GmbH <gl_audoora>],
        [
            Software-Hersteller in der Hörakustik-Branche, bei dem ich gearbeitet habe und die in diesem Report beschriebenen Projekte verantwortet habe
        ],
    ),
    amparex: (
        link(<gl_amparex>, [_Amparex_]),
        [Amparex <gl_amparex>],
        [
            Ein in der Hörakustik-Branche weit verbreitetes ERP-System für Hörakustiker, Optiker und Therapeuten
        ],
    ),
    notion: (
        link(<gl_notion>, [_Notion_]),
        [Notion <gl_notion>],
        [
            Eine Plattform, die diverse Produktivitätswerkzeuge wie Notizen, Aufgabenmanagement, Projektverwaltung und Lesezeichen anbietet
        ],
    ),
    optadata: (
        link(<gl_optadata>, [_optadata_]),
        [optadata <gl_optadata>],
        [
            Unternehmensgruppe, die Software-Lösungen unter anderem für die Hörakustik herstellt\
            Baut das neue ERP-System _optadata focus_ (s.u.)
        ],
    ),
    optadata_focus: (
        link(<gl_opta_focus>, [_optadata focus_]),
        [optadata focus <gl_opta_focus>],
        [
            Ein neues ERP-System für Hörakustiker und Optiker, befindet sich noch in Entwicklung\
            Stellt den Nachfolger der bestehenden ERP-Systeme _AkuWin_ und _asego.net_ dar
        ],
    ),
    meditrend: (
        link(<gl_meditrend>, [_MediTrend_]),
        [MediTrend eG <gl_meditrend>],
        [
            Größte Einkaufsgemeinschaft der deutschen Hörakustik-Branche
        ],
    ),
    sonimatik: (
        link(<gl_sonimatik>, [_Sonimatik GmbH_]),
        [Sonimatik GmbH <gl_sonimatik>],
        [
            Hersteller von Software-Lösungen für die Hörakustik-Branche\
            Gehört zur MediTrend-Gruppe und fungiert de facto als deren IT-Abteilung
        ],
    ),
    nils: (
        link(<gl_nils>, [Nils]),
        [Nils Sonnenfroh <gl_nils>],
        [Einer der beiden Geschäftsführer der Audoora GmbH\
            Hauptverantwortlich für alle HR und IT Themen im Unternehmen],
    ),
    nils_long: (
        link(<gl_nils>, [Nils Sonnenfroh]),
        none,
        none,
    ),
    sebastian: (
        link(<gl_sebastian>, [Sebastian]),
        [Sebastian Garcia-Dennemark <gl_sebastian>],
        [Einer der beiden Geschäftsführer der Audoora GmbH\
            Hauptverantwortlich für Vertrieb, Marketing und Eventplanung],
    ),
    sebastian_long: (
        link(<gl_sebastian>, [Sebastian Garcia-Dennemark]),
        none,
        none,
    ),
    python: (
        link(<gl_python>, [_Python_]),
        [Python <gl_python>],
        [Eine Programmiersprache, die sich durch hohe Entwicklungsgeschwindigkeit und weiten Community-Support auszeichnet],
    ),
    tdh: (
        link(<gl_tdh>, [_Tag der Hörgesundheit_]),
        [Tag der Hörgesundheit <gl_tdh>],
        [Neues Event in der Hörakustik-Branche mit Fokus auf den Experten-Austausch zu aktuellen Entwicklungen in der Branche],
    ),
    audio_direkt: (
        link(<gl_audio_direkt>, [_Audio Direkt_]),
        [Audio Direkt <gl_audio_direkt>],
        [Eine Einkaufsgemeinschaft der deutschen Hörakustik-Branche],
    ),
    nh: (
        link(<gl_nh>, [_Netzwerk Hörgesundheit_]),
        [Netzwerk Hörgesundheit <gl_nh>],
        [Ein Netzwerk von diversen Unternehmen aus der Hörakustik-Branche mit dem Ziel, die gesamtheitliche Hörgesundheitsversorgung in der DACH-Region zu verbessern],
    ),
    jira: (
        link(<gl_jira>, [_Jira_]),
        [Jira <gl_jira>],
        [Eine Plattform für die Verwaltung von Projekten und Aufgaben, hergestellt von der Firma Atlassian],
    ),
)

#let glossary(name) = {
    glossary_dict.at(name).at(0)
}
#let glossary_entries = (
    glossary_dict.pairs().sorted(key: pair => pair.at(0)).map(pair => (pair.at(1).at(1), pair.at(1).at(2))).flatten()
)

if (variable_global_exists("dados_jogo_inicializados"))
{
    instance_destroy();
    exit;
}

global.dados_jogo_inicializados = true;

global.personagens = [

    {
        nome: "Lobisomem",
        sprite: spr_lobo_idle,
        retrato: spr_lobo_idle,
        funcao: "DPS",
        ataques: "Garras e Mordida",

        origem:
        "A lenda do Lobisomem possui diferentes versões\n"
        + "e aparece em diversas culturas.",

        regioes:
        "Presente em diferentes regiões do Brasil,\n"
        + "com variações de acordo com a tradição local.",

        historia:
        "Segundo uma das versões populares, um homem\n"
        + "pode se transformar em uma criatura semelhante\n"
        + "a um lobo durante determinadas noites.",

        desbloqueado: true
    },

    {
        nome: "Iara",
        sprite: spr_iara_idle,
        retrato: spr_iara_idle,
        funcao: "SUPORTE",
        ataques: "Gotas D'Água e Cura Total",

        origem:
        "Personagem associada aos rios e às águas\n"
        + "das tradições populares brasileiras.",

        regioes:
        "Sua lenda é especialmente associada à região\n"
        + "Amazônica e outras áreas ribeirinhas.",

        historia:
        "A Iara é frequentemente descrita como uma\n"
        + "figura encantada que habita as águas e\n"
        + "atrai a atenção dos que passam pelos rios.",

        desbloqueado: false
    },

    {
        nome: "Matinta",
        sprite: spr_matinta_idle,
        retrato: spr_matinta_retrato,
        funcao: "AOE",
        ataques: "Garras e Rajada de Vento",

        origem:
        "Figura tradicional do folclore brasileiro,\n"
        + "associada a histórias de encantamento.",

        regioes:
        "Muito conhecida na região Norte do Brasil,\n"
        + "especialmente na tradição amazônica.",

        historia:
        "A Matinta Pereira aparece em diferentes versões\n"
        + "da tradição oral e é associada a uma figura\n"
        + "misteriosa que pode assumir diferentes formas.",

        desbloqueado: false
    },

    {
        nome: "Boitatá",
        sprite: spr_boitata_idle,
        retrato: spr_boitata_idle,
        funcao: "QUEIMADURA",
        ataques: "Fogo-Fátuo e Rastro de Fogo",

        origem:
        "O nome vem do tupi e costuma ser traduzido como\n"
        + "cobra de fogo ou coisa de fogo. Já aparece num\n"
        + "registro do padre José de Anchieta, de 1560.",

        regioes:
        "Conhecido em quase todo o Brasil, com versões\n"
        + "diferentes no Sul, Sudeste, Centro-Oeste e Norte.",

        historia:
        "Uma enorme serpente de fogo, de olhos brilhantes,\n"
        + "que protege os campos e as matas e castiga\n"
        + "quem provoca queimadas.",

        desbloqueado: false
    },

    {
        nome: "Saci-Pererê",
        sprite: spr_saci_idle,
        retrato: spr_saci_idle,
        funcao: "CONTROLE",
        ataques: "Rasteira e Redemoinho",

        origem:
        "Lenda de origem indígena do Sul do Brasil que,\n"
        + "com o tempo, ganhou elementos das culturas\n"
        + "africanas e europeias.",

        regioes:
        "Popular em todo o país, especialmente no Sudeste\n"
        + "e no Sul, e eternizado nas obras de Monteiro Lobato.",

        historia:
        "Menino travesso de uma perna só, com gorro vermelho\n"
        + "e cachimbo, que anda nos redemoinhos de vento\n"
        + "e adora pregar peças em quem passa.",

        desbloqueado: false
    },

    {
        nome: "Curupira",
        sprite: spr_curupira_idle,
        retrato: spr_curupira_idle,
        funcao: "TANQUE",
        ataques: "Pegadas Invertidas e Proteção da Mata",

        origem:
        "Lenda de origem tupi, uma das mais antigas do\n"
        + "Brasil: o padre José de Anchieta já a citava\n"
        + "numa carta de 1560.",

        regioes:
        "Conhecido em todo o país, com força especial\n"
        + "na Amazônia e nas regiões de floresta.",

        historia:
        "Guardião das matas e dos animais, tem cabelos\n"
        + "vermelhos como fogo e pés virados para trás,\n"
        + "deixando pegadas que confundem os caçadores.",

        desbloqueado: false
    }
];

global.fases = fases_criar();

global.fase_desbloqueada = 1;

global.fase_atual = 1;

global.equipe = [-1, -1, -1, -1];

global.personagem_recompensa = -1;

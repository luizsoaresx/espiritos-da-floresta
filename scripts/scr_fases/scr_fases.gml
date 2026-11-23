function fases_criar()
{
    return [

        {
            rotulo: "FASE 1",
            nome: "A FLORESTA",
            desc: "A ameaça da destruição",
            tema: "Desmatamento",
            sala: rm_game,
            fundo: spr_fundo_floresta,
            recompensa: 1,
            vitoria: "A floresta respira aliviada.",
            clima: "vagalumes",
            ondas: [
                [ { obj: obj_lenhador, x: 640, y: 230 } ],
                [ { obj: obj_chefe_floresta, x: 740, y: 150 } ]
            ]
        },

        {
            rotulo: "FASE 2",
            nome: "RIO ARAGUAIA",
            desc: "Pesca predatória e poluição",
            tema: "Poluição dos rios",
            sala: rm_game_fase2,
            fundo: spr_fundo_rio,
            recompensa: 2,
            vitoria: "O rio volta a correr limpo.",
            clima: "vagalumes",
            ondas: [
                [
                    { obj: obj_pescador,   x: 620, y: 260 },
                    { obj: obj_garimpeiro, x: 780, y: 175 }
                ],
                [ { obj: obj_draga_poluidora } ]
            ]
        },

        {
            rotulo: "FASE 3",
            nome: "CERRADO",
            desc: "Queimadas e correntão",
            tema: "Queimadas",
            sala: rm_game_fase3,
            fundo: spr_fundo_cerrado,
            recompensa: 3,
            vitoria: "As chamas se apagam e o Cerrado renasce.",
            clima: "brasas",
            ondas: [
                [ { obj: obj_incendiario }, { obj: obj_grileiro } ],
                [ { obj: obj_incendiario }, { obj: obj_grileiro }, { obj: obj_incendiario } ],
                [ { obj: obj_trator_correntao } ]
            ]
        },

        {
            rotulo: "FASE 4",
            nome: "MATA ATLÂNTICA",
            desc: "Caça e tráfico de animais",
            tema: "Tráfico de animais",
            sala: rm_game_fase4,
            fundo: spr_fundo_mata,
            recompensa: 4,
            vitoria: "As araras voltam a voar livres.",
            clima: "vagalumes",
            ondas: [
                [ { obj: obj_cacador }, { obj: obj_traficante }, { obj: obj_cacador } ],
                [ { obj: obj_cacador }, { obj: obj_traficante }, { obj: obj_traficante }, { obj: obj_cacador } ],
                [ { obj: obj_contrabandista }, { obj: obj_traficante }, { obj: obj_cacador } ]
            ]
        },

        {
            rotulo: "FASE 5",
            nome: "PANTANAL",
            desc: "Agrotóxicos nas águas",
            tema: "Agrotóxicos",
            sala: rm_game_fase5,
            fundo: spr_fundo_pantanal,
            recompensa: 5,
            vitoria: "As águas do Pantanal voltam a ter vida.",
            clima: "veneno",
            ondas: [
                [ { obj: obj_pulverizador }, { obj: obj_capanga }, { obj: obj_pulverizador }, { obj: obj_incendiario } ],
                [ { obj: obj_capanga }, { obj: obj_pulverizador }, { obj: obj_capanga }, { obj: obj_pulverizador } ],
                [ { obj: obj_aviao_pulverizador }, { obj: obj_pulverizador }, { obj: obj_capanga } ]
            ]
        },

        {
            rotulo: "FASE FINAL",
            nome: "CORAÇÃO DA FLORESTA",
            desc: "O Devorador de Florestas",
            tema: "Ganância",
            sala: rm_game_fase6,
            fundo: spr_fundo_final,
            recompensa: -1,
            vitoria: "A natureza venceu!",
            clima: "cinzas",
            ondas: [
                [ { obj: obj_lenhador }, { obj: obj_capanga }, { obj: obj_incendiario }, { obj: obj_cacador } ],
                [ { obj: obj_grileiro }, { obj: obj_pulverizador }, { obj: obj_garimpeiro }, { obj: obj_traficante } ],
                [ { obj: obj_devorador }, { obj: obj_capanga }, { obj: obj_capanga } ]
            ]
        }
    ];
}

function fases_total()
{
    if (!variable_global_exists("fases"))
    {
        global.fases = fases_criar();
    }

    return array_length(global.fases);
}

function fase_dados(_n)
{
    if (!variable_global_exists("fases"))
    {
        global.fases = fases_criar();
    }

    var _i = clamp(_n, 1, array_length(global.fases)) - 1;

    return global.fases[_i];
}

function lendas_desbloqueadas()
{
    var _n = 0;

    for (var i = 0; i < array_length(global.personagens); i++)
    {
        if (global.personagens[i].desbloqueado)
        {
            _n++;
        }
    }

    return _n;
}

function equipe_vagas()
{
    return (lendas_desbloqueadas() >= 4) ? 4 : 3;
}

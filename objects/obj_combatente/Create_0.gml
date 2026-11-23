if (!variable_global_exists("pausado"))
{
    global.pausado = false;
}

nome = "???";

hp_max = 100;
hp = hp_max;
hp_visual = hp;

dano_recebido = 0;
dano_timer = 0;
tipo_efeito = "dano";

flut_texto = "";
flut_cor = c_white;

ataque1_nome = "";
ataque1_tipo = "dano";
ataque1_alvo = "inimigo_um";
ataque1_valor = 0;
ataque1_efeito = "";
ataque1_chance = 100;
ataque1_turnos = 0;
ataque1_efeito_valor = 0;

ataque2_nome = "";
ataque2_tipo = "dano";
ataque2_alvo = "inimigo_um";
ataque2_valor = 0;
ataque2_efeito = "";
ataque2_chance = 100;
ataque2_turnos = 0;
ataque2_efeito_valor = 0;

ataque_dano = 10;
ataque_nome = "";
ataque_efeito = "";
ataque_efeito_chance = 0;
ataque_efeito_turnos = 0;
ataque_efeito_valor = 0;

ataque_especial_nome = "";
ataque_especial_dano = 0;
ataque_especial_turnos = 0;
ataque_especial_efeito = "";
ataque_especial_chance = 100;
ataque_especial_efeito_turnos = 0;
ataque_especial_efeito_valor = 0;
ataque_especial_texto = " em toda a equipe!";

contador_turnos = 0;

invoca_obj = noone;
invoca_turnos = 0;
invoca_max = 3;
invoca_total = 99;
invocacoes = 0;

furia_limite = 0;
furia = false;

atordoado = 0;
confuso = 0;
escudo_turnos = 0;
dot_turnos = 0;
dot_dano = 0;
dot_tipo = "fogo";

eh_chefe = false;
chefe_x = 770;
chefe_y = 236;
hud_chefe_dx = 0;
hud_chefe_y = 54;
hud_chefe_larg = 240;

lado = "";
dir_ataque = 1;
hud_compacto = false;
hud_altura = 120;
pos_fixa = false;

sombra = false;

morrendo = false;
morte_timer = 0;

escala_sprite = 2;

x_original = x;
y_original = y;

movimento_ataque = 25;
movimento_dano = 20;

animacao_combate = "normal";
animacao_timer = 0;

efeito_dano = false;
efeito_dano_timer = 0;

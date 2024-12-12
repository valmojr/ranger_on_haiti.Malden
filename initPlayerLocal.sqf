[] call compile preProcessFileLineNumbers "briefing.sqf";

if ((!isServer) && (player != player)) then {
	waitUntil {
		player == player
	};
};

if (isDedicated) exitWith {};

if (player != player) then {
	waitUntil {
		player == player
	};
};

while { true } do {
	waitUntil {
		(currentVisionMode player) == 1
	};

	PP_radial = ppEffectCreate ["radialBlur", 100];
	PP_radial ppEffectEnable true;
	PP_radial ppEffectAdjust [0.02, 0.13, 0.21, 0.36];
	PP_radial ppEffectCommit 0;
	PP_dynamic = ppEffectCreate ["DynamicBlur", 100];
	PP_dynamic ppEffectEnable true;
	PP_dynamic ppEffectAdjust [0.35];
	PP_dynamic ppEffectCommit 0;
	PP_film = ppEffectCreate ["FilmGrain", 2000];
	PP_film ppEffectEnable true;
	PP_film ppEffectAdjust [0.14, 1, 1, 0.5, 0.5, true];
	PP_film ppEffectCommit 0;
	pp_Color = ppEffectCreate ["ColorCorrections", 1502];
	pp_Color ppEffectEnable true;
	pp_Color ppEffectAdjust [1, 0.6, 0, [0, 0.1, 0.2, 0], [0, 1, 1.2, 0], [1, 1, 1, 0]];
	pp_Color ppEffectCommit 0;
	pp_Color ppEffectForceInNVG true;

	waitUntil {
		(currentVisionMode player) != 1
	};

	ppEffectDestroy PP_radial;
	ppEffectDestroy PP_dynamic;
	ppEffectDestroy PP_film;
	ppEffectDestroy pp_Color;
};

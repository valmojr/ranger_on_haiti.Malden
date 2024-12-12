params["_unit"];

civilianClothes = [
	"U_C_Poloshirt_blue",
	"U_C_Poloshirt_burgundy",
	"U_C_Poloshirt_redwhite",
	"U_C_Poloshirt_salmon",
	"U_C_Poloshirt_stripped",
	"U_C_Poloshirt_tricolour",
	"U_C_Man_casual_3_F",
	"U_C_Man_casual_1_F",
	"U_C_HunterBody_grn",
	"U_OrestesBody",
	"U_C_Mechanic_01_F",
	"U_C_man_sport_3_F",
	"U_C_man_sport_3_F",
	"U_C_man_sport_3_F",
	"U_C_man_sport_2_F",
	"U_C_man_sport_2_F",
	"U_C_man_sport_2_F",
	"U_C_man_casual_6_F",
	"U_C_man_casual_4_F",
	"U_C_man_casual_5_F"
];

civilianHats = [
	"",
	"",
	"",
	"",
	"",
	"",
	"",
	"",
	"",
	"",
	"",
	"",
	"rhs_beanie",
	"rhs_beanie_green",
	"H_Cap_grn_BI",
	"H_Cap_blk",
	"H_Cap_blu",
	"H_Cap_grn",
	"H_Cap_oli",
	"H_Cap_red"
];

civilianGoggles = [
	"",
	"",
	"",
	"",
	"",
	"",
	"",
	"G_Spectacles",
	"G_Squares"
];

weaponRow = [
	["arifle_AKM_F","30Rnd_762x39_Mag_F"],
	["arifle_AKM_F","30Rnd_762x39_Mag_F"],
	["arifle_AKM_F","30Rnd_762x39_Mag_F"],
	["arifle_AKM_F","30Rnd_762x39_Mag_F"],
	["arifle_AKM_F","30Rnd_762x39_Mag_F"],
	["arifle_AKM_F","30Rnd_762x39_Mag_F"],
	["rhs_weap_m4","rhs_mag_30Rnd_556x45_M855_Stanag"],
	["rhs_weap_m4","rhs_mag_30Rnd_556x45_M855_Stanag"],
	["rhs_weap_m4","rhs_mag_30Rnd_556x45_M855_Stanag"]
];

niggaFaces = [
	"TanoanHead_A3_04",
	"TanoanHead_A3_03",
	"TanoanHead_A3_02",
	"Barklem",
	"AfricanHead_02",
	"AfricanHead_03",
	"AfricanHead_01"
];

niggaVests = [
	"",
	"",
	"",
	"",
	"",
	"",
	""
];

_unit forceAddUniform (selectRandom civilianClothes);
_unit addHeadgear (selectRandom civilianHats);
_unit addGoggles (selectRandom civilianGoggles);
_unit setFace (selectRandom niggaFaces);
removeVest _unit;
_unit addVest (selectRandom niggaVests);

weapArray = selectRandom weaponRow;

_unit addMagazineGlobal (weapArray select 1);
_unit addWeaponGlobal (weapArray select 0);
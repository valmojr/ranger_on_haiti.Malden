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

niggaFaces = [
	"TanoanHead_A3_04",
	"TanoanHead_A3_03",
	"TanoanHead_A3_02",
	"Barklem",
	"AfricanHead_02",
	"AfricanHead_03",
	"AfricanHead_01"
];

niggaVoices = [
	"Male01FRE",
	"Male02FRE",
	"Male03FRE"
];

_unit forceAddUniform (selectRandom civilianClothes);
_unit addHeadgear (selectRandom civilianHats);
_unit addGoggles (selectRandom civilianGoggles);
_unit setFace (selectRandom niggaFaces);
removeVest _unit;
_unit setSpeaker (selectRandom niggaVoices)
/*
Author:	Quicksilver (changed by ToxaBes)
Description: check for restriction weapons and gear after load from aresenal or take from container
*/
_player = _this select 0;
_remove = _this param [1, false];

#define AT_MSG "Только ракетчики ПТ могут использовать это оружие"
#define AT_SMALL_MSG "Только ракетчики ПТ и командиры отделений могут использовать это оружие"
#define SNIPER_MSG "Только снайперы могут использовать это оружие"
#define AUTOTUR_MSG "Данное вооружение запрещено"
#define UAV_MSG "Только инженеры могут использовать терминал управления"
#define MG_MSG "Только пулеметчики могут использовать пулеметы"
#define MRK_MSG "Только пехотные снайперы могут использовать это оружие"
#define PILOT_MSG "Пилоты могут использовать только пистолеты и пистолеты-пулемёты"
#define GRENADIER_MSG "Использовать подствольные гранатометы могут только командиры отделений, медики и инженеры"
#define COMMANDER_MSG "Использовать бинокли с лазерным целеуказателем могут только командиры отделений"
#define MARKSMANOPT_MSG "Использовать оптические прицелы LRPS, SOS, AMS, KAHLIA могут только снайперы и пехотные снайперы"
#define GHILLIIE_MSG "Использовать гилли и маскхалаты могут только снайперы и пехотные снайперы"
#define UNIFORM_MSG "Униформа противника запрещена"
#define VEST_MSG "Жилеты противника запрещены"
#define BACKPACK_MSG "Рюкзаки противника запрещены"
#define HEADGEAR_MSG "Головные уборы противника запрещены"
#define ITEM_MSG "Предметы противника запрещены"
#define UNIFORM_PILOT_MSG "Эта униформа доступна только пилотам"
#define HEADGEAR_PILOT_MSG "Этот шлем доступен только пилотам"
#define RESTRICTED_MSG "Оружие и приспособления в данной расцветке запрещены"

// UAV TERMINAL
_uavOperator = ["B_engineer_F", "B_T_Engineer_F"];

// AT / MISSILE LAUNCHERS
_missileSoldiers = ["B_soldier_AT_F","B_T_Soldier_AT_F"];
_missileSpecialised = ["launch_B_Titan_F","launch_O_Titan_F","launch_I_Titan_F","launch_B_Titan_short_F","launch_O_Titan_short_F","launch_I_Titan_short_F","launch_B_Titan_tna_F","launch_B_Titan_short_tna_F","launch_O_Titan_ghex_F","launch_O_Titan_short_ghex_F"];

// SMALL MISSILE LAUNCHERS
_missileSmallSoldiers = ["B_soldier_AT_F","B_T_Soldier_AT_F","B_Soldier_SL_F","B_T_Soldier_SL_F"];
_missileSmallSpecialised = ["launch_RPG32_ghex_F","launch_RPG32_F","launch_NLAW_F","launch_RPG7_F"];

// SNIPER RIFLES
_snipers = ["B_sniper_F","B_T_Sniper_F"];
_sniperSpecialised = ["srifle_GM6_camo_F","srifle_GM6_camo_SOS_F","srifle_GM6_camo_LRPS_F","srifle_LRR_camo_F","srifle_LRR_camo_SOS_F","srifle_LRR_camo_LRPS_F","srifle_GM6_F","srifle_GM6_SOS_F","srifle_GM6_LRPS_F","srifle_LRR_F","srifle_LRR_SOS_F","srifle_LRR_LRPS_F","srifle_LRR_tna_F","srifle_LRR_tna_LRPS_F","srifle_GM6_ghex_F","srifle_GM6_ghex_LRPS_F","srifle_GM6_SOS_F","srifle_GM6_LRPS_F","srifle_GM6_camo_F","srifle_GM6_camo_SOS_F","srifle_GM6_camo_LRPS_F","srifle_GM6_ghex_F","srifle_GM6_camo_F","srifle_LRR_tna_F","srifle_LRR_camo_F"];

// LMG
_autoRiflemen = ["B_Soldier_AR_F","B_T_Soldier_AR_F"];
_autoSpecialised = ["LMG_Mk200_LP_BI_F","LMG_Mk200_BI_F","MMG_01_hex_F","MMG_01_tan_F","MMG_01_hex_ARCO_LP_F","MMG_02_camo_F","MMG_02_black_F","MMG_02_sand_F","MMG_02_sand_RCO_LP_F","MMG_02_black_RCO_BI_F","LMG_Mk200_F","LMG_Mk200_MRCO_F","LMG_Mk200_pointer_F","LMG_Zafir_F","LMG_Zafir_pointer_F","LMG_Zafir_ARCO_F","arifle_MX_SW_F","arifle_MX_SW_Black_F","arifle_MX_SW_khk_F","arifle_CTARS_blk_F","arifle_CTARS_ghex_F","arifle_CTARS_hex_F","arifle_CTARS_blk_Pointer_F","LMG_03_F","arifle_SPAR_02_blk_F","arifle_SPAR_02_khk_F","arifle_SPAR_02_snd_F","arifle_SPAR_02_blk_Pointer_F","arifle_MX_SW_khk_F","arifle_MX_SW_khk_Pointer_F","LMG_Zafir_pointer_F","LMG_Zafir_ARCO_F","arifle_MX_SW_F","arifle_MX_SW_khk_F","MMG_01_hex_F","MMG_02_sand_F","MMG_02_camo_F","arifle_CTARS_hex_F","arifle_CTARS_ghex_F","arifle_SPAR_02_khk_F"];

// MARKSMAN
_marksman = ["B_soldier_M_F","B_T_soldier_M_F"];
_marksmanGun = ["srifle_DMR_01_DMS_BI_F","srifle_DMR_01_DMS_snds_BI_F","srifle_EBR_MRCO_LP_BI_F","arifle_MXM_DMS_LP_BI_snds_F","arifle_MXM_Hamr_LP_BI_F","srifle_DMR_02_F","srifle_DMR_02_camo_F","srifle_DMR_02_sniper_F","srifle_DMR_02_ACO_F","srifle_DMR_02_MRCO_F","srifle_DMR_02_SOS_F","srifle_DMR_02_DMS_F","srifle_DMR_02_sniper_AMS_LP_S_F","srifle_DMR_02_camo_AMS_LP_F","srifle_DMR_02_ARCO_F","srifle_DMR_03_F","srifle_DMR_03_khaki_F","srifle_DMR_03_tan_F","srifle_DMR_03_multicam_F","srifle_DMR_03_woodland_F","srifle_DMR_03_spotter_F","srifle_DMR_03_ACO_F","srifle_DMR_03_MRCO_F","srifle_DMR_03_SOS_F","srifle_DMR_03_DMS_F","srifle_DMR_03_tan_AMS_LP_F","srifle_DMR_03_DMS_snds_F","srifle_DMR_03_ARCO_F","srifle_DMR_03_AMS_F","srifle_DMR_04_F","srifle_DMR_04_Tan_F","srifle_DMR_04_ACO_F","srifle_DMR_04_MRCO_F","srifle_DMR_04_SOS_F","srifle_DMR_04_DMS_F","srifle_DMR_04_ARCO_F","srifle_DMR_04_NS_LP_F","srifle_DMR_05_blk_F","srifle_DMR_05_hex_F","srifle_DMR_05_tan_f","srifle_DMR_05_ACO_F","srifle_DMR_05_MRCO_F","srifle_DMR_05_SOS_F","srifle_DMR_05_DMS_F","srifle_DMR_05_KHS_LP_F","srifle_DMR_05_DMS_snds_F","srifle_DMR_05_ARCO_F","srifle_DMR_06_camo_F","srifle_DMR_06_olive_F","srifle_DMR_06_camo_khs_F","srifle_DMR_01_F","srifle_DMR_01_ACO_F","srifle_DMR_01_MRCO_F","srifle_DMR_01_SOS_F","srifle_DMR_01_DMS_F","srifle_DMR_01_DMS_snds_F","srifle_DMR_01_ARCO_F","srifle_EBR_F","srifle_EBR_ACO_F","srifle_EBR_MRCO_pointer_F","srifle_EBR_ARCO_pointer_F","srifle_EBR_SOS_F","srifle_EBR_ARCO_pointer_snds_F","srifle_EBR_DMS_F","srifle_EBR_Hamr_pointer_F","srifle_EBR_DMS_pointer_snds_F","arifle_MXM_F","arifle_MXM_Hamr_pointer_F","arifle_MXM_SOS_pointer_F","arifle_MXM_RCO_pointer_snds_F","arifle_MXM_DMS_F","arifle_MXM_Black_F","srifle_DMR_07_blk_F","srifle_DMR_07_hex_F","srifle_DMR_07_ghex_F","srifle_DMR_07_blk_DMS_F","srifle_DMR_07_blk_DMS_Snds_F","arifle_MXM_khk_F","arifle_SPAR_03_blk_F","arifle_SPAR_03_khk_F","arifle_SPAR_03_snd_F","arifle_SPAR_03_blk_MOS_Pointer_Bipod_F","arifle_MXM_khk_F","arifle_MXM_khk_MOS_Pointer_Bipod_F","arifle_ARX_blk_F","arifle_ARX_ghex_F","arifle_ARX_hex_F","arifle_ARX_ghex_ACO_Pointer_Snds_F","arifle_ARX_ghex_ARCO_Pointer_Snds_F","arifle_ARX_ghex_DMS_Pointer_Snds_Bipod_F","arifle_ARX_hex_ACO_Pointer_Snds_F","arifle_ARX_hex_ARCO_Pointer_Snds_F","arifle_ARX_hex_DMS_Pointer_Snds_Bipod_F","srifle_DMR_01_F","srifle_DMR_01_ACO_F","srifle_DMR_01_MRCO_F","srifle_DMR_01_SOS_F","srifle_DMR_01_DMS_F","srifle_DMR_01_DMS_snds_F","srifle_DMR_01_ARCO_F","arifle_ARX_Viper_F","arifle_ARX_Viper_hex_F","arifle_MXM_khk_F","srifle_DMR_07_hex_F","srifle_DMR_07_ghex_F","srifle_DMR_05_hex_F","arifle_MXM_F","srifle_DMR_04_Tan_F","srifle_DMR_05_tan_f","srifle_DMR_02_sniper_F","srifle_DMR_03_multicam_F","srifle_DMR_03_tan_F""arifle_ARX_hex_F","arifle_ARX_ghex_F","arifle_SPAR_03_khk_F"];

// PILOTS
_pilot = ["B_Helipilot_F","B_T_Helipilot_F"];
_pilotWeapons = ["hgun_PDW2000_F","hgun_PDW2000_snds_F","hgun_PDW2000_Holo_F","hgun_PDW2000_Holo_snds_F","SMG_01_F","SMG_01_Holo_F","SMG_01_Holo_pointer_snds_F","SMG_01_ACO_F","SMG_02_F","SMG_02_ACO_F","SMG_02_ARCO_pointg_F","SMG_05_F"];
_pilotUniform = ["U_B_HeliPilotCoveralls","U_B_PilotCoveralls"];
_pilotHeadgear = ["H_PilotHelmetFighter_B","H_PilotHelmetHeli_B","H_CrewHelmetHeli_B"];

// GRENADIERS
_grenadier = ["B_Soldier_SL_F","B_T_Soldier_SL_F","B_medic_F","B_T_Medic_F","B_engineer_F","B_T_Engineer_F"];
_grenadierWeapons = ["arifle_Katiba_GL_F","arifle_TRG21_GL_F","arifle_TRG21_GL_MRCO_F","arifle_TRG21_GL_ACO_pointer_F","arifle_Katiba_GL_ACO_F","arifle_Katiba_GL_ARCO_pointer_F","arifle_Katiba_GL_ACO_pointer_F","arifle_Katiba_GL_ACO_pointer_snds_F","arifle_Mk20_GL_F","arifle_Mk20_GL_plain_F","arifle_Mk20_GL_MRCO_pointer_F","arifle_Mk20_GL_ACO_F","arifle_MX_GL_F","arifle_MX_GL_ACO_F","arifle_MX_GL_ACO_pointer_F","arifle_MX_GL_Hamr_pointer_F","arifle_MX_GL_Holo_pointer_snds_F","arifle_MX_GL_Black_F","arifle_MX_GL_Black_Hamr_pointer_F","arifle_AK12_GL_F","arifle_CTAR_GL_blk_F","arifle_CTAR_GL_ghex_F","arifle_CTAR_GL_hex_F","arifle_CTAR_GL_blk_ACO_F","arifle_CTAR_GL_blk_ACO_Pointer_Snds_F","arifle_MX_GL_khk_F","arifle_SPAR_01_GL_blk_F","arifle_SPAR_01_GL_khk_F","arifle_SPAR_01_GL_snd_F","arifle_SPAR_01_GL_blk_ACO_Pointer_F","arifle_MX_GL_khk_F","arifle_MX_GL_khk_ACO_F","arifle_MX_GL_khk_Hamr_Pointer_F","arifle_MX_GL_khk_Holo_Pointer_Snds_F","arifle_Katiba_GL_Nstalker_pointer_F","arifle_CTAR_GL_blk_ARCO_Pointer_F","arifle_MX_GL_khk_F","arifle_MX_GL_F","arifle_Mk20_GL_F","arifle_CTAR_GL_hex_F","arifle_CTAR_GL_ghex_F","arifle_SPAR_01_GL_khk_F"];

// COMMANDERS
_commanders = ["B_Soldier_SL_F","B_T_Soldier_SL_F"];
_commanderItems = ["Laserdesignator"];

// THERMAL
_ThermalOpt = ["optic_Nightstalker","optic_tws","optic_tws_mg"];
_ThermalTeam = [];

// MARKSMAN OPTICS
_marksmanOpticsGrp = ["B_sniper_F","B_T_Sniper_F","B_soldier_M_F","B_T_soldier_M_F"];
_marksmanOpticsItems = ["optic_KHS_blk","optic_KHS_hex","optic_KHS_old","optic_KHS_tan","optic_AMS","optic_AMS_khk","optic_AMS_snd","optic_SOS","optic_LRPS","optic_LRPS_ghex_F","optic_LRPS_tna_F","optic_SOS_khk_F"];

_ghillieGroups = ["B_soldier_M_F","B_sniper_F","B_T_soldier_M_F","B_T_Sniper_F"];
_ghillieItems = ["U_B_GhillieSuit","U_O_GhillieSuit","U_I_GhillieSuit","U_B_FullGhillie_lsh","U_B_FullGhillie_sard","U_B_FullGhillie_ard","U_O_FullGhillie_lsh","U_O_FullGhillie_sard","U_O_FullGhillie_ard","U_I_FullGhillie_lsh","U_I_FullGhillie_sard","U_I_FullGhillie_ard","U_B_T_FullGhillie_tna_F","U_B_T_Sniper_F","U_O_T_FullGhillie_tna_F","U_O_T_Sniper_F"];

// RESTRICTED PRIMARY WEAPON
//_primaryWeaponRestricted = ["arifle_MXC_khk_F","arifle_MX_khk_F","arifle_MX_GL_khk_F","arifle_MX_SW_khk_F","arifle_MXM_khk_F","srifle_DMR_07_hex_F","srifle_DMR_07_ghex_F","srifle_DMR_05_hex_F","srifle_GM6_ghex_F","srifle_GM6_camo_F","srifle_LRR_tna_F","arifle_CTAR_hex_F","arifle_CTAR_ghex_F","arifle_CTAR_GL_hex_F","arifle_CTAR_GL_ghex_F","arifle_CTARS_hex_F","arifle_CTARS_ghex_F","arifle_SPAR_01_khk_F","arifle_SPAR_01_GL_khk_F","arifle_SPAR_02_khk_F","arifle_SPAR_03_khk_F","arifle_ARX_hex_F","arifle_ARX_ghex_F","MMG_01_hex_F","arifle_Mk20_F","arifle_Mk20_GL_F","arifle_Mk20C_F"];

// RESTRICTED HEADGUN
//_headgunRestricted = ["hgun_P07_khk_F","hgun_Pistol_Signal_F"];

// RESTRICTED SECONDARY WEAPON
//_secondaryWeaponRestricted = ["launch_RPG32_ghex_F","launch_O_Titan_F","launch_O_Titan_ghex_F","launch_B_Titan_tna_F","launch_I_Titan_F","launch_O_Titan_short_ghex_F","launch_I_Titan_short_F","launch_O_Titan_short_F","launch_B_Titan_short_tna_F"];

// RESTRICTED ATTACMENTS
//_restrictedAttachments = ["optic_KHS_hex","optic_Arco_ghex_F","optic_DMS_ghex_F","optic_LRPS_ghex_F","optic_LRPS_tna_F","optic_Hamr_khk_F","optic_SOS_khk_F","muzzle_snds_H_MG_khk_F","muzzle_snds_m_khk_F","muzzle_snds_58_wdm_F","muzzle_snds_H_khk_F","muzzle_snds_65_TI_hex_F","muzzle_snds_65_TI_ghex_F","bipod_02_F_hex"];

// RESTRICTED GOOGLES
_restrictedGoogles = ["G_Balaclava_TI_tna_F","G_Balaclava_TI_G_tna_F"];

// UNIFORM
_allowedUniform = ["U_B_CombatUniform_mcam","U_B_CombatUniform_mcam_tshirt","U_B_CombatUniform_mcam_vest","U_B_GhillieSuit",
"U_B_HeliPilotCoveralls","U_B_Wetsuit","U_B_CombatUniform_mcam_worn","U_B_SpecopsUniform_sgg","U_B_PilotCoveralls","U_B_CTRG_1","U_B_CTRG_2",
"U_B_CTRG_3","U_B_survival_uniform","U_B_FullGhillie_lsh","U_B_FullGhillie_sard","U_B_FullGhillie_ard"];

// BACKPACKS
_allowedBackpacks = ["B_Carryall_cbr","B_Carryall_oli","B_Carryall_khk","B_Carryall_mcamo","B_Kitbag_cbr","B_Kitbag_sgg","B_Kitbag_rgr",
"B_Kitbag_mcamo","B_FieldPack_cbr","B_FieldPack_cbr","B_FieldPack_oli","B_FieldPack_blk","B_FieldPack_khk","B_Bergen_rgr","B_Bergen_blk",
"B_Bergen_mcamo","B_Bergen_sgg","B_TacticalPack_rgr","B_TacticalPack_oli","B_TacticalPack_blk","B_TacticalPack_mcamo","B_Parachute",
"B_AssaultPack_rgr","B_AssaultPack_cbr","B_AssaultPack_sgg","B_AssaultPack_khk","B_AssaultPack_blk","B_AssaultPack_mcamo","B_AssaultPackG",
"B_AssaultPack","B_Mortar_01_support_F","B_HMG_01_support_F","B_HMG_01_support_high_F","B_Mortar_01_weapon_F","B_AA_01_weapon_F",
"B_AT_01_weapon_F","B_GMG_01_high_weapon_F","B_HMG_01_high_weapon_F","B_GMG_01_weapon_F","B_HMG_01_weapon_F","B_ViperLightHarness_oli_F",
"B_ViperLightHarness_blk_F","B_ViperHarness_oli_F","B_ViperHarness_khk_F","B_ViperHarness_blk_F","B_Bergen_mcamo_F","B_AssaultPack_mcamo_AT",
"B_AssaultPack_rgr_Medic","B_Kitbag_mcamo_Eng","I_GMG_01_A_weapon_F","O_GMG_01_A_weapon_F","I_GMG_01_high_weapon_F","O_GMG_01_high_weapon_F",
"I_GMG_01_weapon_F","O_GMG_01_weapon_F","I_HMG_01_high_weapon_F","O_HMG_01_high_weapon_F","I_HMG_01_weapon_F","O_HMG_01_weapon_F",
"I_HMG_01_A_weapon_F","O_HMG_01_A_weapon_F","I_Mortar_01_support_F","O_Mortar_01_support_F","I_HMG_01_support_high_F","O_HMG_01_support_high_F",
"I_HMG_01_support_F","O_HMG_01_support_F","I_Mortar_01_weapon_F","O_Mortar_01_weapon_F","I_AA_01_weapon_F","O_AA_01_weapon_F","I_AT_01_weapon_F",
"O_AT_01_weapon_F","O_Static_Designator_02_weapon_F"];

// VESTS
_allowedVests = ["V_PlateCarrier1_rgr","V_PlateCarrier2_rgr","V_PlateCarrier3_rgr","V_PlateCarrierGL_rgr","V_PlateCarrier1_blk","V_PlateCarrierSpec_rgr",
"V_Chestrig_khk","V_Chestrig_rgr","V_Chestrig_blk","V_Chestrig_oli","V_TacVest_khk","V_TacVest_brn","V_TacVest_oli","V_TacVest_blk",
"V_TacVestIR_blk","V_TacVestCamo_khk","V_RebreatherB","V_PlateCarrierL_CTRG","V_PlateCarrierH_CTRG",
"V_PlateCarrierGL_blk","V_PlateCarrierGL_mtp","V_PlateCarrierSpec_blk","V_PlateCarrierSpec_mtp","V_PlateCarrier1_rgr_noflag_F",
"V_PlateCarrier2_rgr_noflag_F","V_TacChestrig_grn_F","V_TacChestrig_cbr_F","V_TacChestrig_oli_F","V_PlateCarrier2_blk","V_PlateCarrierIAGL_oli"];

// HEADGEAR
_allowedHeadgear = ["H_HelmetB","H_HelmetB_camo","H_HelmetB_paint","H_HelmetB_light","H_HelmetB_light","H_Booniehat_indp","H_Booniehat_mcamo",
"H_Booniehat_grn","H_Booniehat_tan","H_Booniehat_dirty","H_Booniehat_khk_hs","H_HelmetB_plain_mcamo","H_HelmetB_plain_blk","H_HelmetSpecB",
"H_HelmetSpecB_paint1","H_HelmetSpecB_paint2","H_HelmetSpecB_blk","H_HelmetB_grass","H_HelmetB_snakeskin","H_HelmetB_desert","H_HelmetB_black",
"H_HelmetB_sand","H_HelmetCrew_B","H_Helmet_Kerry","H_PilotHelmetFighter_B","H_PilotHelmetHeli_B","H_CrewHelmetHeli_B","H_HelmetB_light_grass",
"H_HelmetB_light_snakeskin","H_HelmetB_light_desert","H_HelmetB_light_black","H_HelmetB_light_sand","H_BandMask_khk","H_BandMask_reaper",
"H_BandMask_demon","H_Beret_gen_F","H_Cap_oli","H_Cap_oli_hs","H_Cap_headphones","H_Cap_tan","H_Cap_blk","H_Cap_tan_specops_US","H_Cap_khaki_specops_UK",
"H_Cap_grn","H_MilCap_mcamo","H_MilCap_rucamo","H_Bandanna_khk","H_Bandanna_khk_hs","H_Bandanna_cbr","H_Bandanna_sgg","H_Bandanna_gry","H_Bandanna_mcamo",
"H_Shemag_khk","H_Shemag_tan","H_Beret_blk","H_Beret_blk_POLICE","H_Beret_red","H_Beret_grn","H_Beret_grn_SF","H_Beret_brn_SF","H_Beret_02",
"H_Beret_Colonel","H_Watchcap_blk","H_Watchcap_khk","H_Watchcap_camo","H_Watchcap_sgg","H_TurbanO_blk","H_Cap_usblack","H_HelmetSpecB_snakeskin",
"H_HelmetSpecB_sand"];

// ITEMS
_allowedItems = ["ItemMap","ItemRadio","ItemGPS","ItemCompass","ItemWatch","G_Spectacles","B_UavTerminal","NVGoggles","NVGoggles_INDEP","NVGoggles_OPFOR",
"FirstAidKit","Medikit","ToolKit","Rangefinder","Laserdesignator","MineDetector","FirstAidKit","Medikit","ToolKit","Binocular","Laserbatteries","O_NVGoggles_hex_F",
"O_NVGoggles_urb_F","O_NVGoggles_ghex_F","NVGoggles_tna_F","NVGogglesB_blk_F","NVGogglesB_grn_F","NVGogglesB_gry_F"];

// Weapons check
_box = createVehicle ["groundWeaponHolder", _player modelToWorld [0,0.6,0], [], 0.5, "CAN_COLLIDE"];
_box setDir floor (random 360);
// Pilots
if (({_player isKindOf _x} count _pilot) > 0) then {
	if (!(primaryWeapon _player in _pilotWeapons) and (primaryWeapon _player != "")) then {
		if (!_remove) then {
		    _box addWeaponCargoGlobal [primaryWeapon _player, 1];
	    };		
	    _player removeWeapon (primaryWeapon _player);
		[format ["<t color='#F44336' size = '.55'>%1</t>", PILOT_MSG], 0, 1, 5, 0, 0] spawn BIS_fnc_dynamicText;
	};
};

// Grenadiers
if (({_player hasWeapon _x} count _grenadierWeapons) > 0) then {
	if (({_player isKindOf _x} count _grenadier) < 1) then {
		if (!_remove) then {
		    _box addWeaponCargoGlobal [primaryWeapon _player, 1];
	    };		
	    _player removeWeapon (primaryWeapon _player);
		[format ["<t color='#F44336' size = '.55'>%1</t>", GRENADIER_MSG], 0, 1, 5, 0, 0] spawn BIS_fnc_dynamicText;
	};
};

// Sniper Rifles
if (({_player hasWeapon _x} count _sniperSpecialised) > 0) then {
	if (({_player isKindOf _x} count _snipers) < 1) then {
		if (!_remove) then {
		    _box addWeaponCargoGlobal [primaryWeapon _player, 1];
	    };
		_player removeWeapon (primaryWeapon _player);
		[format ["<t color='#F44336' size = '.55'>%1</t>", SNIPER_MSG], 0, 1, 5, 0, 0] spawn BIS_fnc_dynamicText;
	};
};

// LMG
if (({_player hasWeapon _x} count _autoSpecialised) > 0) then {
	if (({_player isKindOf _x} count _autoRiflemen) < 1) then {
		if (!_remove) then {
		    _box addWeaponCargoGlobal [primaryWeapon _player, 1];
	    };
		_player removeWeapon (primaryWeapon _player);
		[format ["<t color='#F44336' size = '.55'>%1</t>", MG_MSG], 0, 1, 5, 0, 0] spawn BIS_fnc_dynamicText;
	};
};

// Marksman
if (({_player hasWeapon _x} count _marksmanGun) > 0) then {
	if (({_player isKindOf _x} count _marksman) < 1) then {
		if (!_remove) then {
		    _box addWeaponCargoGlobal [primaryWeapon _player, 1];
	    };
		_player removeWeapon (primaryWeapon _player);
		[format ["<t color='#F44336' size = '.55'>%1</t>", MRK_MSG], 0, 1, 5, 0, 0] spawn BIS_fnc_dynamicText;
	};
};

// Launchers
if (({_player hasWeapon _x} count _missileSpecialised) > 0) then {
	if (({_player isKindOf _x} count _missileSoldiers) < 1) then {
		if (!_remove) then {
		    _box addWeaponCargoGlobal [secondaryWeapon _player, 1];
	    };
		_player removeWeapon (secondaryWeapon _player);
		[format ["<t color='#F44336' size = '.55'>%1</t>", AT_MSG], 0, 1, 5, 0, 0] spawn BIS_fnc_dynamicText;
	};
};

// Small Launchers
if (({_player hasWeapon _x} count _missileSmallSpecialised) > 0) then {
	if (({_player isKindOf _x} count _missileSmallSoldiers) < 1) then {
		if (!_remove) then {
		    _box addWeaponCargoGlobal [secondaryWeapon _player, 1];
	    };
		_player removeWeapon (secondaryWeapon _player);
		[format ["<t color='#F44336' size = '.55'>%1</t>", AT_SMALL_MSG], 0, 1, 5, 0, 0] spawn BIS_fnc_dynamicText;
	};
};

// Thermal optics
_optics = primaryWeaponItems _player;
if (({_x in _optics} count _ThermalOpt) > 0) then {
	{_player removePrimaryWeaponItem  _x;} count _ThermalOpt;
	[format ["<t color='#F44336' size = '.55'>%1</t>", AUTOTUR_MSG], 0, 1, 5, 0, 0] spawn BIS_fnc_dynamicText;
};

// Laser Designators
_items = items _player + assignedItems _player;
if (({_x in _items} count _commanderItems) > 0) then {
	if (({_player isKindOf _x} count _commanders) < 1) then {
		_player removeItem "Laserbatteries";
		{
		    _player removeWeapon _x;
	    } forEach _commanderItems;
		[format ["<t color='#F44336' size = '.55'>%1</t>", COMMANDER_MSG], 0, 1, 5, 0, 0] spawn BIS_fnc_dynamicText;
	};
};

// Marksman optics
_optics = primaryWeaponItems _player;
if (({_x in _optics} count _marksmanOpticsItems) > 0) then {
	if (({_player isKindOf _x} count _marksmanOpticsGrp) < 1) then {
		{_player removePrimaryWeaponItem  _x;} count _marksmanOpticsItems;
		[format ["<t color='#F44336' size = '.55'>%1</t>", MARKSMANOPT_MSG], 0, 1, 5, 0, 0] spawn BIS_fnc_dynamicText;
	};
};

// Ghillie
_uniform = format ["%1", uniform _player];
if (_uniform != "") then {
    if (_uniform in _ghillieItems) then {    	
    	if (({_player isKindOf _x} count _ghillieGroups) < 1) then {
    		removeUniform _player;
    		[format ["<t color='#F44336' size = '.55'>%1</t>", GHILLIIE_MSG], 0, 1, 5, 0, 0] spawn BIS_fnc_dynamicText;
    	};
    };
};

// Pilot uniform
_uniform = format ["%1", uniform _player];
if (_uniform != "") then {
    if (_uniform in _pilotUniform) then {
    	if (({_player isKindOf _x} count _pilot) < 1) then {
    		removeUniform _player;
    		[format ["<t color='#F44336' size = '.55'>%1</t>", UNIFORM_PILOT_MSG], 0, 1, 5, 0, 0] spawn BIS_fnc_dynamicText;
    	};
    };
};

// Other uniform
_uniform = format ["%1", uniform _player];
if (_uniform != "") then {
    if !(_uniform in _allowedUniform) then {
    	removeUniform _player;
    	[format ["<t color='#F44336' size = '.55'>%1</t>", UNIFORM_MSG], 0, 1, 5, 0, 0] spawn BIS_fnc_dynamicText;
    };
};

// Vests
_vest = format ["%1", vest _player];
if (_vest != "") then {
    if !(_vest in _allowedVests) then {
    	removeVest _player;
    	[format ["<t color='#F44336' size = '.55'>%1</t>", VEST_MSG], 0, 1, 5, 0, 0] spawn BIS_fnc_dynamicText;
    };
};

// Backpacks
_backpack = format ["%1", backpack _player];
if (_backpack != "") then {
    if !(_backpack in _allowedBackpacks) then {
    	removeBackpack _player;
    	[format ["<t color='#F44336' size = '.55'>%1</t>", BACKPACK_MSG], 0, 1, 5, 0, 0] spawn BIS_fnc_dynamicText;
    };
};

// Pilot Headgear
_headgear = format ["%1", headgear _player];
if (_headgear != "") then {
    if (_headgear in _pilotHeadgear) then {
        if (({_player isKindOf _x} count _pilot) < 1) then {
    	    removeHeadgear _player;
    	    [format ["<t color='#F44336' size = '.55'>%1</t>", HEADGEAR_PILOT_MSG], 0, 1, 5, 0, 0] spawn BIS_fnc_dynamicText;
    	};
    };
};

// Other Headgear
_headgear = format ["%1", headgear _player];
if (_headgear != "") then {
    if !(_headgear in _allowedHeadgear) then {
    	removeHeadgear _player;
    	[format ["<t color='#F44336' size = '.55'>%1</t>", HEADGEAR_MSG], 0, 1, 5, 0, 0] spawn BIS_fnc_dynamicText;
    };
};

// UAV
_assignedItems = assignedItems _player;
if (({"B_UavTerminal" == _x} count _assignedItems) > 0) then {
	if (({_player isKindOf _x} count _uavOperator) < 1) then {
		_player unassignItem "B_UavTerminal";
		_player removeItem "B_UavTerminal";
		[format ["<t color='#F44336' size = '.55'>%1</t>", UAV_MSG], 0, 1, 5, 0, 0] spawn BIS_fnc_dynamicText;
	};
};

// Other items
_assignedItems = assignedItems _player;
{
	_currentItem = _x;
    if !(_currentItem in _allowedItems) then {
        _player unassignItem _currentItem;
		_player removeItem _currentItem;
		[format ["<t color='#F44336' size = '.55'>%1</t>", ITEM_MSG], 0, 1, 5, 0, 0] spawn BIS_fnc_dynamicText;
    };
} forEach _assignedItems;

// Restricted weapon
//if (({_player hasWeapon _x} count _primaryWeaponRestricted) > 0) then {
//    _player removeWeapon (primaryWeapon _player);
//	[format ["<t color='#F44336' size = '.55'>%1</t>", RESTRICTED_MSG], 0, 1, 5, 0, 0] spawn BIS_fnc_dynamicText;
//};
//if (({_player hasWeapon _x} count _headgunRestricted) > 0) then {
//    _player removeWeapon (handgunWeapon _player);
//	[format ["<t color='#F44336' size = '.55'>%1</t>", RESTRICTED_MSG], 0, 1, 5, 0, 0] spawn BIS_fnc_dynamicText;
//};
//if (({_player hasWeapon _x} count _secondaryWeaponRestricted) > 0) then {
//    _player removeWeapon (secondaryWeapon _player);
//	[format ["<t color='#F44336' size = '.55'>%1</t>", RESTRICTED_MSG], 0, 1, 5, 0, 0] spawn BIS_fnc_dynamicText;
//};
//_attachments = primaryWeaponItems _player; 
//{
//    if (_x in _restrictedAttachments) then {
//        _player removePrimaryWeaponItem _x;
//        [format ["<t color='#F44336' size = '.55'>%1</t>", RESTRICTED_MSG], 0, 1, 5, 0, 0] spawn BIS_fnc_dynamicText;
//    };
//} forEach _attachments;
_goggles = goggles _player;
if (_goggles in _restrictedGoogles) then {
    removeGoggles _player;
    [format ["<t color='#F44336' size = '.55'>%1</t>", RESTRICTED_MSG], 0, 1, 5, 0, 0] spawn BIS_fnc_dynamicText;
};

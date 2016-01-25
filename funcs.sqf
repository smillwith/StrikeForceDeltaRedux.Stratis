dingus_fnc_unitAssignLoadout = 
{
  params ["_unit"];

  comment "Remove existing items";
  removeAllWeapons _unit;
  removeAllItems _unit;
  removeAllAssignedItems _unit;
  removeUniform _unit;
  removeVest _unit;
  removeBackpack _unit;
  removeHeadgear _unit;
  removeGoggles _unit;
  

  comment "Add containers";
  //_unit forceAddUniform "U_BG_Guerilla3_1";
  _allUnis = ["U_BG_leader", "U_BG_Guerilla3_1"];
  _uni = _allUnis select floor random count _allUnis;
  _unit forceAddUniform _uni;
  _unit addItemToUniform "FirstAidKit";

  //_unit addHeadgear "H_Shemag_olive";
  _allHeadgear = ["H_Shemag_olive", "H_Shemag_khk", "H_Shemag_tan"];
  _headgear = _allHeadgear select floor random count _allHeadgear;
  _unit addHeadgear _headgear;
  
  comment "Add initial magazines";
  _unit addItemToUniform "30Rnd_9x21_Mag";
  _unit addItemToUniform "30Rnd_9x21_Mag";
  _unit addItemToUniform "30Rnd_9x21_Mag";

  comment "Add weapons";
  _unit addWeapon "SMG_02_F";
  
  comment "Add items";
  _unit linkItem "ItemMap";
  _unit linkItem "ItemRadio";

  comment "Set identity";
  _unit setFace "PersianHead_A3_02";
  _unit setSpeaker "Male01PER";

  //join group
  [_unit] joinSilent enemygroup1;

  //stand still
  dostop _unit;

  //force stand up
  _unit setUnitPos "UP";

};

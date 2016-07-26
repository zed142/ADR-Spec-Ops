/*
Author: ToxaBes
Description: create partizane base.
Format: [] call QS_fnc_createPartizanBase;
*/

private ["_basePositions", "_dist", "_position", "_accepted", "_curPos", "_respawnPos", "_flagPos", "_sd", "_sp"];

_basePositions = [
    [13221.9,7448.17,0.59], [12654,7192.5,0], [11530.5,7057.72,0.69], [11877.8,8213.58,0], [9559.33,9230.85,3.7345], [9901.68,9830.57,0], [10454.8,11620.7,0],
    [10737.2,11970.4,0], [11560.7,11969.4,0.25], [11736.9,11839.5,0.26], [11137,12221.7,0.3], [12514,13312.8,0], [11869.7,13783.8,0.22], [11439.8,14241.1,0.47],
    [11913.8,14357.9,0.73], [12358.1,14354.8,0.35], [12708,14731.3,0.46], [12606.3,16338.9,0.73], [12596.8,17010.2,0], [14166.5,16250.6,0.68], [16008.1,17039.4,0.605],
    [16069.4,16911.9,0.62], [16063.8,16238.7,3.623], [16531.3,20301.7,3.154], [16496.3,21738.9,0], [14196.2,22169.9,0.6], [10207.5,20185.9,0], [9358.4,21150.4,0.35],
    [9155.59,21645.9,0.35], [9723.42,22280.7,4.2], [4887.99,21919.2,0], [3538.53,20006.7,0.57], [4160.08,17388.8,4.16186], [3882.85,18205.4,0], [3616.73,17821,0],
    [2959,18524.1,0.39], [3415.34,19284.7,0], [5390.26,17904.1,0.15], [4059.98,19229.7,0.18], [4617.37,19921.8,0], [6507.81,20005,0.84], [8407.99,18241.3,15.153],
    [8759.83,16512.8,0.41], [9018.29,16065.6,0], [8947.21,15515.7,0.24], [9506.14,15020.3,0], [9613.95,15166.7,0.3], [10245.3,14867.6,0.64], [12591.8,15376.3,0.23],
    [12669,14507.7,0.39], [20840.5,15784.4,0], [18378.7,15566.3,0.37], [19324.2,17079.1,0.25], [21241.9,16539.2,0.22], [20302.3,17169.4,0.47], [19179.9,18152.3,0],
    [20892.7,19224.5,0.6], [21000.4,19456.7,0.14], [21967.3,21025.6,1.62], [22567.7,21953.6,4.27], [23355.4,24198.6,0.27], [26901.7,24337.2,0.1], [27612.1,23298.6,1.12],
    [25645,22443.1,0], [26530.5,20509.6,0.44], [25809.3,20173.6,0.15], [25393.5,20391.6,0], [22588.1,16771.8,0.9], [22569.4,16382.7,0.27], [22539.3,16036.9,0.4],
    [19402.3,14310.9,0.33], [20410,11462,0], [21537.6,10942.4,0.2], [21313.2,10444.6,0.44], [20504.3,8888.95,0], [20797.3,7299.77,0], [20374.3,6103.22,0.27],
    [17932.4,8782.14,3.96], [16490.4,10038.2,0.66], [15773.7,10652.5,0.5], [14896.4,11062.4,3.9], [17137,11377.5,0.16], [16550.3,12795.2,0.40], [16597.5,12830,0.27],
    [17398.1,13246.8,0.6], [8999.22,11689.3,0.33], [8366,10747.3,0.29], [8307.86,10051.4,0.52], [7158.61,11449.1,0.46], [6902.16,11094,0.58], [5109.58,9952.21,0.64],
    [6391.73,12090.6,0.45], [6400.99,12100.9,0.3], [7549.3,12203.2,0.37], [7160.34,12118,0.6], [3571.28,10244,4.8], [3075.15,12172.9,0.27], [3260.71,12439.1,0.24],
    [3813.48,12400.6,0.28], [3582.4,14450.8,4.46]
];
_dist = 1500;
_position = [0, 0, 0];
_accepted = false;
_curPos = getPos partizan_ammo;
while {!_accepted} do {
	_position = _basePositions call BIS_fnc_selectRandom;;
	if (_position distance2D (getMarkerPos "aoMarker") > _dist) then {
		if (_position distance2D (getMarkerPos "sideMarker") > _dist) then {
			if (_position distance2D (getMarkerPos "priorityMarker") > _dist) then {
				if (_position distance2D (_curPos) > _dist) then {
				    _accepted = true;
				};
			};
		};
	};
};
_respawnPos = [((_position select 0) + random 3),((_position select 1) + random 3),_position select 2];
partizan_ammo setPos _position;
"respawn_guerrila" setMarkerPos _respawnPos;
"partizan_base" setMarkerPos _position;

_dist = 5;
_accepted = false;
_flagPos = _position findEmptyPosition [1, _dist, typeOf partizan_flag];
if (count _flagPos > 0) then {
    if (_flagPos distance2D _position < 50) then {
        if (!isOnRoad _flagPos) then {
            _accepted = true;
        };
    };
};
while {!_accepted} do {
    _dist = _dist + 5;
    _flagPos = _position findEmptyPosition [1, _dist, typeOf partizan_flag];
    if (count _flagPos > 0) then {
        if (_flagPos distance2D _position < _dist) then {
            if (!isOnRoad _flagPos) then {
                _accepted = true;
            };
        };
    };
};
partizan_flag setPos _flagPos;
partizan_flag removeAllEventHandlers "HandleDamage";
partizan_flag removeAllEventHandlers "killed";
partizan_flag allowDamage false;

{
    _sd = random 360;
    _dist = 10;
    _accepted = false;
    _sp = [_position, 0.25, _dist, 1, 0, 0.5, 0] call BIS_fnc_findSafePos;
    _sp = _sp findEmptyPosition [0, 5, typeOf _x];
    if (count _sp > 0) then {
        if (_sp distance2D _position < 50) then {
            if (!isOnRoad _sp) then {
                _accepted = true;
            };
        };
    };
    while {!_accepted} do {
        _dist = _dist + 10;
        _sp = [_position, 0.25, _dist, 1, 0, 0.5, 0] call BIS_fnc_findSafePos;
        _sp = _sp findEmptyPosition [0, 5, typeOf _x];
        if (count _sp > 0) then {
            if (_sp distance2D _position < _dist) then {
                if (!isOnRoad _sp) then {
                    _accepted = true;
                };
            };
        };
    };
    _x setPos _sp;
    _x setDir _sd;
    sleep 1;
} forEach [suv1, kvadr2_1, kvadr1_1, pickup1, jeep1];

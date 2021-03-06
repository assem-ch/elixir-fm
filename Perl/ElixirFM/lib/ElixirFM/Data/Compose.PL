
package ElixirFM::Data::Compose;

use Data::Dumper;

$Data::Dumper::Indent = 0;
$Data::Dumper::Terse = 1;

use strict;


warn "Generating dictionaries, please be patient ...\n";

open PM, '>' . (substr __FILE__, 0, -2) . 'pm';

select PM;


print << 'PM';

package ElixirFM::Data::Compose;

sub new {

    my $obj = bless {}, ref $_[0] || $_[0];

$obj->{'data'} = {

PM


our $data = {};
our $lexs = [];

our $idx = 0;

foreach my $lexeme (@{data()}) {

    push @{$lexs}, shift @{$lexeme};

    for (my $i = 0; $i < @{$lexeme}; $i += 2) {

        unshift @{$lexeme->[$i + 1]}, $idx;

        push @{$data->{$lexeme->[$i]}}, $lexeme->[$i + 1];
    }

    $idx++;
}


printf "%s\t=> %s,\n", Data::Dumper->Dump([$_]), Data::Dumper->Dump([$data->{$_}]) foreach keys %{$data};


print << 'PM';

};

$obj->{'lexs'} = [

PM


printf "%s,\n", Data::Dumper->Dump([$_]) foreach @{$lexs};


print << 'PM';

];

$obj->{'tags'} = [

PM


printf "%s,\n", Data::Dumper->Dump([$_]) foreach @{tags()};


print << 'PM';

];

$obj->{'tmpl'} = [

PM


printf "%s,\n", Data::Dumper->Dump([$_]) foreach @{tmpl()};


print << 'PM';

];

$obj->{'cont'} = [

PM


printf "%s,\n", Data::Dumper->Dump([$_]) foreach @{cont()};


print << 'PM';

];

    return $obj;
}

1;

PM


close PM;


sub data {

    return [

[['^gU^gUl','^gU^gUl','_____',['googol'],'Num [_____ |< At] []',1,1],
'Aljwjwl', [
	[0, 0],	0	],
'AljwjwlAn', [
	[0, 1],	0	],
'AljwjwlAt', [
	[1, 2],	0	],
'Aljwjwlyn', [
	[0, 3],	0	],
'jwjwl', [
	[0, 4],	0,
	[0, 5],	1,
	[0, 6],	2	],
'jwjwlA', [
	[0, 7],	0,
	[0, 8],	3	],
'jwjwlAn', [
	[0, 9],	0	],
'jwjwlAt', [
	[1, 10],	0,
	[1, 11],	3	],
'jwjwly', [
	[0, 12],	4	],
'jwjwlyn', [
	[0, 13],	0	]],

[['.gU.gUl','.gU.gUl','_____',['googol'],'Num [_____ |< At] []',2,1],
'Algwgwl', [
	[0, 0],	0	],
'AlgwgwlAn', [
	[0, 1],	0	],
'AlgwgwlAt', [
	[1, 2],	0	],
'Algwgwlyn', [
	[0, 3],	0	],
'gwgwl', [
	[0, 6],	2,
	[0, 5],	1,
	[0, 4],	0	],
'gwgwlA', [
	[0, 7],	0,
	[0, 8],	3	],
'gwgwlAn', [
	[0, 9],	0	],
'gwgwlAt', [
	[1, 11],	3,
	[1, 10],	0	],
'gwgwly', [
	[0, 12],	4	],
'gwgwlyn', [
	[0, 13],	0	]],

[['trIliyUn','trIliyUn','_____',['trillion'],'Num [_____ |< At] []',3,1],
'Altrylywn', [
	[0, 0],	0	],
'AltrylywnAn', [
	[0, 1],	0	],
'AltrylywnAt', [
	[1, 2],	0	],
'Altrylywnyn', [
	[0, 3],	0	],
'trylywn', [
	[0, 4],	0,
	[0, 5],	1,
	[0, 6],	2	],
'trylywnA', [
	[0, 7],	0,
	[0, 8],	3	],
'trylywnAn', [
	[0, 9],	0	],
'trylywnAt', [
	[1, 11],	3,
	[1, 10],	0	],
'trylywny', [
	[0, 12],	4	],
'trylywnyn', [
	[0, 13],	0	]],

[['milyAr','milyAr','_____',['milliard','billion'],'Num [_____ |< At] []',4,1],
'AlmlyAr', [
	[0, 0],	0	],
'AlmlyArAn', [
	[0, 1],	0	],
'AlmlyArAt', [
	[1, 2],	0	],
'AlmlyAryn', [
	[0, 3],	0	],
'mlyAr', [
	[0, 6],	2,
	[0, 5],	1,
	[0, 4],	0	],
'mlyArA', [
	[0, 8],	3,
	[0, 7],	0	],
'mlyArAn', [
	[0, 9],	0	],
'mlyArAt', [
	[1, 11],	3,
	[1, 10],	0	],
'mlyAry', [
	[0, 12],	4	],
'mlyAryn', [
	[0, 13],	0	]],

[['bilyUn','b l y n','KiRDUS',['billion'],'Num [KiRDUS |< At,KaRADIS] []',5,1],
'AlblAyyn', [
	[2, 14],	0	],
'Alblywn', [
	[3, 0],	0	],
'AlblywnAn', [
	[3, 1],	0	],
'AlblywnAt', [
	[4, 2],	0	],
'Alblywnyn', [
	[3, 3],	0	],
'blAyyn', [
	[2, 15],	0,
	[2, 16],	3	],
'blywn', [
	[3, 6],	2,
	[3, 5],	1,
	[3, 4],	0	],
'blywnA', [
	[3, 8],	3,
	[3, 7],	0	],
'blywnAn', [
	[3, 9],	0	],
'blywnAt', [
	[4, 11],	3,
	[4, 10],	0	],
'blywny', [
	[3, 12],	4	],
'blywnyn', [
	[3, 13],	0	]],

[['milyUn','m l y n','KiRDUS',['million'],'Num [KiRDUS |< At,KaRADIS] []',6,1],
'AlmlAyyn', [
	[2, 14],	0	],
'Almlywn', [
	[3, 0],	0	],
'AlmlywnAn', [
	[3, 1],	0	],
'AlmlywnAt', [
	[4, 2],	0	],
'Almlywnyn', [
	[3, 3],	0	],
'mlAyyn', [
	[2, 16],	3,
	[2, 15],	0	],
'mlywn', [
	[3, 4],	0,
	[3, 5],	1,
	[3, 6],	2	],
'mlywnA', [
	[3, 7],	0,
	[3, 8],	3	],
'mlywnAn', [
	[3, 9],	0	],
'mlywnAt', [
	[4, 11],	3,
	[4, 10],	0	],
'mlywny', [
	[3, 12],	4	],
'mlywnyn', [
	[3, 13],	0	]],

[['lakk','l k k','FaCL',['hundred thousand','lac'],'Num [FuCUL,HaFCAL] []',7,1],
'AlOlkAk', [
	[5, 14],	0	],
'Allk', [
	[6, 0],	0	],
'AllkAn', [
	[6, 1],	0	],
'Allkwk', [
	[7, 14],	0	],
'Allkyn', [
	[6, 3],	0	],
'OlkAk', [
	[5, 16],	3,
	[5, 17],	0	],
'OlkAkA', [
	[5, 18],	0	],
'lk', [
	[6, 6],	2,
	[6, 4],	0,
	[6, 5],	1	],
'lkA', [
	[6, 7],	0,
	[6, 8],	3	],
'lkAn', [
	[6, 9],	0	],
'lkwk', [
	[7, 17],	0,
	[7, 16],	3	],
'lkwkA', [
	[7, 18],	0	],
'lky', [
	[6, 12],	4	],
'lkyn', [
	[6, 13],	0	]],

[['ribwaT','r b w','FiCL |< aT',['ten thousand','myriad'],'Num [FiCL |< At] []',8,1],
'AlrbwAt', [
	[8, 2],	0	],
'Alrbwp', [
	[9, 0],	0	],
'AlrbwtAn', [
	[9, 1],	0	],
'Alrbwtyn', [
	[9, 3],	0	],
'rbwAt', [
	[8, 11],	3,
	[8, 10],	0	],
'rbwp', [
	[9, 19],	0	],
'rbwt', [
	[9, 6],	2,
	[9, 5],	1	],
'rbwtA', [
	[9, 8],	5	],
'rbwtAn', [
	[9, 9],	0	],
'rbwty', [
	[9, 12],	4	],
'rbwtyn', [
	[9, 13],	0	]],

[['\'alf','\' l f','FaCL',['thousand'],'Num [FuCUL,HACAL] []',9,1],
'AlOlf', [
	[6, 0],	0	],
'AlOlfAn', [
	[6, 1],	0	],
'AlOlfyn', [
	[6, 3],	0	],
'AlOlwf', [
	[7, 14],	0	],
'Al|lAf', [
	[10, 14],	0	],
'Olf', [
	[6, 5],	1,
	[6, 4],	0,
	[6, 6],	2	],
'OlfA', [
	[6, 8],	3,
	[6, 7],	0	],
'OlfAn', [
	[6, 9],	0	],
'Olfy', [
	[6, 12],	4	],
'Olfyn', [
	[6, 13],	0	],
'Olwf', [
	[7, 17],	0,
	[7, 16],	3	],
'OlwfA', [
	[7, 18],	0	],
'|lAf', [
	[10, 17],	0,
	[10, 16],	3	],
'|lAfA', [
	[10, 18],	0	]],

[['mi\'aT','m \' y','FiC |< aT',['hundred'],'Num [FiC |< Un,FiC |< At] []',10,1],
'Alm}At', [
	[11, 20],	0	],
'Alm}p', [
	[12, 21],	0	],
'Alm}tAn', [
	[12, 22],	0	],
'Alm}tyn', [
	[12, 23],	0	],
'Alm}wn', [
	[13, 24],	0	],
'Alm}yn', [
	[13, 25],	0	],
'm}', [
	[13, 26],	2	],
'm}At', [
	[11, 27],	0,
	[11, 28],	3	],
'm}p', [
	[12, 29],	0	],
'm}t', [
	[12, 31],	2,
	[12, 30],	1	],
'm}tA', [
	[12, 32],	5	],
'm}tAn', [
	[12, 33],	0	],
'm}ty', [
	[12, 34],	4	],
'm}tyn', [
	[12, 35],	0	],
'm}w', [
	[13, 36],	4	],
'm}wn', [
	[13, 37],	0	],
'm}y', [
	[13, 38],	4	],
'm}yn', [
	[13, 39],	0	]],

[['m_I\'aT','m \' y','"F_IC" |< aT',['hundred'],'Num ["F_IC" |< Un,"F_IC" |< At] []',11,1],
'AlmA}At', [
	[14, 20],	0	],
'AlmA}p', [
	[15, 21],	0	],
'AlmA}tAn', [
	[15, 22],	0	],
'AlmA}tyn', [
	[15, 23],	0	],
'AlmA}wn', [
	[16, 24],	0	],
'AlmA}yn', [
	[16, 25],	0	],
'mA\'', [
	[16, 26],	2	],
'mAW', [
	[16, 26],	2	],
'mA}', [
	[16, 26],	2	],
'mA}At', [
	[14, 27],	0,
	[14, 28],	3	],
'mA}p', [
	[15, 29],	0	],
'mA}t', [
	[15, 30],	1,
	[15, 31],	2	],
'mA}tA', [
	[15, 32],	5	],
'mA}tAn', [
	[15, 33],	0	],
'mA}ty', [
	[15, 34],	4	],
'mA}tyn', [
	[15, 35],	0	],
'mA}w', [
	[16, 36],	4	],
'mA}wn', [
	[16, 37],	0	],
'mA}y', [
	[16, 38],	4	],
'mA}yn', [
	[16, 39],	0	]],

[['`a^saraT','` ^s r','FaCaL |< aT',['ten'],'Num [] [FaCL]',12,1],
'AlE$r', [
	[6, 40],	0	],
'AlE$rp', [
	[17, 41],	0	],
'E$r', [
	[6, 42],	0	],
'E$rA', [
	[6, 43],	0	],
'E$rp', [
	[17, 44],	0	]],

[['`a^saraT','` ^s r','FaCaL |< aT',['ten','score','dozen'],'Num [FaCaL |< At] []',12,2],
'AlE$rAt', [
	[18, 2],	0	],
'AlE$rp', [
	[17, 0],	0	],
'E$rAt', [
	[18, 10],	0,
	[18, 11],	3	],
'E$rp', [
	[17, 19],	0	],
'E$rt', [
	[17, 5],	3	]],

[['`a^sar','` ^s r','FaCaL',['- teen'],'Num [] [FaCL |< aT]',12,3],
'E$r', [
	[19, 45],	0	],
'E$rp', [
	[20, 46],	0	]],

[['`i^srUn','` ^s r','FiCL |< Un',['twenty'],'Num [] []',12,4],
'AlE$rwn', [
	[21, 47],	0	],
'AlE$ryn', [
	[21, 48],	0	],
'E$rw', [
	[21, 49],	0	],
'E$rwn', [
	[21, 50],	0	],
'E$ry', [
	[21, 51],	0	],
'E$ryn', [
	[21, 52],	0	]],

[['tis`aT','t s `','FiCL |< aT',['nine'],'Num [] [FiCL]',13,1],
'AltsE', [
	[21, 53],	0	],
'AltsEp', [
	[9, 54],	0	],
'tsE', [
	[21, 56],	6,
	[21, 55],	0	],
'tsEA', [
	[21, 57],	0	],
'tsEp', [
	[9, 58],	0	]],

[['tis`Un','t s `','FiCL |< Un',['ninety'],'Num [] []',13,2],
'AltsEwn', [
	[21, 47],	0	],
'AltsEyn', [
	[21, 48],	0	],
'tsEw', [
	[21, 49],	0	],
'tsEwn', [
	[21, 50],	0	],
'tsEy', [
	[21, 51],	0	],
'tsEyn', [
	[21, 52],	0	]],

[['_tamAniyaT','_t m n','FaCALI |< aT',['eight'],'Num [] [FaCALI]',14,1],
'AlvmAny', [
	[22, 53],	0	],
'AlvmAnyp', [
	[23, 54],	0	],
'vmAn', [
	[22, 59],	0	],
'vmAny', [
	[22, 56],	6,
	[22, 60],	0	],
'vmAnyA', [
	[22, 57],	0	],
'vmAnyp', [
	[23, 58],	0	]],

[['_tamAnUn','_t m n','FaCAL |< Un',['eighty'],'Num [] []',14,2],
'AlvmAnwn', [
	[24, 47],	0	],
'AlvmAnyn', [
	[24, 48],	0	],
'vmAnw', [
	[24, 49],	0	],
'vmAnwn', [
	[24, 50],	0	],
'vmAny', [
	[24, 51],	0	],
'vmAnyn', [
	[24, 52],	0	]],

[['sab`aT','s b `','FaCL |< aT',['seven'],'Num [] [FaCL]',15,1],
'AlsbE', [
	[6, 53],	0	],
'AlsbEp', [
	[20, 54],	0	],
'sbE', [
	[6, 56],	6,
	[6, 55],	0	],
'sbEA', [
	[6, 57],	0	],
'sbEp', [
	[20, 58],	0	]],

[['sab`Un','s b `','FaCL |< Un',['seventy'],'Num [] []',15,2],
'AlsbEwn', [
	[6, 47],	0	],
'AlsbEyn', [
	[6, 48],	0	],
'sbEw', [
	[6, 49],	0	],
'sbEwn', [
	[6, 50],	0	],
'sbEy', [
	[6, 51],	0	],
'sbEyn', [
	[6, 52],	0	]],

[['sittaT','s t t','FiCL |< aT',['six'],'Num [] [FiCL]',16,1],
'Alst', [
	[21, 53],	0	],
'Alstp', [
	[9, 54],	0	],
'st', [
	[21, 56],	6,
	[21, 55],	0	],
'stA', [
	[21, 57],	0	],
'stp', [
	[9, 58],	0	]],

[['sittUn','s t t','FiCL |< Un',['sixty'],'Num [] []',16,2],
'Alstwn', [
	[21, 47],	0	],
'Alstyn', [
	[21, 48],	0	],
'stw', [
	[21, 49],	0	],
'stwn', [
	[21, 50],	0	],
'sty', [
	[21, 51],	0	],
'styn', [
	[21, 52],	0	]],

[['_hamsaT','_h m s','FaCL |< aT',['five'],'Num [] [FaCL]',17,1],
'Alxms', [
	[6, 53],	0	],
'Alxmsp', [
	[20, 54],	0	],
'xms', [
	[6, 55],	0,
	[6, 56],	6	],
'xmsA', [
	[6, 57],	0	],
'xmsp', [
	[20, 58],	0	]],

[['_hamsUn','_h m s','FaCL |< Un',['fifty'],'Num [] []',17,2],
'Alxmswn', [
	[6, 47],	0	],
'Alxmsyn', [
	[6, 48],	0	],
'xmsw', [
	[6, 49],	0	],
'xmswn', [
	[6, 50],	0	],
'xmsy', [
	[6, 51],	0	],
'xmsyn', [
	[6, 52],	0	]],

[['\'arba`aT','r b `','HaFCaL |< aT',['four'],'Num [] [HaFCaL]',18,1],
'AlOrbE', [
	[25, 53],	0	],
'AlOrbEp', [
	[26, 54],	0	],
'OrbE', [
	[25, 56],	6,
	[25, 55],	0	],
'OrbEA', [
	[25, 57],	0	],
'OrbEp', [
	[26, 58],	0	]],

[['\'arba`Un','r b `','HaFCaL |< Un',['fourty'],'Num [] []',18,2],
'AlOrbEwn', [
	[25, 47],	0	],
'AlOrbEyn', [
	[25, 48],	0	],
'OrbEw', [
	[25, 49],	0	],
'OrbEwn', [
	[25, 50],	0	],
'OrbEy', [
	[25, 51],	0	],
'OrbEyn', [
	[25, 52],	0	]],

[['_talA_taT','_t l _t','FaCAL |< aT',['three'],'Num [] [FaCAL]',19,1],
'AlvlAv', [
	[24, 53],	0	],
'AlvlAvp', [
	[27, 54],	0	],
'vlAv', [
	[24, 55],	0,
	[24, 56],	6	],
'vlAvA', [
	[24, 57],	0	],
'vlAvp', [
	[27, 58],	0	]],

[['_talA_tUn','_t l _t','FaCAL |< Un',['thirty'],'Num [] []',19,2],
'AlvlAvwn', [
	[24, 47],	0	],
'AlvlAvyn', [
	[24, 48],	0	],
'vlAvw', [
	[24, 49],	0	],
'vlAvwn', [
	[24, 50],	0	],
'vlAvy', [
	[24, 51],	0	],
'vlAvyn', [
	[24, 52],	0	]],

[['i_tnAn','_t n y','IFC |< An',['two'],'Num [] [IFC |< aT |< An]',20,1],
'AlAvnA', [
	[28, 61],	0	],
'AlAvnAn', [
	[28, 62],	0	],
'AlAvntA', [
	[29, 63],	0	],
'AlAvntAn', [
	[29, 64],	0	],
'AlAvnty', [
	[29, 65],	0	],
'AlAvntyn', [
	[29, 66],	0	],
'AlAvny', [
	[28, 67],	0	],
'AlAvnyn', [
	[28, 68],	0	],
'AvnA', [
	[28, 69],	0	],
'AvnAn', [
	[28, 70],	0	],
'AvntA', [
	[29, 71],	0	],
'AvntAn', [
	[29, 72],	0	],
'Avnty', [
	[29, 73],	0	],
'Avntyn', [
	[29, 74],	0	],
'Avny', [
	[28, 75],	0	],
'Avnyn', [
	[28, 76],	0	]],

[['\'a.had','\' .h d','FaCaL',['one'],'Num [] [FiCLY]',21,1],
'AlIHdY', [
	[30, 77],	0	],
'AlOHd', [
	[19, 78],	0	],
'IHdY', [
	[30, 79],	0	],
'OHd', [
	[19, 80],	0	],
'OHdA', [
	[19, 81],	0	]],

[['wA.hid','w .h d','FACiL',['one'],'Num [] [FACiL |< aT]',22,1],
'AlwAHd', [
	[31, 78],	0	],
'AlwAHdp', [
	[32, 77],	0	],
'wAHd', [
	[31, 80],	0	],
'wAHdA', [
	[31, 81],	0	],
'wAHdp', [
	[32, 82],	0	]],


    ]
}

sub tags {

    return [

# 0
[['QM-----S1D','al','"u"'],
 ['QM-----S2D','al','"i"'],
 ['QM-----S4D','al','"a"']],

# 1
[['QM-----D1D','al','"Ani"']],

# 2
[['QM-----P1D','al','"u"'],
 ['QM-----P2D','al','"i"'],
 ['QM-----P4D','al','"i"']],

# 3
[['QM-----D2D','al','"ayni"'],
 ['QM-----D4D','al','"ayni"']],

# 4
[['QM-----S1I','','"uN"'],
 ['QM-----S2I','','"iN"'],
 ['QM-----S1R','','"u"'],
 ['QM-----S2R','','"i"'],
 ['QM-----S4R','','"a"'],
 ['QM-----S1A','','"u"'],
 ['QM-----S2A','','"i"'],
 ['QM-----S4A','','"a"']],

# 5
[['QM-----S1R','','"u"'],
 ['QM-----S2R','','"i"'],
 ['QM-----S4R','','"a"']],

# 6
[['QM-----S1R','','"u"'],
 ['QM-----S2R','','"i"'],
 ['QM-----S4R','','"a"'],
 ['QM-----D2R','','"ay"'],
 ['QM-----D4R','','"ay"']],

# 7
[['QM-----S4I','','"aN"'],
 ['QM-----D1R','','"A"']],

# 8
[['QM-----D1R','','"A"']],

# 9
[['QM-----D1I','','"Ani"'],
 ['QM-----D1A','','"Ani"']],

# 10
[['QM-----P1I','','"uN"'],
 ['QM-----P2I','','"iN"'],
 ['QM-----P4I','','"iN"'],
 ['QM-----P1R','','"u"'],
 ['QM-----P2R','','"i"'],
 ['QM-----P4R','','"i"'],
 ['QM-----P1A','','"u"'],
 ['QM-----P2A','','"i"'],
 ['QM-----P4A','','"i"']],

# 11
[['QM-----P1R','','"u"'],
 ['QM-----P2R','','"i"'],
 ['QM-----P4R','','"i"']],

# 12
[['QM-----D2R','','"ay"'],
 ['QM-----D4R','','"ay"']],

# 13
[['QM-----D2I','','"ayni"'],
 ['QM-----D4I','','"ayni"'],
 ['QM-----D2A','','"ayni"'],
 ['QM-----D4A','','"ayni"']],

# 14
[['QM-----P1D','al','"u"'],
 ['QM-----P2D','al','"i"'],
 ['QM-----P4D','al','"a"']],

# 15
[['QM-----P1I','','"u"'],
 ['QM-----P2I','','"a"'],
 ['QM-----P4I','','"a"'],
 ['QM-----P1R','','"u"'],
 ['QM-----P2R','','"i"'],
 ['QM-----P4R','','"a"'],
 ['QM-----P1A','','"u"'],
 ['QM-----P2A','','"i"'],
 ['QM-----P4A','','"a"']],

# 16
[['QM-----P1R','','"u"'],
 ['QM-----P2R','','"i"'],
 ['QM-----P4R','','"a"']],

# 17
[['QM-----P1I','','"uN"'],
 ['QM-----P2I','','"iN"'],
 ['QM-----P1R','','"u"'],
 ['QM-----P2R','','"i"'],
 ['QM-----P4R','','"a"'],
 ['QM-----P1A','','"u"'],
 ['QM-----P2A','','"i"'],
 ['QM-----P4A','','"a"']],

# 18
[['QM-----P4I','','"aN"']],

# 19
[['QM-----S1I','','"uN"'],
 ['QM-----S2I','','"iN"'],
 ['QM-----S4I','','"aN"'],
 ['QM-----S1R','','"u"'],
 ['QM-----S2R','','"i"'],
 ['QM-----S4R','','"a"'],
 ['QM-----S1A','','"u"'],
 ['QM-----S2A','','"i"'],
 ['QM-----S4A','','"a"']],

# 20
[['QC-----P1D','al','"u"'],
 ['QC-----P2D','al','"i"'],
 ['QC-----P4D','al','"i"']],

# 21
[['QC-----S1D','al','"u"'],
 ['QC-----S2D','al','"i"'],
 ['QC-----S4D','al','"a"']],

# 22
[['QC-----D1D','al','"Ani"']],

# 23
[['QC-----D2D','al','"ayni"'],
 ['QC-----D4D','al','"ayni"']],

# 24
[['QC-----P1D','al','"Una"']],

# 25
[['QC-----P2D','al','"Ina"'],
 ['QC-----P4D','al','"Ina"']],

# 26
[['QC-----P1R','','"U"'],
 ['QC-----P2R','','"I"'],
 ['QC-----P4R','','"I"']],

# 27
[['QC-----P1I','','"uN"'],
 ['QC-----P2I','','"iN"'],
 ['QC-----P4I','','"iN"'],
 ['QC-----P1R','','"u"'],
 ['QC-----P2R','','"i"'],
 ['QC-----P4R','','"i"'],
 ['QC-----P1A','','"u"'],
 ['QC-----P2A','','"i"'],
 ['QC-----P4A','','"i"']],

# 28
[['QC-----P1R','','"u"'],
 ['QC-----P2R','','"i"'],
 ['QC-----P4R','','"i"']],

# 29
[['QC-----S1I','','"uN"'],
 ['QC-----S2I','','"iN"'],
 ['QC-----S4I','','"aN"'],
 ['QC-----S1R','','"u"'],
 ['QC-----S2R','','"i"'],
 ['QC-----S4R','','"a"'],
 ['QC-----S1A','','"u"'],
 ['QC-----S2A','','"i"'],
 ['QC-----S4A','','"a"']],

# 30
[['QC-----S1R','','"u"'],
 ['QC-----S2R','','"i"'],
 ['QC-----S4R','','"a"']],

# 31
[['QC-----S1R','','"u"'],
 ['QC-----S2R','','"i"'],
 ['QC-----S4R','','"a"'],
 ['QC-----D2R','','"ay"'],
 ['QC-----D4R','','"ay"']],

# 32
[['QC-----D1R','','"A"']],

# 33
[['QC-----D1I','','"Ani"'],
 ['QC-----D1A','','"Ani"']],

# 34
[['QC-----D2R','','"ay"'],
 ['QC-----D4R','','"ay"']],

# 35
[['QC-----D2I','','"ayni"'],
 ['QC-----D4I','','"ayni"'],
 ['QC-----D2A','','"ayni"'],
 ['QC-----D4A','','"ayni"']],

# 36
[['QC-----P1R','','"U"']],

# 37
[['QC-----P1I','','"Una"'],
 ['QC-----P1A','','"Una"']],

# 38
[['QC-----P2R','','"I"'],
 ['QC-----P4R','','"I"']],

# 39
[['QC-----P2I','','"Ina"'],
 ['QC-----P4I','','"Ina"'],
 ['QC-----P2A','','"Ina"'],
 ['QC-----P4A','','"Ina"']],

# 40
[['QX----F-1D','al','"u"'],
 ['QX----F-2D','al','"i"'],
 ['QX----F-4D','al','"a"']],

# 41
[['QX----M-1D','al','"u"'],
 ['QX----M-2D','al','"i"'],
 ['QX----M-4D','al','"a"']],

# 42
[['QX----F-1I','','"uN"'],
 ['QX----F-2I','','"iN"'],
 ['QX----F-1R','','"u"'],
 ['QX----F-2R','','"i"'],
 ['QX----F-4R','','"a"'],
 ['QX----F-1A','','"u"'],
 ['QX----F-2A','','"i"'],
 ['QX----F-4A','','"a"']],

# 43
[['QX----F-4I','','"aN"']],

# 44
[['QX----M-1I','','"uN"'],
 ['QX----M-2I','','"iN"'],
 ['QX----M-4I','','"aN"'],
 ['QX----M-1R','','"u"'],
 ['QX----M-2R','','"i"'],
 ['QX----M-4R','','"a"'],
 ['QX----M-1A','','"u"'],
 ['QX----M-2A','','"i"'],
 ['QX----M-4A','','"a"']],

# 45
[['QU----M---','','"a"']],

# 46
[['QU----F---','','"a"']],

# 47
[['QL------1D','al','"Una"']],

# 48
[['QL------2D','al','"Ina"'],
 ['QL------4D','al','"Ina"']],

# 49
[['QL------1R','','"U"']],

# 50
[['QL------1I','','"Una"'],
 ['QL------1A','','"Una"']],

# 51
[['QL------2R','','"I"'],
 ['QL------4R','','"I"']],

# 52
[['QL------2I','','"Ina"'],
 ['QL------4I','','"Ina"'],
 ['QL------2A','','"Ina"'],
 ['QL------4A','','"Ina"']],

# 53
[['QV----F-1D','al','"u"'],
 ['QV----F-2D','al','"i"'],
 ['QV----F-4D','al','"a"'],
 ['QV----F-1C','al','"u"'],
 ['QV----F-2C','al','"i"'],
 ['QV----F-4C','al','"a"']],

# 54
[['QV----M-1D','al','"u"'],
 ['QV----M-2D','al','"i"'],
 ['QV----M-4D','al','"a"'],
 ['QV----M-1C','al','"u"'],
 ['QV----M-2C','al','"i"'],
 ['QV----M-4C','al','"a"']],

# 55
[['QV----F-1I','','"uN"'],
 ['QV----F-2I','','"iN"'],
 ['QV----F-1R','','"u"'],
 ['QV----F-2R','','"i"'],
 ['QV----F-4R','','"a"'],
 ['QV----F-1A','','"u"'],
 ['QV----F-2A','','"i"'],
 ['QV----F-4A','','"a"'],
 ['QV----F-1L','','"u"'],
 ['QV----F-2L','','"i"'],
 ['QV----F-4L','','"a"']],

# 56
[['QV----F-1R','','"u"'],
 ['QV----F-2R','','"i"'],
 ['QV----F-4R','','"a"']],

# 57
[['QV----F-4I','','"aN"']],

# 58
[['QV----M-1I','','"uN"'],
 ['QV----M-2I','','"iN"'],
 ['QV----M-4I','','"aN"'],
 ['QV----M-1R','','"u"'],
 ['QV----M-2R','','"i"'],
 ['QV----M-4R','','"a"'],
 ['QV----M-1A','','"u"'],
 ['QV----M-2A','','"i"'],
 ['QV----M-4A','','"a"'],
 ['QV----M-1L','','"u"'],
 ['QV----M-2L','','"i"'],
 ['QV----M-4L','','"a"']],

# 59
[['QV----F-1I','','"uN"'],
 ['QV----F-2I','','"iN"']],

# 60
[['QV----F-1R','','"u"'],
 ['QV----F-2R','','"i"'],
 ['QV----F-4R','','"a"'],
 ['QV----F-1A','','"u"'],
 ['QV----F-2A','','"i"'],
 ['QV----F-4A','','"a"'],
 ['QV----F-1L','','"u"'],
 ['QV----F-2L','','"i"'],
 ['QV----F-4L','','"a"']],

# 61
[['QY----M-1C','al','"A"']],

# 62
[['QY----M-1D','al','"Ani"']],

# 63
[['QY----F-1C','al','"A"']],

# 64
[['QY----F-1D','al','"Ani"']],

# 65
[['QY----F-2C','al','"ay"'],
 ['QY----F-4C','al','"ay"']],

# 66
[['QY----F-2D','al','"ayni"'],
 ['QY----F-4D','al','"ayni"']],

# 67
[['QY----M-2C','al','"ay"'],
 ['QY----M-4C','al','"ay"']],

# 68
[['QY----M-2D','al','"ayni"'],
 ['QY----M-4D','al','"ayni"']],

# 69
[['QY----M-1R','','"A"'],
 ['QY----M-1L','','"A"']],

# 70
[['QY----M-1I','','"Ani"'],
 ['QY----M-1A','','"Ani"']],

# 71
[['QY----F-1R','','"A"'],
 ['QY----F-1L','','"A"']],

# 72
[['QY----F-1I','','"Ani"'],
 ['QY----F-1A','','"Ani"']],

# 73
[['QY----F-2R','','"ay"'],
 ['QY----F-4R','','"ay"'],
 ['QY----F-2L','','"ay"'],
 ['QY----F-4L','','"ay"']],

# 74
[['QY----F-2I','','"ayni"'],
 ['QY----F-4I','','"ayni"'],
 ['QY----F-2A','','"ayni"'],
 ['QY----F-4A','','"ayni"']],

# 75
[['QY----M-2R','','"ay"'],
 ['QY----M-4R','','"ay"'],
 ['QY----M-2L','','"ay"'],
 ['QY----M-4L','','"ay"']],

# 76
[['QY----M-2I','','"ayni"'],
 ['QY----M-4I','','"ayni"'],
 ['QY----M-2A','','"ayni"'],
 ['QY----M-4A','','"ayni"']],

# 77
[['QI----F-1D','al','"u"'],
 ['QI----F-2D','al','"i"'],
 ['QI----F-4D','al','"a"'],
 ['QI----F-1C','al','"u"'],
 ['QI----F-2C','al','"i"'],
 ['QI----F-4C','al','"a"']],

# 78
[['QI----M-1D','al','"u"'],
 ['QI----M-2D','al','"i"'],
 ['QI----M-4D','al','"a"'],
 ['QI----M-1C','al','"u"'],
 ['QI----M-2C','al','"i"'],
 ['QI----M-4C','al','"a"']],

# 79
[['QI----F-1I','','"u"'],
 ['QI----F-2I','','"a"'],
 ['QI----F-4I','','"a"'],
 ['QI----F-1R','','"u"'],
 ['QI----F-2R','','"i"'],
 ['QI----F-4R','','"a"'],
 ['QI----F-1A','','"u"'],
 ['QI----F-2A','','"i"'],
 ['QI----F-4A','','"a"'],
 ['QI----F-1L','','"u"'],
 ['QI----F-2L','','"i"'],
 ['QI----F-4L','','"a"']],

# 80
[['QI----M-1I','','"uN"'],
 ['QI----M-2I','','"iN"'],
 ['QI----M-1R','','"u"'],
 ['QI----M-2R','','"i"'],
 ['QI----M-4R','','"a"'],
 ['QI----M-1A','','"u"'],
 ['QI----M-2A','','"i"'],
 ['QI----M-4A','','"a"'],
 ['QI----M-1L','','"u"'],
 ['QI----M-2L','','"i"'],
 ['QI----M-4L','','"a"']],

# 81
[['QI----M-4I','','"aN"']],

# 82
[['QI----F-1I','','"uN"'],
 ['QI----F-2I','','"iN"'],
 ['QI----F-4I','','"aN"'],
 ['QI----F-1R','','"u"'],
 ['QI----F-2R','','"i"'],
 ['QI----F-4R','','"a"'],
 ['QI----F-1A','','"u"'],
 ['QI----F-2A','','"i"'],
 ['QI----F-4A','','"a"'],
 ['QI----F-1L','','"u"'],
 ['QI----F-2L','','"i"'],
 ['QI----F-4L','','"a"']],


    ]
}

sub tmpl {

    return [

# 0
'_____',

# 1
'_____ |< At',

# 2
'KaRADIS',

# 3
'KiRDUS',

# 4
'KiRDUS |< At',

# 5
'HaFCAL',

# 6
'FaCL',

# 7
'FuCUL',

# 8
'FiCL |< At',

# 9
'FiCL |< aT',

# 10
'HACAL',

# 11
'FiC |< At',

# 12
'FiC |< aT',

# 13
'FiC',

# 14
'"F_IC" |< At',

# 15
'"F_IC" |< aT',

# 16
'"F_IC"',

# 17
'FaCaL |< aT',

# 18
'FaCaL |< At',

# 19
'FaCaL',

# 20
'FaCL |< aT',

# 21
'FiCL',

# 22
'FaCALI',

# 23
'FaCALI |< aT',

# 24
'FaCAL',

# 25
'HaFCaL',

# 26
'HaFCaL |< aT',

# 27
'FaCAL |< aT',

# 28
'IFC',

# 29
'IFC |< aT',

# 30
'FiCLY',

# 31
'FACiL',

# 32
'FACiL |< aT',


    ]
}

sub cont {

    return [

# 0
[['']],

# 1
[['SP---1-D2-','SP---1-P2-','SP---2--2-','SP---3--2-']],

# 2
[['SP---1-S2-']],

# 3
[['SP---1-D2-','SP---1-P2-','SP---2--2-','SP---3--2-'],['SP---1-S2-']],

# 4
[[''],['SP---1-D2-','SP---1-P2-','SP---2--2-','SP---3--2-']],

# 5
[[''],['SP---1-D2-','SP---1-P2-','SP---2--2-','SP---3--2-'],['SP---1-S2-']],

# 6
[['QC-----S2I','QC-----S2R','QC-----S2A']],


    ]
}

1;


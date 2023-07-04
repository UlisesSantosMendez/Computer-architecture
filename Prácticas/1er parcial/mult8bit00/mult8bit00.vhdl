library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.all;
use packagemult8bit00.all;

entity mult8bit00 is
	port(
		 Ai: in std_logic_vector(7 downto 0);
		 Bi: in std_logic_vector(7 downto 0);
		 Ro: out std_logic_vector(15 downto 0));
end mult8bit00;

architecture mult8bit0 of mult8bit00 is
signal sa00,ss00,ss01,ss02,ss03,ss04,ss05:std_logic_vector(6 downto 0);
signal sa01,sc00,sa02,sc01,sa03,sc02,sa04,sc03,sa05,sc04,sa06,sc05,sa07,sc06:std_logic_vector(7 downto 0);

begin
------------------------AND-------------------------------
	M800: and00 port map(Aa => Ai(0),
						  Ba => Bi(0),
						  Ya => Ro(0));
	
	M801: and00 port map(Aa => Ai(1),
						  Ba => Bi(0),
						  Ya => sa00(0));
	
	M802: and00 port map(Aa => Ai(2),
						  Ba => Bi(0),
						  Ya => sa00(1));
	
	M803: and00 port map(Aa => Ai(3),
						  Ba => Bi(0),
						  Ya => sa00(2));
	
	M804: and00 port map(Aa => Ai(4),
						  Ba => Bi(0),
						  Ya => sa00(3));
	
	M805: and00 port map(Aa => Ai(5),
						  Ba => Bi(0),
						  Ya => sa00(4));
	
	M806: and00 port map(Aa => Ai(6),
						  Ba => Bi(0),
						  Ya => sa00(5));
	
	M807: and00 port map(Aa => Ai(7),
						  Ba => Bi(0),
						  Ya => sa00(6));
						  
	M808: and00 port map(Aa => Ai(0),
						  Ba => Bi(1),
						  Ya => sa01(0));
	
	M809: and00 port map(Aa => Ai(1),
						  Ba => Bi(1),
						  Ya => sa01(1));
	
	M810: and00 port map(Aa => Ai(2),
						  Ba => Bi(1),
						  Ya => sa01(2));
	
	M811: and00 port map(Aa => Ai(3),
						  Ba => Bi(1),
						  Ya => sa01(3));
	
	M812: and00 port map(Aa => Ai(4),
						  Ba => Bi(1),
						  Ya => sa01(4));
	
	M813: and00 port map(Aa => Ai(5),
						  Ba => Bi(1),
						  Ya => sa01(5));
	
	M814: and00 port map(Aa => Ai(6),
						  Ba => Bi(1),
						  Ya => sa01(6));
	
	M815: and00 port map(Aa => Ai(7),
						  Ba => Bi(1),
						  Ya => sa01(7));
----------------------------------FA-----------------------------------
	M816: fa00 port map(C00 => '0',
						 A00 => sa00(0),
						 B00 => sa01(0),
						 C01 => sc00(0),
						 S00 => Ro(1));
	
	M817: fa00 port map(C00 => sc00(0),
						 A00 => sa00(1),
						 B00 => sa01(1),
						 C01 => sc00(1),
						 S00 => ss00(0));
						 
	M818: fa00 port map(C00 => sc00(1),
						 A00 => sa00(2),
						 B00 => sa01(2),
						 C01 => sc00(2),
						 S00 => ss00(1));
						 
	M819: fa00 port map(C00 => sc00(2),
						 A00 => sa00(3),
						 B00 => sa01(3),
						 C01 => sc00(3),
						 S00 => ss00(2));
	
	M820: fa00 port map(C00 => sc00(3),
						 A00 => sa00(4),
						 B00 => sa01(4),
						 C01 => sc00(4),
						 S00 => ss00(3));
						 
	M821: fa00 port map(C00 => sc00(4),
						 A00 => sa00(5),
						 B00 => sa01(5),
						 C01 => sc00(5),
						 S00 => ss00(4));

	M822: fa00 port map(C00 => sc00(5),
						 A00 => sa00(6),
						 B00 => sa01(6),
						 C01 => sc00(6),
						 S00 => ss00(5));
						 
	M823: fa00 port map(C00 => sc00(6),
						 A00 => '0',
						 B00 => sa01(7),
						 C01 => sc00(7),
						 S00 => ss00(6));	
---------------------------------AND------------------------------------------	
	M824: and00 port map(Aa => Ai(0),
						  Ba => Bi(2),
						  Ya => sa02(0));
	
	M825: and00 port map(Aa => Ai(1),
						  Ba => Bi(2),
						  Ya => sa02(1));
	
	M826: and00 port map(Aa => Ai(2),
						  Ba => Bi(2),
						  Ya => sa02(2));
	
	M827: and00 port map(Aa => Ai(3),
						  Ba => Bi(2),
						  Ya => sa02(3));
	
	M828: and00 port map(Aa => Ai(4),
						  Ba => Bi(2),
						  Ya => sa02(4));
	
	M829: and00 port map(Aa => Ai(5),
						  Ba => Bi(2),
						  Ya => sa02(5));
	
	M830: and00 port map(Aa => Ai(6),
						  Ba => Bi(2),
						  Ya => sa02(6));
	
	M831: and00 port map(Aa => Ai(7),
						  Ba => Bi(2),
						  Ya => sa02(7));
--------------------------------FA-------------------------------
	M832: fa00 port map(C00 => '0',
						 A00 => ss00(0),
						 B00 => sa02(0),
						 C01 => sc01(0),
						 S00 => Ro(2));
						 
	M833: fa00 port map(C00 => sc01(0),
						 A00 => ss00(1),
						 B00 => sa02(1),
						 C01 => sc01(1),
						 S00 => ss01(0));
	
	M834: fa00 port map(C00 => sc01(1),
						 A00 => ss00(2),
						 B00 => sa02(2),
						 C01 => sc01(2),
						 S00 => ss01(1));
	
	M835: fa00 port map(C00 => sc01(2),
						 A00 => ss00(3),
						 B00 => sa02(3),
						 C01 => sc01(3),
						 S00 => ss01(2));
	
	M836: fa00 port map(C00 => sc01(3),
						 A00 => ss00(4),
						 B00 => sa02(4),
						 C01 => sc01(4),
						 S00 => ss01(3));
	
	M837: fa00 port map(C00 => sc01(4),
						 A00 => ss00(5),
						 B00 => sa02(5),
						 C01 => sc01(5),
						 S00 => ss01(4));
	
	M838: fa00 port map(C00 => sc01(5),
						 A00 => ss00(6),
						 B00 => sa02(6),
						 C01 => sc01(6),
						 S00 => ss01(5));
	
	M839: fa00 port map(C00 => sc01(6),
						 A00 => sc00(7),
						 B00 => sa02(7),
						 C01 => sc01(7),
						 S00 => ss01(6));
-----------------------------AND------------------
	M840: and00 port map(Aa => Ai(0),
						  Ba => Bi(3),
						  Ya => sa03(0));
						  
	M841: and00 port map(Aa => Ai(1),
						  Ba => Bi(3),
						  Ya => sa03(1));
						  
	M842: and00 port map(Aa => Ai(2),
						  Ba => Bi(3),
						  Ya => sa03(2));
						  
	M843: and00 port map(Aa => Ai(3),
						  Ba => Bi(3),
						  Ya => sa03(3));
	
	M844: and00 port map(Aa => Ai(4),
						  Ba => Bi(3),
						  Ya => sa03(4));
						  
	M845: and00 port map(Aa => Ai(5),
						  Ba => Bi(3),
						  Ya => sa03(5));
						  
	M846: and00 port map(Aa => Ai(6),
						  Ba => Bi(3),
						  Ya => sa03(6));
						  
	M847: and00 port map(Aa => Ai(7),
						  Ba => Bi(3),
						  Ya => sa03(7));
---------------------------------------FA---------------------
	M848: fa00 port map(C00 => '0',
						 A00 => ss01(0),
						 B00 => sa03(0),
						 C01 => sc02(0),
						 S00 => Ro(3));
	
	M849: fa00 port map(C00 => sc02(0),
						 A00 => ss01(1),
						 B00 => sa03(1),
						 C01 => sc02(1),
						 S00 => ss02(0));
	
	M850: fa00 port map(C00 => sc02(1),
						 A00 => ss01(2),
						 B00 => sa03(2),
						 C01 => sc02(2),
						 S00 => ss02(1));
	
	M851: fa00 port map(C00 => sc02(2),
						 A00 => ss01(3),
						 B00 => sa03(3),
						 C01 => sc02(3),
						 S00 => ss02(2));
	
	M852: fa00 port map(C00 => sc02(3),
						 A00 => ss01(4),
						 B00 => sa03(4),
						 C01 => sc02(4),
						 S00 => ss02(3));
	
	M853: fa00 port map(C00 => sc02(4),
						 A00 => ss01(5),
						 B00 => sa03(5),
						 C01 => sc02(5),
						 S00 => ss02(4));
	
	M854: fa00 port map(C00 => sc02(5),
						 A00 => ss01(6),
						 B00 => sa03(6),
						 C01 => sc02(6),
						 S00 => ss02(5));
	
	M855: fa00 port map(C00 => sc02(6),
						 A00 => sc01(7),
						 B00 => sa03(7),
						 C01 => sc02(7),
						 S00 => ss02(6));
---------------------------------------AND--------------------------
	M856: and00 port map(Aa => Ai(0),
						  Ba => Bi(4),
						  Ya => sa04(0));
	
	M857: and00 port map(Aa => Ai(1),
						  Ba => Bi(4),
						  Ya => sa04(1));
	
	M858: and00 port map(Aa => Ai(2),
						  Ba => Bi(4),
						  Ya => sa04(2));
	
	M859: and00 port map(Aa => Ai(3),
						  Ba => Bi(4),
						  Ya => sa04(3));
	
	M860: and00 port map(Aa => Ai(4),
						  Ba => Bi(4),
						  Ya => sa04(4));
	
	M861: and00 port map(Aa => Ai(5),
						  Ba => Bi(4),
						  Ya => sa04(5));
	
	M862: and00 port map(Aa => Ai(6),
						  Ba => Bi(4),
						  Ya => sa04(6));
	
	M863: and00 port map(Aa => Ai(7),
						  Ba => Bi(4),
						  Ya => sa04(7));
----------------------------------FA---------------------------
	M864: fa00 port map(C00 => '0',
						 A00 => ss02(0),
						 B00 => sa04(0),
						 C01 => sc03(0),
						 S00 => Ro(4));
						 
	M865: fa00 port map(C00 => sc03(0),
						 A00 => ss02(1),
						 B00 => sa04(1),
						 C01 => sc03(1),
						 S00 => ss03(0));
	
	M866: fa00 port map(C00 => sc03(1),
						 A00 => ss02(2),
						 B00 => sa04(2),
						 C01 => sc03(2),
						 S00 => ss03(1));
						 
	M867: fa00 port map(C00 => sc03(2),
						 A00 => ss02(3),
						 B00 => sa04(3),
						 C01 => sc03(3),
						 S00 => ss03(2));
						 
	M868: fa00 port map(C00 => sc03(3),
						 A00 => ss02(4),
						 B00 => sa04(4),
						 C01 => sc03(4),
						 S00 => ss03(3));
						 
	M869: fa00 port map(C00 => sc03(4),
						 A00 => ss02(5),
						 B00 => sa04(5),
						 C01 => sc03(5),
						 S00 => ss03(4));
						 
	M870: fa00 port map(C00 => sc03(5),
						 A00 => ss02(6),
						 B00 => sa04(6),
						 C01 => sc03(6),
						 S00 => ss03(5));
						 
	M871: fa00 port map(C00 => sc03(6),
						 A00 => sc02(7),
						 B00 => sa04(7),
						 C01 => sc03(7),
						 S00 => ss03(6));
----------------------------------AND----------------------------
	M872: and00 port map(Aa => Ai(0),
						  Ba => Bi(5),
						  Ya => sa05(0));
						  
	M873: and00 port map(Aa => Ai(1),
						  Ba => Bi(5),
						  Ya => sa05(1));
						  
	M874: and00 port map(Aa => Ai(2),
						  Ba => Bi(5),
						  Ya => sa05(2));
						  
	M875: and00 port map(Aa => Ai(3),
						  Ba => Bi(5),
						  Ya => sa05(3));
						  
	M876: and00 port map(Aa => Ai(4),
						  Ba => Bi(5),
						  Ya => sa05(4));
						  
	M877: and00 port map(Aa => Ai(5),
						  Ba => Bi(5),
						  Ya => sa05(5));
						  
	M878: and00 port map(Aa => Ai(6),
						  Ba => Bi(5),
						  Ya => sa05(6));
						  
	M879: and00 port map(Aa => Ai(7),
						  Ba => Bi(5),
						  Ya => sa05(7));
---------------------------------FA---------------------------
	M880: fa00 port map(C00 => '0',
						 A00 => ss03(0),
						 B00 => sa05(0),
						 C01 => sc04(0),
						 S00 => Ro(5));
	
	M881: fa00 port map(C00 => sc04(0),
						 A00 => ss03(1),
						 B00 => sa05(1),
						 C01 => sc04(1),
						 S00 => ss04(0));
	
	M882: fa00 port map(C00 => sc04(1),
						 A00 => ss03(2),
						 B00 => sa05(2),
						 C01 => sc04(2),
						 S00 => ss04(1));

	M883: fa00 port map(C00 => sc04(2),
						 A00 => ss03(3),
						 B00 => sa05(3),
						 C01 => sc04(3),
						 S00 => ss04(2));
	
	M884: fa00 port map(C00 => sc04(3),
						 A00 => ss03(4),
						 B00 => sa05(4),
						 C01 => sc04(4),
						 S00 => ss04(3));
	
	M885: fa00 port map(C00 => sc04(4),
						 A00 => ss03(5),
						 B00 => sa05(5),
						 C01 => sc04(5),
						 S00 => ss04(4));
	
	M886: fa00 port map(C00 => sc04(5),
						 A00 => ss03(6),
						 B00 => sa05(6),
						 C01 => sc04(6),
						 S00 => ss04(5));
	
	M887: fa00 port map(C00 => sc04(6),
						 A00 => sc03(7),
						 B00 => sa05(7),
						 C01 => sc04(7),
						 S00 => ss04(6));
---------------------------------------AND-------------------------------
	M888: and00 port map(Aa => Ai(0),
						  Ba => Bi(6),
						  Ya => sa06(0));
	
	M889: and00 port map(Aa => Ai(1),
						  Ba => Bi(6),
						  Ya => sa06(1));
	
	M890: and00 port map(Aa => Ai(2),
						  Ba => Bi(6),
						  Ya => sa06(2));
	
	M891: and00 port map(Aa => Ai(3),
						  Ba => Bi(6),
						  Ya => sa06(3));
	
	M892: and00 port map(Aa => Ai(4),
						  Ba => Bi(6),
						  Ya => sa06(4));
	
	M893: and00 port map(Aa => Ai(5),
						  Ba => Bi(6),
						  Ya => sa06(5));
	
	M894: and00 port map(Aa => Ai(6),
						  Ba => Bi(6),
						  Ya => sa06(6));
	
	M895: and00 port map(Aa => Ai(7),
						  Ba => Bi(6),
						  Ya => sa06(7));
						  
----------------------------------FA-------------------------------
	M896: fa00 port map(C00 => '0',
						 A00 => ss04(0),
						 B00 => sa06(0),
						 C01 => sc05(0),
						 S00 => Ro(6));
						 
	M897: fa00 port map(C00 => sc05(0),
						 A00 => ss04(1),
						 B00 => sa06(1),
						 C01 => sc05(1),
						 S00 => ss05(0));
						 
	M898: fa00 port map(C00 => sc05(1),
						 A00 => ss04(2),
						 B00 => sa06(2),
						 C01 => sc05(2),
						 S00 => ss05(1));
						 
	M899: fa00 port map(C00 => sc05(2),
						 A00 => ss04(3),
						 B00 => sa06(3),
						 C01 => sc05(3),
						 S00 => ss05(2));
						 
	M8100: fa00 port map(C00 => sc05(3),
						  A00 => ss04(4),
						  B00 => sa06(4),
						  C01 => sc05(4),
						  S00 => ss05(3));
						 
	M8101: fa00 port map(C00 => sc05(4),
						  A00 => ss04(5),
						  B00 => sa06(5),
						  C01 => sc05(5),
						  S00 => ss05(4));
						 
	M8102: fa00 port map(C00 => sc05(5),
						  A00 => ss04(6),
						  B00 => sa06(6),
						  C01 => sc05(6),
						  S00 => ss05(5));
						 
	M8103: fa00 port map(C00 => sc05(6),
						  A00 => sc04(7),
						  B00 => sa06(7),
						  C01 => sc05(7),
						  S00 => ss05(6));
------------------------------AND-----------------------------
	M8104: and00 port map(Aa => Ai(0),
						   Ba => Bi(7),
						   Ya => sa07(0));
	
	M8105: and00 port map(Aa => Ai(1),
						   Ba => Bi(7),
						   Ya => sa07(1));
	
	M8106: and00 port map(Aa => Ai(2),
						   Ba => Bi(7),
						   Ya => sa07(2));
	
	M8107: and00 port map(Aa => Ai(3),
						   Ba => Bi(7),
						   Ya => sa07(3));
	
	M8108: and00 port map(Aa => Ai(4),
						   Ba => Bi(7),
						   Ya => sa07(4));
	
	M8109: and00 port map(Aa => Ai(5),
						   Ba => Bi(7),
						   Ya => sa07(5));
	
	M8110: and00 port map(Aa => Ai(6),
						   Ba => Bi(7),
						   Ya => sa07(6));
	
	M8111: and00 port map(Aa => Ai(7),
						   Ba => Bi(7),
						   Ya => sa07(7));
---------------------------FA---------------------------------------
	M8112: fa00 port map(C00 => '0',
						  A00 => ss05(0),
						  B00 => sa07(0),
						  C01 => sc06(0),
						  S00 => Ro(7));
						  
	M8113: fa00 port map(C00 => sc06(0),
						  A00 => ss05(1),
						  B00 => sa07(1),
						  C01 => sc06(1),
						  S00 => Ro(8));
						  
	M8114: fa00 port map(C00 => sc06(1),
						  A00 => ss05(2),
						  B00 => sa07(2),
						  C01 => sc06(2),
						  S00 => Ro(9));
						  
	M8115: fa00 port map(C00 => sc06(2),
						  A00 => ss05(3),
						  B00 => sa07(3),
						  C01 => sc06(3),
						  S00 => Ro(10));
						  
	M8116: fa00 port map(C00 => sc06(3),
						  A00 => ss05(4),
						  B00 => sa07(4),
						  C01 => sc06(4),
						  S00 => Ro(11));
						  
	M8117: fa00 port map(C00 => sc06(4),
						  A00 => ss05(5),
						  B00 => sa07(5),
						  C01 => sc06(5),
						  S00 => Ro(12));
						  
	M8118: fa00 port map(C00 => sc06(5),
						  A00 => ss05(6),
						  B00 => sa07(6),
						  C01 => sc06(6),
						  S00 => Ro(13));
	
	M8119: fa00 port map(C00 => sc06(6),
						  A00 => sc05(7),
						  B00 => sa07(7),
						  C01 => Ro(15),
						  S00 => Ro(14));
	
end mult8bit0;
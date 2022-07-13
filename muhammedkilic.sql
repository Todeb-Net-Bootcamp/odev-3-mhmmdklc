-- İlk olarak Database'i oluşturuyoruz sonrasında 7 farklı tablomuz oluşuyor. Tablolar Foreing Key'ler ile birbirleriyle ilişkili durumda.
-- Books tablomuzda Primary Key mevcut (BookID) ve her kitap eklendiğinde tablo kendisi bir BookID tanımlıyor. 
-- Bunu BookID'yi "[BookID] [int] identity" şeklinde tanımlayarak yapıyoruz.
-- Tablolar oluştuktan sonra alt kısımda tanımlanan 
-- 1 adet Stored Procedures, 1 adet Scalar Valued Function, 1 adet Table Valued Function, 1 adet View oluşuyor.
-- Kullanım şekilleri ve amaçlarını Read.me tarafında belirttim.




create database muhammedkilic
GO
USE muhammedkilic
GO

create table [Authors] (
[AuthorID] [int] NULL,
[AuthorFirstName] [varchar] (50),
[AuthorLastName] [varchar] (50));


insert [Authors] ([AuthorID],[AuthorFirstName],[AuthorLastName])
select 101,'Athena','Le Breton De La Vieuville' UNION ALL
select 102,'Tomaso','Nesbitt' UNION ALL
select 103,'Barth','Starkie' UNION ALL
select 104,'Marcelia','Trowel' UNION ALL
select 105,'Mattias','Hymas' UNION ALL
select 106,'Aldus','Ferrea' UNION ALL
select 107,'Talbert','Blackborow' UNION ALL
select 108,'Chet','Port' UNION ALL
select 109,'Shantee','Domino' UNION ALL
select 110,'Evangelia','Cowderoy' UNION ALL
select 111,'Netti','Ruckman' UNION ALL
select 112,'Nolan','Bonn' UNION ALL
select 113,'Leland','Davitti' UNION ALL
select 114,'Vidovik','Woodings' UNION ALL
select 115,'Kristine','Kilbourn' UNION ALL
select 116,'Ami','Allsobrook' UNION ALL
select 117,'Nancie','Gibben' UNION ALL
select 118,'Thomasina','Heine' UNION ALL
select 119,'Elia','Leathers' UNION ALL
select 120,'Elie','Ellam' UNION ALL
select 121,'Halsey','Dalliston' UNION ALL
select 122,'Idell','Zellick' UNION ALL
select 123,'Korey','Faust' UNION ALL
select 124,'Travis','Duxbury' UNION ALL
select 125,'Ora','Guerrin' UNION ALL
select 126,'Lewie','Bursnell' UNION ALL
select 127,'Gabriella','Hearnah' UNION ALL
select 128,'Kalle','Barrowcliffe' UNION ALL
select 129,'Domingo','Pinches' UNION ALL
select 130,'Jens','Loughrey' UNION ALL
select 131,'Catha','Swayte' UNION ALL
select 132,'Ansel','Roseborough' UNION ALL
select 133,'Blair','Skupinski' UNION ALL
select 134,'Kelsey','Ruffell' UNION ALL
select 135,'Bernadene','Tester' UNION ALL
select 136,'Noreen','Danslow' UNION ALL
select 137,'Hetty','Brumpton' UNION ALL
select 138,'Corliss','Strass' UNION ALL
select 140,'Roxana','Denidge' UNION ALL
select 141,'Maudie','Huscroft' UNION ALL
select 142,'Abby','Viant' UNION ALL
select 143,'Rudolfo','Loveless' UNION ALL
select 144,'Ardenia','Risdale' UNION ALL
select 145,'Gordon','Bollom' UNION ALL
select 146,'Udall','Kilius' UNION ALL
select 147,'Bertram','Dolden' UNION ALL
select 148,'Sean','Vondra' UNION ALL
select 149,'Loutitia','Ortell' UNION ALL
select 150,'Otho','Bisp' UNION ALL
select 151,'Quinton','Weatherhill' UNION ALL
select 152,'Ainsley','Howel' UNION ALL
select 153,'Carole','Gavrielli' UNION ALL
select 154,'Fonzie','Gulvin' UNION ALL
select 155,'Kincaid','Huffer' UNION ALL
select 156,'Holden','Chatelain' UNION ALL
select 157,'Bill','Sibbe' UNION ALL
select 158,'Stephana','Basford' UNION ALL
select 159,'Mersey','Shingfield' UNION ALL
select 160,'Anni','Havard' UNION ALL
select 161,'Olympie','Haking' UNION ALL
select 162,'Carlie','Crowley' UNION ALL
select 163,'Adora','Flye' UNION ALL
select 164,'Courtnay','Naldrett' UNION ALL
select 165,'Adina','Balser' UNION ALL
select 166,'Denice','Gibbons' UNION ALL
select 167,'Inness','Blakeborough' UNION ALL
select 168,'Tommy','Litster' UNION ALL
select 169,'Vivien','Tedridge' UNION ALL
select 170,'Patric','Morcomb' UNION ALL
select 171,'Frederique','Blaylock' UNION ALL
select 172,'Ruth','Hooke' UNION ALL
select 173,'Dan','Sommerfeld' UNION ALL
select 174,'Carleton','Tapsell' UNION ALL
select 175,'Tate','Bambrick' UNION ALL
select 176,'Faina','Simpkins' UNION ALL
select 177,'Brannon','Janacek' UNION ALL
select 178,'Roby','Sealeaf' UNION ALL
select 179,'Rozele','Jeroch' UNION ALL
select 180,'Maximo','Farrans' UNION ALL
select 181,'Tallou','Battison' UNION ALL
select 182,'Efren','Chiese' UNION ALL
select 183,'Corilla','Fellows' UNION ALL
select 184,'Emalee','Lawrenz' UNION ALL
select 185,'Irvin','Pipes' UNION ALL
select 186,'Vince','Devigne' UNION ALL
select 187,'Bernard','Mullis' UNION ALL
select 188,'Andreas','Hinrich' UNION ALL
select 189,'Jayme','Domelow' UNION ALL
select 190,'Alla','Underhill' UNION ALL
select 191,'Melisse','Rizzardini' UNION ALL
select 192,'Theadora','Jenks' UNION ALL
select 193,'Eal','Sapp' UNION ALL
select 194,'Maurizia','Taylo' UNION ALL
select 195,'Isiahi','Abrahmer' UNION ALL
select 196,'Enrika','Stennett' UNION ALL
select 197,'Bartel','Lambden' UNION ALL
select 198,'Thekla','Aleksashin' UNION ALL
select 199,'Ramon','Buckerfield' UNION ALL
select 200,'Vi','Lamball' UNION ALL
select 201,'Aloisia','Gaiford' UNION ALL
select 202,'Robinett','Dudbridge' UNION ALL
select 203,'Virgie','Scarsbrick' UNION ALL
select 204,'Selestina','Detheridge' UNION ALL
select 205,'Koo','Andriolli' UNION ALL
select 206,'Albrecht','Semered' UNION ALL
select 207,'Robin','Brabin' UNION ALL
select 208,'Roseanna','Phipson' UNION ALL
select 209,'Kristofor','Klimochkin' UNION ALL
select 210,'Janina','Byram' UNION ALL
select 211,'Florence','Fynn' UNION ALL
select 212,'Verla','Rayment' UNION ALL
select 213,'Curtice','Commings' UNION ALL
select 214,'Chloe','Moodey' UNION ALL
select 215,'Ronnie','Willshere' UNION ALL
select 216,'Camille','Le Claire' UNION ALL
select 217,'Papageno','Alekseev' UNION ALL
select 218,'Mabelle','Gaskill' UNION ALL
select 219,'Tobey','Bainbridge' UNION ALL
select 220,'Gregoire','Jefferson' UNION ALL
select 221,'Alessandro','Dorkins' UNION ALL
select 222,'Phillis','Blackett' UNION ALL
select 223,'Brade','Elintune' UNION ALL
select 224,'Rica','Pettwood' UNION ALL
select 225,'Adrien','George' UNION ALL
select 226,'Charissa','Wayvill' UNION ALL
select 227,'Chiarra','Trass' UNION ALL
select 228,'Laurianne','Reith' UNION ALL
select 229,'Orion','Episcopio' UNION ALL
select 230,'Roxie','Perin' UNION ALL
select 231,'Trescha','Wethered' UNION ALL
select 232,'Woodie','Monnoyer' UNION ALL
select 233,'Marlee','Harbisher' UNION ALL
select 234,'Job','Chilcott' UNION ALL
select 235,'Mariquilla','Batrim' UNION ALL
select 251,'Gusella','Polino' UNION ALL
select 237,'Sandra','Barnewelle' UNION ALL
select 238,'Reade','See' UNION ALL
select 239,'Ruprecht','Caughtry' UNION ALL
select 240,'Janie','Canton' UNION ALL
select 241,'Angel','Leinthall' UNION ALL
select 242,'Kellsie','Syversen' UNION ALL
select 243,'Susanna','Rozzier' UNION ALL
select 244,'Lamont','Slimming' UNION ALL
select 245,'Chancey','Dumbare' UNION ALL
select 246,'Gianna','Antonat' UNION ALL
select 247,'Sibella','Gowdie' UNION ALL
select 248,'Imogene','Danelut' UNION ALL
select 249,'Nikolai','Davidovicz' UNION ALL
select 250,'Robinett','Swannick';

create table [Books] (
[BookID] [int] identity,
[AuthorID] [decimal] (3,0) NOT NULL,
[GenreID] [decimal] (2,0) NOT NULL,
[Title] [varchar] (50) NOT NULL,
[Price] [varchar] (50) NOT NULL,
[PageCount] [int] NOT NULL,
[PublisherID] [int] NOT NULL);



set identity_insert [Books] on;


insert [Books] ([BookID],[AuthorID],[GenreID],[Title],[Price],[PageCount],[PublisherID])
select 701,210,7,'Gembucket','5',1169,1022 UNION ALL
select 702,145,5,'Bigtax','28',253,1013 UNION ALL
select 703,207,10,'Job','22',440,1014 UNION ALL
select 704,278,10,'Ventosanzap','29',333,1011 UNION ALL
select 705,206,7,'Opela','23',988,1028 UNION ALL
select 706,196,10,'Zontrax','6',1176,1027 UNION ALL
select 707,469,10,'Alpha','5',1105,1026 UNION ALL
select 708,436,3,'Cardguard','11',929,1028 UNION ALL
select 709,248,4,'Veribet','15',675,1012 UNION ALL
select 710,380,6,'Tampflex','8',641,1018 UNION ALL
select 711,397,10,'Bitwolf','27',555,1018 UNION ALL
select 712,493,8,'Tempsoft','21',853,1023 UNION ALL
select 713,218,10,'Asoka','11',835,1027 UNION ALL
select 714,178,2,'Solarbreeze','29',921,1030 UNION ALL
select 715,328,7,'Fintone','7',183,1015 UNION ALL
select 716,382,5,'Ventosanzap','22',712,1026 UNION ALL
select 717,187,1,'Treeflex','20',981,1016 UNION ALL
select 718,474,5,'Flexidy','30',349,1015 UNION ALL
select 719,409,1,'Latlux','7',868,1015 UNION ALL
select 720,120,5,'It','17',168,1029 UNION ALL
select 721,371,3,'Alpha','14',799,1022 UNION ALL
select 722,237,5,'Tempsoft','13',551,1024 UNION ALL
select 723,476,4,'Tresom','6',1055,1017 UNION ALL
select 724,164,5,'Flexidy','23',1000,1024 UNION ALL
select 725,487,1,'Viva','28',543,1013 UNION ALL
select 726,311,1,'Zaam-Dox','7',1101,1025 UNION ALL
select 727,234,2,'Bytecard','16',158,1016 UNION ALL
select 728,355,6,'Vagram','12',1069,1016 UNION ALL
select 729,244,9,'Veribet','22',294,1011 UNION ALL
select 730,360,2,'Tresom','21',415,1011 UNION ALL
select 731,388,6,'Sonair','13',827,1021 UNION ALL
select 732,152,3,'Stronghold','27',961,1025 UNION ALL
select 733,373,4,'Namfix','8',447,1026 UNION ALL
select 734,138,7,'Sonsing','23',1039,1023 UNION ALL
select 735,349,6,'Voyatouch','26',823,1010 UNION ALL
select 736,444,3,'Cookley','30',482,1017 UNION ALL
select 737,195,2,'Cardify','13',1099,1021 UNION ALL
select 738,130,3,'Zontrax','5',700,1030 UNION ALL
select 739,473,1,'Prodder','28',419,1030 UNION ALL
select 740,435,3,'Zoolab','14',351,1020 UNION ALL
select 741,393,6,'Sonair','30',465,1016 UNION ALL
select 742,220,10,'It','19',1087,1019 UNION ALL
select 743,332,7,'Daltfresh','30',118,1023 UNION ALL
select 744,417,4,'Vagram','9',698,1020 UNION ALL
select 745,246,9,'Otcom','30',1042,1024 UNION ALL
select 746,157,2,'Stronghold','24',729,1026 UNION ALL
select 747,291,4,'Span','11',834,1024 UNION ALL
select 748,209,7,'Trippledex','27',240,1014 UNION ALL
select 749,286,5,'Voyatouch','21',220,1017 UNION ALL
select 750,205,6,'Veribet','25',204,1026 UNION ALL
select 751,448,5,'Cardguard','29',552,1026 UNION ALL
select 752,184,2,'Lotstring','20',815,1020 UNION ALL
select 753,191,6,'Pannier','9',196,1025 UNION ALL
select 754,216,2,'Zamit','9',718,1029 UNION ALL
select 755,321,6,'Y-find','30',990,1027 UNION ALL
select 756,292,2,'Ronstring','25',849,1030 UNION ALL
select 757,238,5,'Flowdesk','15',1171,1011 UNION ALL
select 758,497,9,'Bamity','7',375,1023 UNION ALL
select 759,346,7,'Tresom','25',1189,1028 UNION ALL
select 760,117,1,'Andalax','28',674,1012 UNION ALL
select 761,292,4,'Daltfresh','21',329,1024 UNION ALL
select 762,142,10,'Trippledex','27',176,1019 UNION ALL
select 763,349,5,'Home Ing','15',922,1022 UNION ALL
select 764,264,9,'Trippledex','6',634,1027 UNION ALL
select 765,365,4,'Temp','28',1011,1022 UNION ALL
select 766,432,4,'Transcof','27',317,1011 UNION ALL
select 767,113,1,'Y-Solowarm','19',481,1011 UNION ALL
select 768,171,3,'Sonsing','25',1076,1026 UNION ALL
select 769,279,5,'Mat Lam Tam','20',1170,1010 UNION ALL
select 770,475,5,'Kanlam','28',1151,1013 UNION ALL
select 771,216,9,'Lotstring','6',286,1010 UNION ALL
select 772,334,8,'Latlux','11',758,1021 UNION ALL
select 773,360,2,'Rank','12',104,1027 UNION ALL
select 774,427,9,'Mat Lam Tam','23',567,1013 UNION ALL
select 775,357,2,'Stronghold','21',978,1014 UNION ALL
select 776,360,6,'Stronghold','22',215,1012 UNION ALL
select 777,397,6,'Bitwolf','14',418,1019 UNION ALL
select 778,188,3,'Stronghold','24',334,1018 UNION ALL
select 779,341,1,'Latlux','29',1154,1024 UNION ALL
select 780,231,3,'Y-Solowarm','17',914,1023 UNION ALL
select 781,320,4,'Solarbreeze','15',986,1010 UNION ALL
select 782,196,9,'Sonsing','17',984,1027 UNION ALL
select 783,158,1,'Wrapsafe','16',453,1010 UNION ALL
select 784,184,3,'Flexidy','18',145,1013 UNION ALL
select 785,195,3,'Ventosanzap','23',387,1021 UNION ALL
select 786,194,6,'Lotstring','21',136,1013 UNION ALL
select 787,191,9,'Overhold','26',205,1018 UNION ALL
select 788,289,8,'Zamit','6',371,1028 UNION ALL
select 789,396,10,'Flexidy','26',955,1029 UNION ALL
select 790,328,9,'Mat Lam Tam','20',315,1018 UNION ALL
select 791,273,3,'Duobam','29',566,1025 UNION ALL
select 792,441,2,'Stim','24',399,1026 UNION ALL
select 793,452,9,'Zoolab','30',916,1024 UNION ALL
select 794,278,6,'Ventosanzap','17',489,1030 UNION ALL
select 795,466,6,'Duobam','12',166,1019 UNION ALL
select 796,198,9,'Temp','24',770,1015 UNION ALL
select 797,453,5,'Prodder','28',961,1013 UNION ALL
select 798,338,1,'Konklab','12',579,1016 UNION ALL
select 799,188,10,'Solarbreeze','11',241,1016 UNION ALL
select 800,313,4,'Solarbreeze','17',792,1021 UNION ALL
select 801,421,10,'Otcom','14',1053,1022 UNION ALL
select 802,269,6,'Y-Solowarm','5',831,1017 UNION ALL
select 803,245,1,'Zathin','8',475,1028 UNION ALL
select 804,132,4,'Bitwolf','10',177,1027 UNION ALL
select 805,473,10,'Veribet','17',615,1028 UNION ALL
select 806,307,3,'Veribet','23',947,1030 UNION ALL
select 807,365,9,'Aerified','27',247,1011 UNION ALL
select 808,391,2,'Voyatouch','12',104,1018 UNION ALL
select 809,350,8,'Zoolab','17',278,1028 UNION ALL
select 810,164,5,'Ventosanzap','19',293,1019 UNION ALL
select 811,164,2,'Daltfresh','27',1131,1011 UNION ALL
select 812,483,4,'Treeflex','22',294,1011 UNION ALL
select 813,385,5,'Sonair','21',993,1016 UNION ALL
select 814,423,7,'Opela','29',854,1026 UNION ALL
select 815,196,3,'Bigtax','13',988,1021 UNION ALL
select 816,256,1,'Transcof','15',394,1012 UNION ALL
select 817,469,9,'Home Ing','27',635,1010 UNION ALL
select 818,176,4,'Rank','22',1178,1023 UNION ALL
select 819,235,1,'Span','8',505,1027 UNION ALL
select 820,283,2,'Transcof','17',587,1027 UNION ALL
select 821,245,3,'Otcom','18',573,1023 UNION ALL
select 822,392,2,'Span','27',512,1018 UNION ALL
select 823,123,7,'Stim','5',766,1012 UNION ALL
select 824,432,10,'Keylex','10',441,1026 UNION ALL
select 825,432,6,'Solarbreeze','29',413,1011 UNION ALL
select 826,186,10,'Cardguard','18',425,1029 UNION ALL
select 827,269,5,'Cardguard','9',898,1030 UNION ALL
select 828,495,4,'Toughjoyfax','10',934,1017 UNION ALL
select 829,466,9,'Temp','19',567,1029 UNION ALL
select 830,107,2,'Voyatouch','30',331,1023 UNION ALL
select 831,172,3,'Otcom','17',702,1021 UNION ALL
select 832,415,5,'Fixflex','11',903,1022 UNION ALL
select 833,398,5,'Fintone','14',373,1028 UNION ALL
select 834,423,3,'Zaam-Dox','30',155,1014 UNION ALL
select 835,191,7,'It','10',256,1023 UNION ALL
select 836,453,8,'Tresom','18',376,1010 UNION ALL
select 837,219,7,'Fintone','25',161,1016 UNION ALL
select 838,170,10,'Bigtax','10',1086,1017 UNION ALL
select 839,341,5,'Job','26',863,1025 UNION ALL
select 840,158,10,'Stringtough','9',823,1013 UNION ALL
select 841,211,6,'Pannier','23',247,1025 UNION ALL
select 842,393,2,'Holdlamis','11',1136,1026 UNION ALL
select 843,199,3,'Andalax','10',467,1022 UNION ALL
select 844,201,10,'Kanlam','29',433,1029 UNION ALL
select 845,443,10,'Voltsillam','11',257,1015 UNION ALL
select 846,219,7,'Trippledex','9',895,1015 UNION ALL
select 847,415,2,'Redhold','21',909,1022 UNION ALL
select 848,456,7,'Sonair','6',549,1011 UNION ALL
select 849,282,8,'Lotlux','5',781,1025 UNION ALL
select 850,385,2,'Prodder','24',1154,1027 UNION ALL
select 851,433,6,'Asoka','22',533,1012 UNION ALL
select 852,181,4,'Duobam','16',1197,1024 UNION ALL
select 853,231,7,'Zoolab','7',901,1019 UNION ALL
select 854,449,1,'Pannier','21',899,1010 UNION ALL
select 855,328,4,'Bitchip','22',337,1013 UNION ALL
select 856,134,6,'Voltsillam','20',1130,1026 UNION ALL
select 857,330,10,'Matsoft','23',271,1014 UNION ALL
select 858,469,1,'Aerified','7',137,1021 UNION ALL
select 859,406,8,'Stronghold','21',356,1020 UNION ALL
select 860,362,1,'Matsoft','10',147,1027 UNION ALL
select 861,388,7,'Bamity','24',445,1024 UNION ALL
select 862,231,6,'Alphazap','25',1062,1023 UNION ALL
select 863,442,10,'Konklab','27',1047,1026 UNION ALL
select 864,337,8,'Gembucket','22',151,1020 UNION ALL
select 865,105,4,'Toughjoyfax','25',330,1012 UNION ALL
select 866,139,9,'Cardify','27',696,1022 UNION ALL
select 867,259,10,'Daltfresh','12',243,1022 UNION ALL
select 868,135,9,'Greenlam','12',169,1013 UNION ALL
select 869,373,6,'Bitchip','12',653,1027 UNION ALL
select 870,266,8,'Solarbreeze','8',759,1030 UNION ALL
select 871,301,1,'Keylex','14',457,1025 UNION ALL
select 872,409,7,'Cookley','9',1144,1021 UNION ALL
select 873,431,3,'Stringtough','29',920,1019 UNION ALL
select 874,213,1,'Zaam-Dox','14',193,1013 UNION ALL
select 875,317,10,'Hatity','11',803,1021 UNION ALL
select 876,492,1,'Matsoft','19',498,1030 UNION ALL
select 877,315,1,'Aerified','17',984,1013 UNION ALL
select 878,456,3,'Bitchip','25',1135,1021 UNION ALL
select 879,340,10,'Tin','20',1028,1015 UNION ALL
select 880,110,4,'Daltfresh','5',572,1027 UNION ALL
select 881,127,1,'Zoolab','13',872,1013 UNION ALL
select 882,288,5,'Cardguard','19',169,1016 UNION ALL
select 883,308,6,'Zaam-Dox','28',229,1026 UNION ALL
select 884,408,1,'Cardguard','9',542,1011 UNION ALL
select 885,358,6,'Latlux','30',834,1027 UNION ALL
select 886,211,8,'Vagram','20',439,1026 UNION ALL
select 887,190,1,'Keylex','13',843,1023 UNION ALL
select 888,333,4,'Aerified','23',332,1022 UNION ALL
select 889,302,2,'Bitchip','12',1018,1016 UNION ALL
select 890,116,8,'Temp','22',348,1027 UNION ALL
select 891,430,3,'Bytecard','30',1043,1027 UNION ALL
select 892,204,6,'Latlux','23',352,1013 UNION ALL
select 893,362,4,'Flowdesk','26',1100,1011 UNION ALL
select 894,419,1,'Otcom','15',1144,1025 UNION ALL
select 895,254,2,'Prodder','16',695,1027 UNION ALL
select 896,474,8,'Mat Lam Tam','17',561,1013 UNION ALL
select 897,467,7,'Fintone','20',917,1030 UNION ALL
select 898,488,8,'Lotstring','27',675,1025 UNION ALL
select 899,197,10,'Trippledex','22',893,1016 UNION ALL
select 900,427,1,'Bitchip','6',1038,1024 UNION ALL
select 901,254,7,'Home Ing','24',1118,1011 UNION ALL
select 902,193,4,'Lotstring','27',978,1024 UNION ALL
select 903,466,5,'Flowdesk','19',645,1020 UNION ALL
select 904,292,2,'Rank','27',144,1025 UNION ALL
select 905,301,7,'Fix San','29',751,1013 UNION ALL
select 906,335,4,'Temp','12',247,1012 UNION ALL
select 907,159,4,'Kanlam','7',296,1012 UNION ALL
select 908,390,6,'Mat Lam Tam','17',1123,1014 UNION ALL
select 909,367,8,'Matsoft','6',722,1013 UNION ALL
select 910,213,4,'Asoka','23',361,1025 UNION ALL
select 911,448,9,'Pannier','27',520,1024 UNION ALL
select 912,495,6,'Alpha','6',674,1021 UNION ALL
select 913,345,8,'Holdlamis','16',138,1018 UNION ALL
select 914,120,5,'Temp','7',911,1011 UNION ALL
select 915,395,8,'Zaam-Dox','19',564,1020 UNION ALL
select 916,463,4,'Cookley','6',791,1024 UNION ALL
select 917,289,7,'Job','9',616,1014 UNION ALL
select 918,319,7,'Flexidy','14',509,1027 UNION ALL
select 919,135,10,'Cardguard','14',792,1016 UNION ALL
select 920,244,10,'Tresom','28',159,1014 UNION ALL
select 921,426,10,'Voltsillam','8',1112,1011 UNION ALL
select 922,435,10,'Duobam','8',935,1017 UNION ALL
select 923,168,3,'Zoolab','7',561,1013 UNION ALL
select 924,458,5,'Vagram','15',1159,1018 UNION ALL
select 925,460,7,'Zamit','23',625,1027 UNION ALL
select 926,442,3,'Tres-Zap','23',972,1029 UNION ALL
select 927,407,10,'Zaam-Dox','24',429,1019 UNION ALL
select 928,453,2,'Redhold','14',204,1026 UNION ALL
select 929,315,7,'Namfix','20',303,1013 UNION ALL
select 930,386,2,'Treeflex','13',540,1025 UNION ALL
select 931,473,8,'Stringtough','7',192,1015 UNION ALL
select 932,141,3,'Pannier','15',501,1018 UNION ALL
select 933,469,2,'Matsoft','13',1005,1030 UNION ALL
select 934,391,8,'Viva','22',358,1019 UNION ALL
select 935,349,2,'Bigtax','16',511,1013 UNION ALL
select 936,247,2,'Cardguard','20',183,1011 UNION ALL
select 937,397,6,'Lotlux','14',164,1019 UNION ALL
select 938,437,7,'Vagram','25',129,1026 UNION ALL
select 939,474,8,'Otcom','28',864,1011 UNION ALL
select 940,312,4,'Fintone','28',655,1011 UNION ALL
select 941,175,10,'Otcom','9',722,1010 UNION ALL
select 942,309,6,'Stronghold','5',955,1016 UNION ALL
select 943,163,2,'Kanlam','20',485,1019 UNION ALL
select 944,208,4,'Treeflex','26',614,1030 UNION ALL
select 945,479,7,'Overhold','15',357,1024 UNION ALL
select 946,368,10,'Asoka','25',1134,1023 UNION ALL
select 947,418,3,'Transcof','16',304,1022 UNION ALL
select 948,323,3,'Konklux','7',866,1028 UNION ALL
select 949,465,10,'Mat Lam Tam','10',742,1026 UNION ALL
select 950,402,2,'Veribet','15',770,1022 UNION ALL
select 951,396,9,'Zoolab','8',1086,1019 UNION ALL
select 952,478,1,'Subin','7',603,1018 UNION ALL
select 953,438,6,'Toughjoyfax','14',262,1027 UNION ALL
select 954,318,10,'Solarbreeze','7',1060,1014 UNION ALL
select 955,402,3,'Bamity','26',692,1014 UNION ALL
select 956,415,2,'Toughjoyfax','10',859,1029 UNION ALL
select 957,164,5,'Viva','18',422,1010 UNION ALL
select 958,326,1,'Opela','14',1129,1016 UNION ALL
select 959,261,4,'Greenlam','20',147,1025 UNION ALL
select 960,263,10,'Home Ing','24',145,1021 UNION ALL
select 961,451,5,'Pannier','7',835,1016 UNION ALL
select 962,123,9,'Voyatouch','30',1123,1029 UNION ALL
select 963,327,7,'Bitwolf','23',777,1020 UNION ALL
select 964,435,6,'Keylex','26',1094,1028 UNION ALL
select 965,488,8,'Sonair','9',1054,1019 UNION ALL
select 966,246,3,'Pannier','12',350,1017 UNION ALL
select 967,205,9,'Otcom','11',876,1019 UNION ALL
select 968,476,5,'Quo Lux','6',720,1023 UNION ALL
select 969,251,10,'Vagram','11',366,1015 UNION ALL
select 970,244,10,'Stringtough','24',506,1025 UNION ALL
select 971,339,4,'Zamit','12',893,1015 UNION ALL
select 972,200,8,'Konklux','8',520,1020 UNION ALL
select 973,338,2,'Greenlam','5',623,1019 UNION ALL
select 974,397,1,'Bitchip','26',757,1016 UNION ALL
select 975,444,4,'Namfix','23',605,1028 UNION ALL
select 976,487,1,'Bytecard','28',892,1012 UNION ALL
select 977,487,8,'Namfix','8',671,1015 UNION ALL
select 978,139,5,'Holdlamis','12',824,1017 UNION ALL
select 979,304,10,'Zaam-Dox','9',738,1029 UNION ALL
select 980,382,6,'Home Ing','14',997,1029 UNION ALL
select 981,111,8,'Alpha','24',364,1017 UNION ALL
select 982,330,4,'Treeflex','11',892,1021 UNION ALL
select 983,410,8,'Holdlamis','11',376,1012 UNION ALL
select 984,256,3,'Gembucket','15',277,1018 UNION ALL
select 985,420,9,'Sonair','24',229,1024 UNION ALL
select 986,287,2,'Cardguard','19',173,1012 UNION ALL
select 987,161,8,'Toughjoyfax','7',553,1011 UNION ALL
select 988,306,4,'Alphazap','5',403,1015 UNION ALL
select 989,487,9,'Transcof','7',985,1021 UNION ALL
select 990,295,1,'Greenlam','9',583,1017 UNION ALL
select 991,231,9,'Viva','27',511,1023 UNION ALL
select 992,302,4,'Flowdesk','6',740,1010 UNION ALL
select 993,434,4,'Span','6',504,1028 UNION ALL
select 994,462,10,'Alpha','13',648,1011 UNION ALL
select 995,363,1,'Y-find','22',869,1023 UNION ALL
select 996,349,10,'Domainer','5',463,1011 UNION ALL
select 997,273,6,'Alpha','16',449,1024 UNION ALL
select 998,306,10,'Domainer','28',135,1025 UNION ALL
select 999,139,4,'Konklux','28',290,1027 UNION ALL
select 1000,447,6,'Viva','6',1182,1020 UNION ALL
select 1001,106,8,'Bytecard','18',661,1012 UNION ALL
select 1002,285,7,'Daltfresh','16',1162,1018 UNION ALL
select 1003,149,4,'Konklux','29',329,1025 UNION ALL
select 1004,272,8,'Overhold','15',1135,1015 UNION ALL
select 1005,300,1,'Namfix','10',311,1018 UNION ALL
select 1006,310,5,'Domainer','7',861,1017 UNION ALL
select 1007,436,7,'Solarbreeze','21',993,1019 UNION ALL
select 1008,333,1,'Alphazap','9',350,1021 UNION ALL
select 1009,429,7,'Alpha','23',962,1011 UNION ALL
select 1010,311,4,'Treeflex','7',177,1028 UNION ALL
select 1011,194,9,'Rank','30',773,1019 UNION ALL
select 1012,500,1,'Fintone','7',445,1010 UNION ALL
select 1013,242,3,'Viva','14',272,1012 UNION ALL
select 1014,386,3,'Treeflex','22',325,1024 UNION ALL
select 1015,338,4,'Cookley','18',909,1025 UNION ALL
select 1016,464,7,'Regrant','16',658,1017 UNION ALL
select 1017,170,7,'Lotlux','6',764,1027 UNION ALL
select 1018,493,7,'Namfix','13',240,1010 UNION ALL
select 1019,212,1,'Zathin','27',469,1018 UNION ALL
select 1020,275,9,'Stim','14',886,1024 UNION ALL
select 1021,157,10,'Rank','14',824,1021 UNION ALL
select 1022,203,10,'Andalax','13',379,1026 UNION ALL
select 1023,359,2,'Zoolab','26',803,1014 UNION ALL
select 1024,123,4,'Voyatouch','10',910,1013 UNION ALL
select 1025,163,10,'Fix San','18',864,1023 UNION ALL
select 1026,172,1,'Domainer','17',212,1018 UNION ALL
select 1027,307,4,'Keylex','30',347,1018 UNION ALL
select 1028,266,5,'Domainer','16',353,1027 UNION ALL
select 1029,128,3,'Opela','30',142,1024 UNION ALL
select 1030,191,7,'Treeflex','29',823,1022 UNION ALL
select 1031,362,10,'Voltsillam','25',420,1026 UNION ALL
select 1032,390,7,'Wrapsafe','30',1008,1017 UNION ALL
select 1033,133,8,'Tempsoft','26',797,1014 UNION ALL
select 1034,216,1,'Stringtough','13',355,1021 UNION ALL
select 1035,227,10,'Tin','13',328,1025 UNION ALL
select 1036,101,10,'Zoolab','7',404,1010 UNION ALL
select 1037,366,7,'Sonair','12',1093,1020 UNION ALL
select 1038,313,3,'Home Ing','9',619,1023 UNION ALL
select 1039,492,8,'Alphazap','25',446,1018 UNION ALL
select 1040,198,9,'Ronstring','18',1145,1024 UNION ALL
select 1041,210,3,'Voyatouch','14',775,1017 UNION ALL
select 1042,162,9,'Otcom','7',549,1020 UNION ALL
select 1043,260,1,'Veribet','23',800,1022 UNION ALL
select 1044,324,8,'Kanlam','5',221,1017 UNION ALL
select 1045,239,9,'Lotstring','17',787,1021 UNION ALL
select 1046,172,10,'Gembucket','28',786,1012 UNION ALL
select 1047,475,1,'Lotlux','13',690,1016 UNION ALL
select 1048,351,4,'Span','18',705,1010 UNION ALL
select 1049,487,1,'Alphazap','18',118,1029 UNION ALL
select 1050,268,3,'Asoka','17',700,1015 UNION ALL
select 1051,177,10,'Regrant','11',481,1018 UNION ALL
select 1052,243,9,'Voyatouch','5',1066,1019 UNION ALL
select 1053,103,5,'Latlux','7',423,1015 UNION ALL
select 1054,224,1,'Latlux','28',918,1027 UNION ALL
select 1055,248,7,'Quo Lux','26',815,1015 UNION ALL
select 1056,464,6,'Gembucket','24',822,1010 UNION ALL
select 1057,241,3,'Tampflex','16',891,1013 UNION ALL
select 1058,148,9,'Andalax','9',578,1025 UNION ALL
select 1059,476,10,'Alphazap','17',1116,1015 UNION ALL
select 1060,178,9,'Voyatouch','8',190,1014 UNION ALL
select 1061,200,7,'Bitwolf','27',289,1011 UNION ALL
select 1062,153,1,'Fixflex','5',846,1030 UNION ALL
select 1063,138,6,'Zamit','27',277,1014 UNION ALL
select 1064,351,3,'Stringtough','15',403,1023 UNION ALL
select 1065,181,4,'Ventosanzap','18',814,1010 UNION ALL
select 1066,189,6,'Zoolab','25',720,1012 UNION ALL
select 1067,384,9,'Prodder','21',820,1026 UNION ALL
select 1068,486,8,'Stim','11',868,1016 UNION ALL
select 1069,418,3,'Alpha','22',221,1027 UNION ALL
select 1070,220,3,'Stim','18',384,1015 UNION ALL
select 1071,425,7,'Home Ing','21',438,1023 UNION ALL
select 1072,156,10,'Stim','14',821,1026 UNION ALL
select 1073,216,9,'Tempsoft','9',888,1020 UNION ALL
select 1074,300,4,'Flowdesk','11',107,1018 UNION ALL
select 1075,242,3,'Fixflex','15',1196,1016 UNION ALL
select 1076,371,1,'Wrapsafe','9',106,1014 UNION ALL
select 1077,432,3,'Bigtax','26',1089,1019 UNION ALL
select 1078,356,7,'Cardify','14',530,1010 UNION ALL
select 1079,498,10,'Fintone','27',595,1015 UNION ALL
select 1080,376,2,'Ronstring','7',887,1026 UNION ALL
select 1081,295,3,'Overhold','11',613,1011 UNION ALL
select 1082,328,5,'Tempsoft','16',854,1019 UNION ALL
select 1083,438,6,'Y-Solowarm','6',101,1014 UNION ALL
select 1084,269,8,'Tresom','19',567,1011 UNION ALL
select 1085,172,4,'Bigtax','28',736,1013 UNION ALL
select 1086,202,1,'Y-Solowarm','6',402,1024 UNION ALL
select 1087,415,8,'Zoolab','9',779,1027 UNION ALL
select 1088,491,7,'Kanlam','16',186,1022 UNION ALL
select 1089,367,6,'Aerified','16',1066,1028 UNION ALL
select 1090,222,9,'Stringtough','8',173,1019 UNION ALL
select 1091,103,5,'Zontrax','27',1047,1026 UNION ALL
select 1092,150,7,'Tresom','14',922,1028 UNION ALL
select 1093,434,7,'Prodder','7',983,1012 UNION ALL
select 1094,402,5,'Stim','22',842,1027 UNION ALL
select 1095,192,1,'Holdlamis','23',934,1021 UNION ALL
select 1096,406,7,'Bytecard','14',1186,1025 UNION ALL
select 1097,334,5,'Bytecard','8',1197,1026 UNION ALL
select 1098,150,1,'Stronghold','7',718,1023 UNION ALL
select 1099,249,1,'Pannier','19',323,1013 UNION ALL
select 1100,213,7,'Alpha','29',1156,1018 UNION ALL
select 1101,387,10,'Zoolab','15',516,1027 UNION ALL
select 1102,332,1,'Viva','16',908,1025 UNION ALL
select 1103,186,10,'Cookley','29',1027,1013 UNION ALL
select 1104,178,10,'Holdlamis','12',408,1029 UNION ALL
select 1105,165,9,'Latlux','16',865,1011 UNION ALL
select 1106,229,2,'Alpha','19',953,1021 UNION ALL
select 1107,176,5,'Subin','20',291,1022 UNION ALL
select 1108,120,9,'Fintone','22',298,1014 UNION ALL
select 1109,416,2,'Stronghold','16',265,1015 UNION ALL
select 1110,422,4,'Job','24',1196,1020 UNION ALL
select 1111,108,1,'Alphazap','20',259,1022 UNION ALL
select 1112,154,5,'Overhold','22',1180,1018 UNION ALL
select 1113,221,6,'Matsoft','14',903,1011 UNION ALL
select 1114,457,7,'Wrapsafe','17',832,1011 UNION ALL
select 1115,255,6,'Namfix','17',931,1028 UNION ALL
select 1116,196,1,'Gembucket','18',1049,1027 UNION ALL
select 1117,302,2,'Alphazap','24',1036,1023 UNION ALL
select 1118,427,6,'Opela','26',525,1028 UNION ALL
select 1119,459,10,'Mat Lam Tam','18',1182,1030 UNION ALL
select 1120,284,2,'Zamit','21',1196,1025 UNION ALL
select 1121,435,10,'Alphazap','25',326,1023 UNION ALL
select 1122,200,10,'Mat Lam Tam','18',978,1016 UNION ALL
select 1123,230,2,'Domainer','9',1164,1013 UNION ALL
select 1124,311,9,'Overhold','26',945,1027 UNION ALL
select 1125,394,1,'Domainer','23',318,1019 UNION ALL
select 1126,310,10,'Prodder','27',864,1013 UNION ALL
select 1127,330,3,'Zaam-Dox','8',810,1028 UNION ALL
select 1128,490,10,'Flowdesk','17',412,1018 UNION ALL
select 1129,443,10,'Alphazap','21',569,1010 UNION ALL
select 1130,365,10,'Kanlam','8',554,1019 UNION ALL
select 1131,171,10,'Overhold','28',1172,1022 UNION ALL
select 1132,368,10,'Lotstring','17',172,1022 UNION ALL
select 1133,270,7,'Zaam-Dox','21',566,1014 UNION ALL
select 1134,106,2,'Quo Lux','11',410,1024 UNION ALL
select 1135,204,5,'Tampflex','12',535,1013 UNION ALL
select 1136,126,10,'Aerified','10',800,1016 UNION ALL
select 1137,405,4,'Zaam-Dox','5',157,1015 UNION ALL
select 1138,185,2,'Quo Lux','20',865,1030 UNION ALL
select 1139,230,4,'Home Ing','27',657,1018 UNION ALL
select 1140,130,8,'Otcom','27',103,1028 UNION ALL
select 1141,350,2,'Stronghold','28',1131,1017 UNION ALL
select 1142,318,1,'Namfix','7',905,1023 UNION ALL
select 1143,451,9,'Span','18',623,1027 UNION ALL
select 1144,285,6,'Asoka','13',131,1030 UNION ALL
select 1145,330,2,'Konklab','30',1147,1010 UNION ALL
select 1146,256,5,'Konklux','15',590,1021 UNION ALL
select 1147,215,2,'Gembucket','23',890,1022 UNION ALL
select 1148,104,4,'Lotlux','28',310,1026 UNION ALL
select 1149,197,5,'Konklux','12',514,1016 UNION ALL
select 1150,283,8,'Lotstring','9',542,1011 UNION ALL
select 1151,496,7,'Greenlam','18',1092,1022 UNION ALL
select 1152,398,2,'Sub-Ex','14',966,1012 UNION ALL
select 1153,175,9,'Keylex','11',956,1022 UNION ALL
select 1154,261,10,'Lotstring','12',425,1028 UNION ALL
select 1155,353,6,'Hatity','26',195,1024 UNION ALL
select 1156,301,5,'Zamit','14',452,1020 UNION ALL
select 1157,110,6,'Vagram','6',403,1015 UNION ALL
select 1158,128,10,'Keylex','30',1038,1024 UNION ALL
select 1159,243,8,'It','25',326,1015 UNION ALL
select 1160,185,6,'Biodex','22',283,1024 UNION ALL
select 1161,183,10,'Ventosanzap','21',394,1013 UNION ALL
select 1162,114,9,'Lotstring','20',688,1024 UNION ALL
select 1163,102,8,'Mat Lam Tam','7',922,1023 UNION ALL
select 1164,370,8,'Trippledex','6',876,1017 UNION ALL
select 1165,421,3,'Stringtough','14',911,1018 UNION ALL
select 1166,220,10,'Otcom','20',220,1020 UNION ALL
select 1167,499,5,'Tampflex','12',1065,1024 UNION ALL
select 1168,161,9,'Bigtax','28',973,1010 UNION ALL
select 1169,218,2,'Y-Solowarm','13',421,1030 UNION ALL
select 1170,460,2,'Alphazap','16',199,1014 UNION ALL
select 1171,422,10,'Y-Solowarm','23',1023,1011 UNION ALL
select 1172,213,4,'Namfix','10',778,1024 UNION ALL
select 1173,481,6,'Tampflex','6',830,1028 UNION ALL
select 1174,136,5,'Quo Lux','20',517,1010 UNION ALL
select 1175,282,6,'Veribet','20',519,1010 UNION ALL
select 1176,133,10,'Regrant','14',383,1020 UNION ALL
select 1177,448,10,'Stim','10',585,1017 UNION ALL
select 1178,322,8,'Opela','19',237,1026 UNION ALL
select 1179,281,1,'Y-Solowarm','9',614,1011 UNION ALL
select 1180,461,6,'Matsoft','28',1035,1015 UNION ALL
select 1181,447,10,'Toughjoyfax','14',382,1029 UNION ALL
select 1182,180,6,'Domainer','30',187,1016 UNION ALL
select 1183,150,6,'Matsoft','28',978,1023 UNION ALL
select 1184,129,8,'Tampflex','6',408,1021 UNION ALL
select 1185,182,8,'Zaam-Dox','22',976,1017 UNION ALL
select 1186,466,6,'Tresom','24',476,1021 UNION ALL
select 1187,353,2,'Otcom','27',328,1017 UNION ALL
select 1188,441,6,'Domainer','6',171,1028 UNION ALL
select 1189,151,9,'Holdlamis','9',521,1013 UNION ALL
select 1190,407,3,'Stringtough','24',693,1022 UNION ALL
select 1191,326,1,'Home Ing','13',640,1021 UNION ALL
select 1192,410,5,'Transcof','18',1167,1012 UNION ALL
select 1193,143,10,'Bytecard','10',995,1028 UNION ALL
select 1194,248,10,'Zaam-Dox','13',419,1025 UNION ALL
select 1195,268,9,'Lotstring','14',175,1023 UNION ALL
select 1196,307,10,'It','22',962,1021 UNION ALL
select 1197,256,3,'Redhold','21',768,1014 UNION ALL
select 1198,204,1,'Flexidy','21',479,1017 UNION ALL
select 1199,365,3,'Stim','19',790,1028 UNION ALL
select 1200,198,7,'Y-find','30',329,1023 UNION ALL
select 1201,200,1,'Greek Art','25',550,1022 UNION ALL
select 1202,300,2,'Hobbit','25',400,1030 UNION ALL
select 1203,301,8,'Dune','30',770,1033;

set identity_insert [Books] off;




create table [Customers] (
[CustomerID] [int] NULL,
[FirstName] [varchar] (50) NULL,
[LastName] [varchar] (50) NULL,
[PhoneNumber] [varchar] (50) NULL,
[Address] [varchar] (50) NULL,
[City] [varchar] (50) NULL);


insert [Customers] ([CustomerID],[FirstName],[LastName],[PhoneNumber],[Address],[City])
select 767,'Tiffi','Broadbent','358-685-6804','41 Waxwing Way','Dagang' UNION ALL
select 790,'Florencia','Clinton','896-304-8078','087 Grayhawk Terrace','Clorinda' UNION ALL
select 615,'Olwen','Hellard','100-907-2138','8516 Erie Way','Extrema' UNION ALL
select 553,'Fred','Cheeke','119-189-7302','7 Express Court','Heka' UNION ALL
select 768,'Mirabelle','Petteford','307-698-3135','3 Springs Plaza','Zhouhu' UNION ALL
select 620,'Dwight','O''Fogerty','258-690-9457','3641 Waxwing Trail','Santa Rita' UNION ALL
select 697,'Kiley','Constant','565-381-5446','8054 Hovde Street','Odate' UNION ALL
select 585,'Winny','Beahan','298-910-6742','8603 Golf Circle','Šenov' UNION ALL
select 688,'Clifford','Hammerton','726-277-3577','558 Prairieview Drive','Randuagung' UNION ALL
select 587,'Bernard','Dorking','788-931-6380','2366 Eagan Terrace','Muhos' UNION ALL
select 470,'Zenia','Haddrell','909-110-6408','253 Brickson Park Road','Bazzaryah' UNION ALL
select 652,'Michaela','Manby','667-696-5358','00 Mockingbird Lane','Klyuchevskiy' UNION ALL
select 474,'Mallissa','Escofier','815-763-2010','0886 Rigney Circle','??????' UNION ALL
select 817,'Hamilton','Gobert','729-433-9648','615 Washington Trail','Shisui' UNION ALL
select 695,'Louie','Dunford','930-772-8040','39 Sheridan Lane','Xijiao' UNION ALL
select 451,'Dasi','Griniov','787-945-5047','1260 Graedel Center','Muynoq' UNION ALL
select 751,'Malva','Rolin','555-920-6220','13219 Esker Hill','Santa Maria do Souto' UNION ALL
select 849,'Onofredo','Mettericke','630-421-5345','2599 Dexter Plaza','Banjar Parekan' UNION ALL
select 766,'Gray','Saulter','723-308-0839','5 Granby Terrace','Nanshe' UNION ALL
select 490,'Jon','Janecek','336-346-0291','5991 Sauthoff Center','Suchen' UNION ALL
select 895,'Emeline','Morphew','154-490-8975','57256 Glacier Hill Hill','Tangwani' UNION ALL
select 678,'Bettina','Benwell','615-590-2041','10 Mifflin Parkway','Larvik' UNION ALL
select 556,'Nalani','Balser','402-331-8654','947 Mayfield Point','Zhuting' UNION ALL
select 836,'Vallie','Gadsden','857-189-2496','39 Hanson Place','Boston' UNION ALL
select 664,'Letisha','Lambot','868-879-1250','003 Ronald Regan Alley','Papágou' UNION ALL
select 487,'Earle','Kinney','662-318-1383','12930 Quincy Hill','Guojia' UNION ALL
select 467,'Micah','Brammall','178-412-0698','7221 Trailsway Parkway','Mesto' UNION ALL
select 712,'Igor','Demchen','897-227-2539','51242 Fuller Alley','Kerrobert' UNION ALL
select 699,'Lori','Trembey','326-902-8655','2 Kennedy Plaza','San Borja' UNION ALL
select 621,'Marley','Oakton','254-573-1961','81 Summer Ridge Crossing','Juranalas' UNION ALL
select 733,'Bartel','Garfit','345-676-2180','144 Maple Wood Parkway','Pasirhuni' UNION ALL
select 833,'Nell','Dorgan','454-201-1673','88001 Holmberg Center','Podgorica' UNION ALL
select 563,'Charlotte','Gerling','635-151-2260','11 La Follette Lane','Balinad' UNION ALL
select 505,'Thane','Ommundsen','207-363-1167','6110 Kensington Street','Korotych' UNION ALL
select 868,'Polly','Maven','967-187-8726','98553 Green Lane','Taquaritinga' UNION ALL
select 728,'Angelico','Begwell','247-544-4774','30696 Messerschmidt Street','Lubumbashi' UNION ALL
select 553,'Sallyanne','Treffrey','228-521-2861','0 Ilene Park','San Nicolás de los Arroyos' UNION ALL
select 566,'Nertie','Bispo','413-686-4673','297 Waywood Terrace','Springfield' UNION ALL
select 798,'Garvin','Sneath','159-837-9308','97 Cardinal Parkway','Nartkala' UNION ALL
select 560,'Korney','Vittori','572-390-0616','5 Forest Avenue','Hukeng' UNION ALL
select 823,'Urban','Radeliffe','561-396-4596','2 Carpenter Junction','Quebrada Canoa' UNION ALL
select 713,'Florrie','Silverton','856-713-2918','22266 Sycamore Road','Camden' UNION ALL
select 658,'Jen','Ilyas','104-631-3279','6 Bluejay Way','Mucumpiz' UNION ALL
select 871,'Noel','Feldbau','310-762-7364','5702 Del Mar Terrace','Fresno' UNION ALL
select 553,'Vivi','Pimblotte','166-109-2323','6 Stone Corner Center','Žebrák' UNION ALL
select 602,'Fawnia','Gilloran','687-962-6003','09824 Nevada Lane','San Miguelito' UNION ALL
select 836,'Ara','Bemment','534-316-5012','221 Nova Crossing','Houping' UNION ALL
select 701,'Anna-diana','Varcoe','227-366-9479','8719 Graceland Lane','Chating' UNION ALL
select 537,'Des','Footitt','976-957-7809','29780 Sundown Hill','Shangma' UNION ALL
select 758,'Corbie','Midden','410-905-9137','35 Muir Terrace','Baltimore' UNION ALL
select 497,'Fonzie','Handlin','526-169-6240','74191 Luster Parkway','Macheke' UNION ALL
select 877,'Ryley','Bryett','589-892-1841','9 Drewry Road','Filimonovo' UNION ALL
select 527,'Augustus','Sharrocks','692-353-6932','7161 Acker Court','Corral de Bustos' UNION ALL
select 818,'Victoir','Grayne','213-863-1950','77113 Daystar Parkway','Sandefjord' UNION ALL
select 624,'Durand','Heugh','949-436-7583','953 Rowland Road','Newport Beach' UNION ALL
select 594,'Lucia','Heinritz','433-728-4295','18 Hovde Parkway','Grebów' UNION ALL
select 722,'Marlene','Hillin','668-496-0922','496 Corscot Parkway','Kaliasin' UNION ALL
select 792,'Jan','Brennon','555-705-9830','03231 Briar Crest Court','Teplice' UNION ALL
select 623,'Lauryn','Keele','353-994-3741','28 Sunbrook Junction','Shani' UNION ALL
select 624,'Henrieta','Duer','975-983-2741','11057 Granby Drive','Soho' UNION ALL
select 624,'Bailie','Bogie','247-680-5187','56 Southridge Lane','Darfield' UNION ALL
select 717,'Werner','Rowlatt','150-274-6122','96745 Elka Plaza','Mjamaoué' UNION ALL
select 562,'Shellie','Scales','160-134-2970','71360 Maywood Circle','Pinhal Novo' UNION ALL
select 854,'Beck','Duhig','102-963-3958','75876 Portage Center','Prabuty' UNION ALL
select 698,'Adelice','Cobb','998-593-7182','78 Washington Lane','Umbanyar' UNION ALL
select 456,'Aidan','Daintith','855-884-8226','657 1st Alley','Chyhyryn' UNION ALL
select 494,'Hewitt','Josselsohn','680-753-5937','9017 Shopko Place','Sangba' UNION ALL
select 780,'Ara','Lorriman','362-544-4209','55318 Kings Parkway','Maltahöhe' UNION ALL
select 702,'Winona','Aleksashin','108-316-0740','722 Ridge Oak Point','Skrzydlna' UNION ALL
select 761,'Jeana','Tregenza','214-463-4785','73672 Wayridge Lane','Toroy' UNION ALL
select 584,'Perri','Alsopp','954-109-6226','52854 Fisk Point','Brvenica' UNION ALL
select 858,'Corrina','Houchen','771-734-5577','1 Oneill Plaza','Qufu' UNION ALL
select 786,'Ileane','Vasilyev','928-484-8341','30797 Parkside Lane','Khlevnoye' UNION ALL
select 736,'La verne','Semor','381-943-6939','97 Bay Place','Margorejo' UNION ALL
select 767,'Bethanne','Wellesley','679-217-7788','8 Butternut Alley','To’rtko’l Shahri' UNION ALL
select 576,'Isahella','Adamiak','825-724-3896','02752 Hollow Ridge Trail','Cibulakan' UNION ALL
select 721,'Abraham','Dowsing','258-500-4892','60 Ronald Regan Lane','Navotas' UNION ALL
select 620,'Kimmi','Doige','683-198-7327','7006 Union Circle','Timbó' UNION ALL
select 479,'Parnell','Blackwell','626-193-1874','993 Eagle Crest Alley','Wangyi Zhendian' UNION ALL
select 827,'Odille','Mayes','591-506-8261','32861 Walton Alley','Berezne' UNION ALL
select 743,'Lani','Zollner','339-487-1349','5 Anhalt Trail','Millet' UNION ALL
select 850,'Hilarius','Henze','996-790-2749','56022 Declaration Junction','Miskolc' UNION ALL
select 857,'Lynde','Robertot','419-142-1127','38 Kedzie Road','Hamilton' UNION ALL
select 727,'Meghann','Emanson','758-174-0481','291 Cardinal Crossing','Del Pilar' UNION ALL
select 684,'Burnard','Matthai','142-236-3167','99 Burrows Crossing','Särö' UNION ALL
select 727,'Angelica','Rasmus','334-935-8996','217 Cherokee Terrace','Sioguí Abajo' UNION ALL
select 725,'Vasilis','Bawme','992-858-7387','6573 Dennis Park','Hobo' UNION ALL
select 764,'Sigfrid','Laurance','587-675-5238','40 Bay Terrace','Th? Tr?n Tà Lùng' UNION ALL
select 632,'Britteny','Gossop','123-708-3559','408 Duke Plaza','Jixing' UNION ALL
select 541,'Trista','Mosedall','203-899-4675','837 Lake View Center','Cournon-d''Auvergne' UNION ALL
select 721,'Roderich','Lascelles','343-368-5339','97485 Farragut Trail','Xintaimen' UNION ALL
select 531,'Alaric','Enstone','770-313-2853','5 Logan Place','Santa Lucia' UNION ALL
select 632,'Ephrayim','Gymlett','546-160-5302','34 Hudson Junction','Brzeznica' UNION ALL
select 545,'Merrili','Christofides','294-719-7411','65690 Meadow Vale Pass','Igreja' UNION ALL
select 891,'Burnaby','Iles','675-663-9674','8 Logan Crossing','Limeil-Brévannes' UNION ALL
select 750,'Perice','Yewman','715-108-4209','26496 Oriole Center','Gunjur Kuta' UNION ALL
select 709,'Jillian','Skeel','766-857-1194','67 Kinsman Court','Colonia Aurora' UNION ALL
select 748,'Norene','Fibbitts','772-607-0374','17865 Darwin Road','Hedi' UNION ALL
select 535,'Katey','Roden','283-496-5146','24995 Montana Hill','Miguel Hidalgo' UNION ALL
select 703,'Corissa','Goatman','443-459-4202','28232 Sutherland Trail','Geneina' UNION ALL
select 751,'Titus','Tallach','944-883-9791','551 Messerschmidt Road','Kuala Tuha' UNION ALL
select 668,'Cherri','Feild','648-745-2788','57652 Porter Drive','Fengting' UNION ALL
select 697,'Conn','Rudgerd','729-660-7613','669 Hooker Road','Madalena' UNION ALL
select 667,'Gracia','Bastian','137-181-6035','05592 Almo Place','Tacarigua' UNION ALL
select 618,'Bink','Dubber','927-214-5091','9 Larry Point','Sinacaban' UNION ALL
select 723,'Coriss','Sawers','907-501-9202','058 Shopko Parkway','Zhongying' UNION ALL
select 676,'Guillaume','Carhart','436-854-6303','90 Helena Alley','Kyankwanzi' UNION ALL
select 548,'Dacia','Vasilmanov','890-614-3496','40 Maple Drive','La Rochelle' UNION ALL
select 754,'Brandy','Cicconettii','926-701-3619','539 Nelson Alley','Jinping' UNION ALL
select 762,'Anderea','Tilzey','199-842-6392','003 Manitowish Avenue','Jazovo' UNION ALL
select 594,'Clevey','Pund','320-864-3681','756 Gateway Crossing','Outeiro' UNION ALL
select 677,'Jessamine','Ivchenko','334-639-5172','0285 Pine View Lane','Ibarreta' UNION ALL
select 722,'Gweneth','Romans','581-276-7266','40 Fairview Hill','L''viv' UNION ALL
select 564,'Barris','Philippault','541-266-7336','39754 Jay Center','København' UNION ALL
select 608,'Bartel','Cello','462-295-7033','2643 Nelson Avenue','Tongyu' UNION ALL
select 829,'Carolann','Bischoff','157-145-1186','3 Butterfield Center','Fabianki' UNION ALL
select 497,'Milt','Colquitt','187-952-4845','2 Melvin Alley','Ijuí' UNION ALL
select 891,'Whitney','Walklate','848-586-7436','24885 Maple Wood Street','Cermee' UNION ALL
select 829,'Emerson','Kimblen','851-374-2014','556 Kingsford Crossing','Eksjö' UNION ALL
select 729,'Dale','Chapier','141-395-2859','9 Coolidge Hill','Saparbay' UNION ALL
select 588,'Danica','Lamkin','896-759-1606','8403 Hallows Pass','Santiago Vázquez' UNION ALL
select 854,'Falito','Lashley','898-386-3370','74 Corscot Point','Izborsk' UNION ALL
select 524,'Shantee','Sein','164-179-7192','66352 Bartelt Trail','Grzybowa Góra' UNION ALL
select 590,'Annissa','Capaldo','833-497-9507','47 Merrick Plaza','Cibaregbeg Dua' UNION ALL
select 604,'Josee','Nickoll','952-442-0533','5249 Meadow Ridge Park','Ciroyom' UNION ALL
select 646,'Farlay','Brixey','261-707-4063','93 Upham Alley','Semirara' UNION ALL
select 887,'Amye','Wickwarth','750-839-9002','01336 Rieder Place','Chengkan' UNION ALL
select 489,'Julianna','Spendley','330-601-1867','992 Vermont Court','Cetinje' UNION ALL
select 597,'Carly','Harsnipe','866-336-3810','7280 Hauk Pass','Yueyahe' UNION ALL
select 459,'Ashia','McCrie','721-432-5185','166 Farmco Court','Jocotenango' UNION ALL
select 540,'Gannie','Astie','744-196-8473','87224 Dexter Circle','Donskoye' UNION ALL
select 626,'Jeannie','Lindro','356-468-0643','8173 Ronald Regan Center','Pejibaye' UNION ALL
select 488,'Chicky','Simon','337-724-3484','569 Forster Circle','Wuyo' UNION ALL
select 834,'Sashenka','Readhead','554-109-2790','89 Barby Plaza','Calheta' UNION ALL
select 766,'Urbain','Yurchishin','377-900-6971','719 Porter Drive','Staryy Krym' UNION ALL
select 644,'Alasdair','Scampion','179-438-1004','46126 Loomis Lane','Koslan' UNION ALL
select 472,'Buck','Jennaway','110-269-5320','8 Morning Circle','Pau' UNION ALL
select 538,'Juliann','Freddi','240-807-0282','1 Dwight Alley','Jiahe' UNION ALL
select 896,'Friedrich','Roman','461-657-2419','01013 Comanche Court','Baoquanshan' UNION ALL
select 769,'Rafa','Goney','518-932-6051','72815 Homewood Road','Chalamarca' UNION ALL
select 470,'Reese','Victory','102-923-1536','28 Independence Parkway','Sanchahe' UNION ALL
select 878,'Neddy','Worsell','925-639-7932','2931 Heath Alley','Uchaly' UNION ALL
select 698,'Cordy','Pieracci','184-645-9929','90957 Superior Center','Ágios Efstrátios' UNION ALL
select 529,'Stacey','Eymor','615-548-2687','3 Loeprich Point','Kalapadua' UNION ALL
select 562,'Raff','Menpes','429-790-7172','7 Kennedy Court','Ngunguru' UNION ALL
select 695,'Delbert','Ingon','357-396-8009','3111 International Pass','Gävle' UNION ALL
select 896,'Jakie','Porteous','257-482-4423','25 Surrey Point','Tocok' UNION ALL
select 848,'Zorina','Sherred','868-675-0078','59 Spohn Lane','Tuatuka' UNION ALL
select 676,'Davida','Sabie','179-200-5421','8355 Northridge Court','Bungalaleng' UNION ALL
select 604,'Douglas','Gawith','374-219-5853','22219 Schiller Way','Miao’ergou' UNION ALL
select 490,'Josephine','Minto','953-208-0195','9 Logan Lane','Kittilä' UNION ALL
select 475,'Vanni','Sabati','709-164-4892','7 Tomscot Hill','Dobje pri Planini' UNION ALL
select 606,'Ronny','Quirk','678-265-1448','3 Golden Leaf Road','Zhouzhuang' UNION ALL
select 535,'Michele','Gorrissen','480-955-0679','045 Canary Court','San Juan de Limay' UNION ALL
select 816,'Finn','Filinkov','688-533-1101','67 Hoepker Park','Guantang' UNION ALL
select 614,'Forbes','Giblett','165-899-4296','78 Dayton Crossing','Sinarharapan' UNION ALL
select 592,'Jobie','Bithany','102-440-1151','50791 Carioca Crossing','Alvalade' UNION ALL
select 885,'Riobard','Rooksby','531-111-9140','2 Sloan Park','Tuban' UNION ALL
select 538,'Isabelle','Inch','300-312-9412','716 Westport Place','Sovetskaya' UNION ALL
select 773,'Fabian','Haistwell','804-796-0262','75 Anderson Pass','Bratislava' UNION ALL
select 511,'Belicia','Rayson','938-509-1095','25831 Butterfield Plaza','Stamáta' UNION ALL
select 651,'Roderick','Foddy','415-755-8756','2671 Sunfield Crossing','Zarki' UNION ALL
select 504,'Kimmi','Loader','468-230-5308','538 Evergreen Parkway','Strasbourg' UNION ALL
select 547,'Thaddus','Brake','935-668-2583','0060 John Wall Center','Proboštov' UNION ALL
select 797,'Kim','Marsden','685-337-6378','3724 Rowland Center','Sekampung' UNION ALL
select 487,'Anallise','Hartfield','356-772-3203','799 Rieder Circle','Banarankrajan' UNION ALL
select 767,'Beitris','Divver','553-676-6767','570 8th Pass','Anju' UNION ALL
select 602,'Carilyn','Shankle','702-460-0556','044 Prairie Rose Plaza','Kauniainen' UNION ALL
select 820,'Sergent','Willbond','735-754-0499','914 Bowman Street','Dapuchaihe' UNION ALL
select 745,'Micki','Rubert','714-669-3935','8 Sommers Junction','Fullerton' UNION ALL
select 804,'Ingmar','McLay','353-721-9852','9113 Dawn Terrace','Tajur' UNION ALL
select 552,'Reeva','Calendar','996-677-0718','9 Dapin Hill','Lau' UNION ALL
select 577,'Schuyler','Yesenin','309-690-7669','0650 Ruskin Hill','Aqchah' UNION ALL
select 617,'Olwen','Clelland','379-466-3420','46 Eastwood Street','San Jose' UNION ALL
select 692,'Gerhardine','Wasling','313-143-0957','0 Independence Drive','Detroit' UNION ALL
select 638,'Gill','O''Siaghail','149-503-5077','980 Arizona Pass','Axioúpoli' UNION ALL
select 894,'Selia','Stubs','978-609-3586','15825 Weeping Birch Terrace','Ron Phibun' UNION ALL
select 830,'Sebastian','Vasiliev','899-143-2079','172 3rd Street','Calilegua' UNION ALL
select 595,'Betta','Flucker','598-431-5619','5359 Luster Center','Wobulenzi' UNION ALL
select 884,'Korella','Britney','190-697-7480','44029 6th Lane','Junbu' UNION ALL
select 760,'Dell','Stoute','208-919-0655','53684 Spohn Court','Cibalieur' UNION ALL
select 745,'Daisy','Natwick','962-973-3815','857 Maple Plaza','Kalajoki' UNION ALL
select 842,'Jordanna','Slucock','648-435-3957','8965 Truax Court','Orange Walk' UNION ALL
select 457,'Rockwell','Bartle','851-454-9096','5627 Rutledge Road','Adstock' UNION ALL
select 675,'Nevsa','Marrington','583-189-8855','25573 Graedel Crossing','Ramat HaSharon' UNION ALL
select 527,'Josey','McKeever','948-428-5740','7260 Scott Avenue','Gikongoro' UNION ALL
select 525,'Tate','Starzaker','355-781-2803','5232 Ilene Point','Szczecin' UNION ALL
select 836,'Murial','Janda','960-491-6173','47 Melrose Hill','Sekararum' UNION ALL
select 836,'Agnese','Dabourne','255-530-6130','635 Kinsman Lane','Uren’' UNION ALL
select 616,'Eryn','Cossem','726-253-9136','57530 Stang Terrace','Tambakmerak' UNION ALL
select 792,'Bernardo','Mcwhinney','862-131-5083','6231 Marcy Hill','Nayoro' UNION ALL
select 562,'Martynne','Goter','844-785-9747','3651 Kingsford Junction','Umeå' UNION ALL
select 532,'Wolfie','Fallen','247-453-5354','6 Buhler Terrace','Guhuai' UNION ALL
select 490,'Marie','Banasik','697-829-8523','20902 Independence Parkway','Yangping' UNION ALL
select 710,'Callean','Clausson','907-978-3393','2719 Knutson Terrace','Solosolo' UNION ALL
select 668,'Jody','Edinboro','623-428-0543','64 Eggendart Point','San Pablo' UNION ALL
select 688,'Xerxes','Backs','406-307-9766','256 Ridgeway Center','Navotas' UNION ALL
select 572,'Bran','Baress','130-674-1775','03 Mallory Terrace','Lesna Podlaska' UNION ALL
select 643,'Ezra','Menelaws','596-496-5165','6394 Namekagon Street','Älmhult' UNION ALL
select 667,'Daryn','Dunguy','348-177-3122','04606 Elgar Trail','Bangker' UNION ALL
select 565,'Salome','Ready','804-545-6869','1179 Myrtle Way','Amiens' UNION ALL
select 571,'Fletch','Tarn','849-616-2279','71 Fordem Parkway','Qarqania' UNION ALL
select 786,'Collete','Prince','110-125-3661','450 Sauthoff Lane','Czarna Dabrówka' UNION ALL
select 851,'Veda','Burtenshaw','104-188-2302','55 Cascade Road','Hejiang' UNION ALL
select 612,'Heda','Bassindale','808-849-8638','68 Schlimgen Avenue','Soeng Sang' UNION ALL
select 553,'Timofei','Smallbone','593-293-6787','04 Gerald Lane','Uwa' UNION ALL
select 656,'Amy','Fawloe','364-400-7321','16084 Packers Drive','Millet' UNION ALL
select 667,'Stella','Pollicote','669-391-0321','84 Anhalt Parkway','Ocho Rios' UNION ALL
select 689,'Natassia','Oslar','702-422-4025','038 Portage Lane','Las Vegas' UNION ALL
select 662,'Tami','Kibbel','726-293-6320','393 Crownhardt Way','Puqian' UNION ALL
select 794,'Annelise','Fairbourn','962-226-3516','52 Graedel Lane','Steinfort' UNION ALL
select 590,'Rad','Halms','775-564-9624','0 Orin Hill','La Loma' UNION ALL
select 594,'Dannie','Dikels','238-800-4091','89 Nelson Place','Colombes' UNION ALL
select 688,'Chaunce','Curryer','150-340-9089','8037 Main Center','Igrejinha' UNION ALL
select 677,'Nelli','Jurisch','206-625-5267','32 Oneill Street','Pocora' UNION ALL
select 616,'Farr','Esler','284-955-8708','5 Hintze Pass','Monsanto' UNION ALL
select 721,'Nata','Twinbrow','140-406-3858','41 Bluejay Pass','Xiabaishi' UNION ALL
select 584,'Gloriana','Aveyard','471-713-8393','07 Pennsylvania Way','Orsha' UNION ALL
select 784,'Jeff','Seago','193-156-9927','44554 Nancy Terrace','Hrotovice' UNION ALL
select 833,'Bev','Tilbrook','673-234-7025','5396 Springs Trail','Mocoa' UNION ALL
select 717,'Flore','Baildon','697-398-8670','4 Carey Way','Nova Pazova' UNION ALL
select 651,'Sheena','Treadgold','723-478-1700','24 Roxbury Road','Naifalo' UNION ALL
select 861,'Loella','Cowcha','535-456-0878','59 Summit Crossing','San Ramón' UNION ALL
select 784,'Gwyneth','Edmund','184-879-6641','3328 Marquette Junction','Jinhua' UNION ALL
select 777,'Larina','Wanek','119-998-7147','5193 Thierer Way','Houten' UNION ALL
select 815,'Devlen','Itschakov','436-108-8302','0496 Eliot Drive','Prabuty' UNION ALL
select 560,'Giffy','Tingly','125-702-7847','24 Ilene Junction','Stockholm' UNION ALL
select 714,'Mendel','Caine','857-357-2031','5 Anthes Place','Vanadzor' UNION ALL
select 686,'Jena','Tweedle','309-239-2824','392 Londonderry Terrace','Cibogo' UNION ALL
select 707,'Frederick','Govier','753-610-6252','444 Pankratz Parkway','Zhifang' UNION ALL
select 474,'Rafi','Zavattieri','879-842-8158','5 5th Street','Kasli' UNION ALL
select 847,'Demott','Cottom','916-691-5522','86231 Mcguire Way','Shataping' UNION ALL
select 672,'Patty','Buzine','370-363-1702','354 Pond Avenue','Si’en' UNION ALL
select 486,'Feodora','Bernardy','834-757-6833','9418 Delladonna Terrace','San Silvestre' UNION ALL
select 663,'Eunice','Eyer','327-964-3856','227 Miller Lane','Al Ma?fid' UNION ALL
select 469,'Madonna','Arlott','954-835-5779','87 Kennedy Street','Libertad' UNION ALL
select 481,'Dugald','Westmarland','814-500-6103','1951 Summerview Avenue','Pakxé' UNION ALL
select 617,'Zea','Borrott','354-140-4901','819 Anniversary Circle','Las Toscas' UNION ALL
select 843,'Corty','Cossum','321-336-5943','6067 Sutteridge Street','Kitahiroshima' UNION ALL
select 830,'Amber','Fernely','119-741-5623','28879 Leroy Trail','Minji' UNION ALL
select 583,'Mohandas','Isacoff','376-909-7966','2 2nd Crossing','Sakura' UNION ALL
select 453,'Swen','Izen','117-222-5686','49 Coolidge Place','Renchaoxi' UNION ALL
select 637,'Wyatan','Gludor','573-973-8992','26027 Laurel Plaza','Yahil’nytsya' UNION ALL
select 672,'Alanna','Penke','748-955-4481','050 Michigan Parkway','Yuejin' UNION ALL
select 465,'Cynthea','Sanpher','841-425-7062','7 Hallows Drive','Waikambila' UNION ALL
select 809,'Nadya','Karolowski','576-522-3853','89 Elka Parkway','Orleans' UNION ALL
select 461,'Dasya','Escudier','197-473-0907','437 Mallard Court','Altay' UNION ALL
select 641,'Inglis','Bruna','239-143-0792','9 Troy Way','Usol’ye' UNION ALL
select 820,'Imogen','Downham','684-892-4781','40 Anthes Road','Peseng' UNION ALL
select 454,'Cher','Derle','782-258-6594','58116 Kropf Circle','Cibulakan' UNION ALL
select 782,'Ossie','Davidi','995-737-0492','680 Hanson Terrace','Chuandao' UNION ALL
select 785,'Bill','Simoneau','638-380-7226','556 Dexter Alley','Wolczyn' UNION ALL
select 741,'Hewe','Scullard','319-972-5707','5025 Kropf Point','Iowa City' UNION ALL
select 581,'Demetris','Ebbles','340-354-4647','85392 Moulton Avenue','Maikun' UNION ALL
select 816,'Cecilio','Day','374-222-2411','6 Caliangt Center','Colendra' UNION ALL
select 852,'Carlin','Fitzsymon','420-677-4483','17647 Parkside Trail','Maglajani' UNION ALL
select 698,'Quint','Couche','599-639-0410','76862 Macpherson Place','Madruga' UNION ALL
select 483,'Archer','Clover','139-158-5221','2 Stuart Crossing','Essen' UNION ALL
select 688,'Norbert','Joscelin','149-347-7242','4457 Butternut Pass','Néos Mylótopos' UNION ALL
select 549,'Monro','Hammersley','687-372-4680','51 Ridge Oak Trail','Karbunara e Vogël' UNION ALL
select 826,'Arly','Rewbottom','339-641-7918','858 Steensland Point','Davila' UNION ALL
select 822,'Una','Lanyon','793-522-9082','8 Buena Vista Point','Säffle' UNION ALL
select 880,'Lodovico','Leckey','351-594-1386','69017 Arrowood Park','Malasiqui' UNION ALL
select 569,'Jill','Mathissen','140-203-6624','87 Manley Circle','Parlilitan' UNION ALL
select 561,'Ermengarde','Girardengo','189-146-7910','697 Fallview Street','Salerno' UNION ALL
select 537,'Patin','Fudger','284-236-4969','77 Meadow Vale Alley','Valvedditturai' UNION ALL
select 725,'Nickola','Martignoni','663-878-5977','9034 Waxwing Trail','Tomilino' UNION ALL
select 831,'Hamilton','Thackeray','938-719-1855','2398 Brentwood Avenue','Imeni Tsyurupy' UNION ALL
select 452,'Luce','Radclyffe','929-388-3241','783 Scoville Parkway','Kobilje' UNION ALL
select 542,'Ettore','Sanpher','736-837-3968','89680 Nelson Alley','Shalinskoye' UNION ALL
select 877,'Maurene','Dohrmann','816-301-9092','01 Hazelcrest Hill','Aix-en-Provence' UNION ALL
select 789,'Ken','Nutbeam','662-206-4288','807 Ohio Park','Pokrzywnica' UNION ALL
select 475,'Allx','Bussel','879-136-4977','7449 Lillian Center','El Retorno' UNION ALL
select 504,'Gwyn','Hess','519-473-0177','7248 Clove Place','Abu Sunbul' UNION ALL
select 592,'Seymour','Pohl','544-212-0529','631 Sachs Pass','Geoktschai' UNION ALL
select 767,'Ramonda','Bonhan','969-607-6604','04420 Northridge Place','Kamba' UNION ALL
select 768,'Gael','Wondraschek','966-678-0393','4108 Westend Park','Al Fashn' UNION ALL
select 854,'Wendell','Deekes','949-600-6147','24146 Ohio Alley','Samsan' UNION ALL
select 756,'Ardelis','Arnauduc','757-101-2181','03 Fuller Circle','Chesapeake' UNION ALL
select 457,'Iain','Goddert.sf','520-869-5142','0 Northridge Trail','Kutno' UNION ALL
select 761,'Dollie','Giacobbo','317-217-5499','3 Thompson Terrace','Welchman Hall' UNION ALL
select 599,'Anthe','Crowson','211-161-4792','0 Alpine Park','Bordeaux' UNION ALL
select 639,'Claudell','Wetherald','147-359-9059','1563 Sauthoff Pass','Pekijing' UNION ALL
select 663,'Ludvig','Jira','933-597-6058','27 Mayer Trail','Rancaseneng' UNION ALL
select 461,'Winston','Heine','196-332-3667','19163 Blue Bill Park Road','Shaoha' UNION ALL
select 588,'Lesley','Torry','896-795-7187','263 Nova Crossing','La Esperanza' UNION ALL
select 670,'Leah','Heine','257-301-4024','72 Caliangt Point','Bistrinci' UNION ALL
select 525,'Vannie','Gergely','233-260-9526','08249 Schmedeman Park','Kingsey Falls' UNION ALL
select 889,'Chrysler','Loomis','932-164-4147','86371 Bunker Hill Parkway','Palumbungan' UNION ALL
select 452,'Patsy','Delves','114-125-8064','473 Laurel Trail','Albacete' UNION ALL
select 559,'Alano','Binns','593-899-8334','3 Homewood Road','Mococa' UNION ALL
select 724,'Vincenty','Pundy','422-591-6393','201 Dayton Alley','Kalmar' UNION ALL
select 777,'Fanni','Padwick','796-828-8689','581 Nevada Parkway','Campinho' UNION ALL
select 575,'Gerda','Marzella','605-768-6690','45 5th Park','Skaryszew' UNION ALL
select 565,'Shane','MacSween','106-843-0021','17119 Mendota Way','Galutu' UNION ALL
select 614,'Craggie','Goldis','900-223-3846','80 Dexter Pass','Mengmeng' UNION ALL
select 810,'Jobye','Morde','725-496-8635','1 Melvin Park','Szeged' UNION ALL
select 526,'Jeri','Veevers','202-618-3005','17730 Karstens Terrace','Estrada' UNION ALL
select 521,'Prent','Shavel','169-985-7980','136 Golf Park','Ånge' UNION ALL
select 807,'Wheeler','Kittle','301-846-5166','646 Bartelt Park','Chejiazhuang' UNION ALL
select 599,'Reina','Mollene','863-271-0792','49 Forest Dale Trail','Vylkove' UNION ALL
select 454,'Dawn','Bish','790-229-0499','92597 Ridge Oak Court','Biwer' UNION ALL
select 570,'Zack','Allmann','873-490-6890','4735 Portage Point','Wonotirto' UNION ALL
select 859,'Janetta','Wilford','221-277-3839','47360 Blaine Park','Niopanda' UNION ALL
select 812,'Jermayne','Lanceley','756-209-7091','453 Monica Plaza','Lianghe' UNION ALL
select 781,'Myrna','Sarton','518-499-7753','84 Maple Court','Huanza' UNION ALL
select 485,'Blancha','Coale','838-188-2683','28247 Spaight Junction','Naukot' UNION ALL
select 761,'Julienne','Haymes','907-743-6504','6266 Union Road','Nalchiti' UNION ALL
select 720,'Philip','Wasmer','302-953-0480','3 Longview Drive','Togu' UNION ALL
select 569,'Maritsa','Lucius','299-716-3318','273 Duke Trail','Itapecuru Mirim' UNION ALL
select 781,'Malena','Bazek','598-225-8636','64775 Pleasure Drive','Malko Turnovo' UNION ALL
select 554,'Penelope','Bartolommeo','774-521-1475','97651 Westport Alley','Vahdat' UNION ALL
select 642,'Marje','Ropp','448-141-5711','27876 Carey Center','Ringin Kembar' UNION ALL
select 863,'Adelice','McFayden','938-430-1502','529 Main Point','Kapatagan' UNION ALL
select 768,'Tully','Leith','147-222-2097','70212 Elka Road','Garahaji' UNION ALL
select 522,'Bentlee','Mannakee','913-951-2741','3 Debra Park','San Pedro' UNION ALL
select 800,'Vittoria','Reijmers','676-373-8422','9693 Mesta Way','Radvanice' UNION ALL
select 856,'Sibella','Laherty','341-847-6238','8 New Castle Parkway','Yuejin' UNION ALL
select 600,'Lissi','Daal','466-604-8117','15 Longview Alley','Lachi' UNION ALL
select 587,'Flossy','Walkowski','858-275-1413','56 Commercial Lane','Bom Despacho' UNION ALL
select 802,'Renate','Hayer','302-839-7867','45 Riverside Place','Wilmington' UNION ALL
select 574,'Rois','Lahy','785-517-4146','1 Loomis Place','Sutton' UNION ALL
select 808,'Hedwiga','Barrar','912-889-6045','3 Loomis Way','Takeo' UNION ALL
select 757,'Laural','Engledow','675-291-7321','0 Starling Place','Maldonado' UNION ALL
select 668,'Vivian','Dressel','486-335-9742','99 Bayside Place','Ceerigaabo' UNION ALL
select 491,'Alane','Kunath','740-728-2060','6427 Goodland Circle','Traiguén' UNION ALL
select 681,'Frasquito','Siggery','369-658-4546','81 Prairieview Terrace','Gardutanjak' UNION ALL
select 728,'Max','Chieco','208-239-0523','9242 Westridge Park','Anopog' UNION ALL
select 738,'Stearn','Westmoreland','135-510-0615','7 Commercial Center','Concepcion' UNION ALL
select 804,'Hart','Drewitt','284-351-9195','8686 Bunting Center','Zhongzhai' UNION ALL
select 800,'Birch','Sterndale','120-838-5824','90530 Carberry Point','Lahan Sai' UNION ALL
select 716,'Appolonia','Ing','255-229-4746','1 Heffernan Lane','Aleksinac' UNION ALL
select 480,'Lucia','Sabban','685-960-3994','4413 Steensland Place','Pingxiang' UNION ALL
select 764,'Silvia','Stainton - Skinn','724-522-9283','54164 Pearson Drive','Xinying' UNION ALL
select 667,'Kendra','Broadbury','367-413-9129','50792 Basil Parkway','Guanyinsi' UNION ALL
select 530,'Cammy','Insull','366-234-6560','01699 Sutherland Way','Linzi' UNION ALL
select 564,'Obadias','Tefft','745-309-0245','6 Melby Trail','San Diego' UNION ALL
select 656,'Ofilia','Fittall','961-716-2085','95 Cordelia Parkway','Kapsan-up' UNION ALL
select 565,'Gonzalo','Berresford','699-623-7475','557 Pearson Alley','Freiria' UNION ALL
select 487,'Vivie','Grinishin','590-512-5458','0 Parkside Alley','Huilong' UNION ALL
select 751,'Diane-marie','Chaytor','869-704-6457','66881 Sauthoff Way','Kamenjane' UNION ALL
select 834,'Matty','Heustace','712-256-6694','35235 Transport Center','Jednorozec' UNION ALL
select 471,'Land','Pettisall','762-721-6007','8061 Harper Drive','Sv. Trojica v Slov. Goricah' UNION ALL
select 657,'Yale','Charlot','181-232-1460','554 Becker Trail','Shujaabad' UNION ALL
select 778,'Allison','Emmett','242-692-4549','23 Heffernan Alley','Sikonge' UNION ALL
select 798,'Hector','Ladds','249-423-6124','6147 Summerview Alley','Rennes' UNION ALL
select 498,'Rossy','Tolumello','712-282-5326','5562 Nevada Alley','Verkhniy Lomov' UNION ALL
select 614,'Kenon','Patel','207-725-9870','2 Haas Place','Baracatan' UNION ALL
select 619,'Chadwick','Scrowson','379-310-4936','118 Meadow Valley Crossing','Kanye' UNION ALL
select 772,'Evvie','Plumptre','710-227-0980','757 Clemons Place','Ruyigi' UNION ALL
select 608,'Cynthie','Lapthorne','617-969-2424','6 Marquette Trail','Vinica' UNION ALL
select 756,'Verna','Willder','497-713-3570','6 Sachtjen Court','Backa Palanka' UNION ALL
select 626,'Crystal','Biaggiotti','660-874-9659','86 Eliot Place','Cilongkrang' UNION ALL
select 829,'Boris','Tracey','971-950-0950','941 Homewood Crossing','Portland' UNION ALL
select 795,'Darius','Shakspeare','645-714-8661','7213 Mandrake Court','Chikwawa' UNION ALL
select 526,'Shawnee','Hartopp','671-642-7416','7 Northview Pass','Xilin Hot' UNION ALL
select 455,'Dulcea','Shawel','956-307-8618','13356 Kensington Street','Hongwei' UNION ALL
select 707,'Norton','Borrow','859-317-2838','19880 Center Lane','Dust Mo?ammad Khan' UNION ALL
select 507,'Jeth','Scrigmour','546-606-9716','8111 Reindahl Plaza','Ojo de Agua' UNION ALL
select 459,'Reinold','Reef','329-380-9097','1 Karstens Circle','Neftegorsk' UNION ALL
select 485,'Madel','Jiracek','847-357-8864','4114 Commercial Point','Río Blanco' UNION ALL
select 869,'Jeannine','Desvignes','238-499-4044','93 Drewry Place','São Gonçalo do Sapucaí' UNION ALL
select 571,'Doris','Wieprecht','465-162-5089','0493 Jana Avenue','Noyon' UNION ALL
select 625,'Shawna','McClory','474-833-6336','697 Mallory Parkway','Paoay' UNION ALL
select 768,'Stephana','Simonato','566-783-2916','14059 Vidon Center','Cañada de Gómez' UNION ALL
select 719,'Verene','Cush','671-615-4545','9203 Stoughton Center','Kyrylivka' UNION ALL
select 546,'Esta','Wadforth','603-132-2334','2747 Hudson Alley','Paris 13' UNION ALL
select 612,'Chester','Ibbison','913-876-3436','72 Valley Edge Street','San Isidro' UNION ALL
select 663,'Leigha','Olsson','643-516-4906','433 Tennyson Alley','Dimitsána' UNION ALL
select 888,'Allin','Weth','717-166-7184','7527 Coleman Lane','Dokshytsy' UNION ALL
select 596,'Isobel','Spruce','657-329-8530','97 Barnett Circle','Poigar' UNION ALL
select 786,'Cale','Ollander','303-801-8586','96941 Hazelcrest Circle','Trollhättan' UNION ALL
select 875,'Nicolis','McKeady','718-998-6539','950 Hoffman Road','Soljani' UNION ALL
select 778,'Isaak','Kirley','766-979-2871','64 Shasta Hill','Damaying' UNION ALL
select 629,'Karoly','Wishart','923-375-7415','0 Surrey Way','Lyse' UNION ALL
select 830,'Ansel','Daykin','777-390-1957','7762 Buhler Alley','Vila Viçosa' UNION ALL
select 790,'Gabbi','Bukac','692-550-5757','89 Debs Avenue','Chimbote' UNION ALL
select 534,'Berte','Conew','667-579-7692','08 Brentwood Center','Alemanguan' UNION ALL
select 764,'Bonni','Baress','964-442-7997','8195 Forest Run Center','Sendangwaru' UNION ALL
select 531,'Duff','Ugolini','354-815-2869','216 Petterle Court','Awilega' UNION ALL
select 710,'Jaimie','Rulf','725-759-6244','1 Briar Crest Circle','Elói Mendes' UNION ALL
select 735,'Rudolf','Limmer','345-381-5544','929 Melrose Junction','Sotouboua' UNION ALL
select 541,'Morgen','Pearsey','161-720-3672','498 1st Court','Aubagne' UNION ALL
select 570,'Boonie','Whyteman','960-501-8558','73 Buena Vista Crossing','Ladysmith' UNION ALL
select 550,'Shanna','Vassman','690-869-3330','92 Northland Alley','Handan' UNION ALL
select 594,'Bunni','Pell','336-892-5349','0396 Artisan Alley','Huibu' UNION ALL
select 850,'Leona','Di Maria','665-585-5770','4 Tennyson Point','Kuwumkumambal' UNION ALL
select 739,'Witty','Jendrusch','666-516-9509','35955 5th Trail','Rokytne' UNION ALL
select 538,'Towney','Enderby','544-889-9129','24269 Glacier Hill Trail','Koloniya Zastav’ye' UNION ALL
select 821,'Gallard','Peagram','879-644-9357','51 Sherman Pass','Zhanqian' UNION ALL
select 899,'Germaine','Jacquest','881-458-2398','41105 Sundown Drive','Capulaan' UNION ALL
select 797,'Chaddie','Shrimpton','140-886-4118','694 Larry Park','Skien' UNION ALL
select 628,'Kurt','Hutten','257-638-9563','4 Forster Road','Farsta' UNION ALL
select 680,'Wernher','Schimmang','730-398-9748','78 Ohio Drive','Berkovitsa' UNION ALL
select 865,'Hymie','Bernhardsson','790-116-6803','05537 Forest Dale Parkway','El Bagre' UNION ALL
select 773,'Timothy','Ofener','401-884-0876','9 Spenser Terrace','Tlatah' UNION ALL
select 491,'Costa','Pidgen','657-962-3566','9316 Clove Circle','Frederiksberg' UNION ALL
select 815,'Evaleen','McQuilty','435-348-9639','09057 Northridge Drive','Citangtu Kaler' UNION ALL
select 742,'Cross','Davey','270-517-5797','46568 Kensington Crossing','Paris 13' UNION ALL
select 871,'Zara','Ashbee','714-229-1284','37134 Atwood Pass','Port-de-Bouc' UNION ALL
select 540,'Clari','Fransoni','392-244-4427','99500 Fair Oaks Park','Zhulebino' UNION ALL
select 458,'Dieter','Altoft','918-795-4643','631 Melody Hill','Mananjary' UNION ALL
select 625,'Eli','Jeandin','650-838-3883','4303 Schurz Crossing','Seixas do Douro' UNION ALL
select 769,'Barbabas','Kilduff','117-333-4714','026 Northview Way','Lydenburg' UNION ALL
select 538,'Orrin','Dumingo','129-724-8335','614 Vermont Hill','Guolemude' UNION ALL
select 613,'Britney','Salmon','837-593-2675','73994 Victoria Pass','La Estancia' UNION ALL
select 886,'Raven','Pablos','428-744-3852','096 Mayfield Hill','Labuan' UNION ALL
select 766,'Annmaria','Goodayle','879-202-7426','0 Eagle Crest Drive','Timrå' UNION ALL
select 866,'Sigmund','Thake','875-294-6536','40538 Bultman Avenue','Chechen-Aul' UNION ALL
select 521,'Brody','Deignan','609-753-2865','98734 Sauthoff Lane','Vatutine' UNION ALL
select 709,'Woodrow','Maher','499-914-3683','14415 Oxford Crossing','Lota' UNION ALL
select 656,'Augustina','Ball','443-921-5618','02810 Golden Leaf Road','Zlotów' UNION ALL
select 495,'Darby','Booth-Jarvis','248-693-9423','4708 Pawling Way','Sangatta' UNION ALL
select 472,'Mae','Alastair','773-548-6862','66 Becker Place','Lyuban’' UNION ALL
select 576,'Carla','Biddle','551-368-5405','4276 Towne Way','Ouahigouya' UNION ALL
select 631,'Fritz','Arntzen','571-641-9190','7626 Brown Drive','Sterling' UNION ALL
select 781,'Darrell','Bonwick','958-327-5116','5 Dottie Alley','Hallstahammar' UNION ALL
select 577,'Trudy','Hebble','474-231-9583','66 Morning Place','Punta de Bombón' UNION ALL
select 756,'Vikky','Adamides','338-647-6430','0713 Bowman Trail','Shuntian' UNION ALL
select 778,'Lishe','Browning','338-334-9036','902 Montana Alley','Kingston' UNION ALL
select 478,'Ardath','Holttom','565-182-4232','8619 6th Place','Nggalak' UNION ALL
select 600,'Penn','Thornebarrow','147-120-8464','2 Stoughton Court','Biyan' UNION ALL
select 898,'Zita','Harmon','528-346-2508','77446 Vernon Court','Drammen' UNION ALL
select 684,'Noe','Dmisek','815-987-1994','32520 Meadow Vale Terrace','Metz' UNION ALL
select 817,'Jerry','Paver','411-887-7528','3295 Sheridan Center','Sibayo' UNION ALL
select 695,'Henderson','Weatherhogg','536-516-8951','4 Old Gate Circle','Chornyanka' UNION ALL
select 803,'Lissie','Rosbrough','680-380-8433','83 Kensington Plaza','Västerås' UNION ALL
select 596,'Calida','McPhilip','479-600-2354','8257 Pennsylvania Pass','Marseille' UNION ALL
select 847,'Star','Elsmore','871-416-0167','81199 Dahle Drive','Sakon Nakhon' UNION ALL
select 693,'Georgianna','Bartosiak','693-958-8056','27 Kinsman Trail','Russeifa' UNION ALL
select 592,'Esteban','Deere','793-155-3578','9180 Elka Park','Breves' UNION ALL
select 557,'Thomas','Syne','321-838-9149','27 Bunker Hill Hill','Episkopí' UNION ALL
select 852,'Joana','Brightie','335-146-7417','76 Cascade Street','Sadar' UNION ALL
select 553,'Ingamar','Baroch','613-877-7322','999 Little Fleur Way','Palmar de Varela' UNION ALL
select 889,'Adan','Going','920-258-1128','19832 Spenser Avenue','Tuanjie' UNION ALL
select 798,'Rea','Andryushchenko','882-225-8964','07350 Acker Lane','Birr' UNION ALL
select 765,'Bennie','Gregoraci','215-764-3990','646 Westport Road','Nanganga' UNION ALL
select 496,'Cally','Sannes','517-974-2839','36 Dakota Court','Malitbog' UNION ALL
select 464,'Joane','Wardell','471-154-1130','28 Roth Place','Jarada' UNION ALL
select 568,'Corliss','Garvey','306-320-3004','1552 Mcguire Hill','Furmanov' UNION ALL
select 752,'Hattie','Kirlin','366-227-1447','52738 Stoughton Place','Tong’an' UNION ALL
select 643,'Zacharias','Juan','419-677-7942','7 Ridgeway Park','Novaya Mayna' UNION ALL
select 604,'Laverna','Pecht','429-233-7159','45 Rutledge Drive','Garunggang' UNION ALL
select 868,'Florencia','Graser','170-159-2813','5463 Calypso Crossing','Torres' UNION ALL
select 696,'Dov','Britian','265-656-7325','206 Browning Circle','Buan' UNION ALL
select 864,'Marybeth','Wozencraft','942-836-3863','11 Bultman Terrace','Dan Sadau' UNION ALL
select 798,'Christoph','Carryer','589-497-9561','35395 Hauk Point','Allacapan' UNION ALL
select 794,'Candi','Choules','117-147-9901','45954 Marquette Park','Dawuhan' UNION ALL
select 803,'Tabby','Creegan','837-733-8079','645 Onsgard Avenue','Madrid' UNION ALL
select 606,'Delinda','McConway','705-920-8106','0310 Cardinal Circle','La Palma' UNION ALL
select 799,'Cyndie','Mattiessen','757-984-7494','0 Cottonwood Junction','Siso' UNION ALL
select 690,'Darcy','Bounde','539-744-6982','6 Almo Circle','Curuan' UNION ALL
select 827,'Karina','Whetland','382-427-0526','4985 Prentice Place','Tenggun Dajah' UNION ALL
select 458,'Ringo','Diggles','728-291-9307','742 Rockefeller Place','Vitória' UNION ALL
select 818,'Shurwood','Clark','248-109-7864','15919 Miller Drive','Sufang' UNION ALL
select 591,'Mia','Hullock','512-938-3528','92913 Schlimgen Pass','Jobabo' UNION ALL
select 508,'Lizabeth','Yaus','881-313-3747','2 Del Mar Hill','Marmashen' UNION ALL
select 488,'Lucas','Folliss','217-823-6787','46 Maryland Junction','Meneou' UNION ALL
select 559,'Sydney','Wormell','776-568-0559','7450 Hudson Plaza','Stopnica' UNION ALL
select 773,'Amitie','Keough','776-862-0579','937 Mccormick Parkway','Santo Antônio do Monte' UNION ALL
select 675,'Elbertina','Bromhead','704-870-2764','06 Springs Park','Bal Chiragh' UNION ALL
select 627,'Nedi','Loads','528-651-9205','96132 Porter Pass','‘Asirah al Qibliyah' UNION ALL
select 798,'Marlee','Bilney','174-755-7979','9 Raven Alley','San Antonio' UNION ALL
select 708,'Ilene','Cardenosa','562-738-5590','6 Coleman Road','Los Angeles' UNION ALL
select 854,'Jessa','Andreacci','875-650-5490','060 3rd Street','Stockholm' UNION ALL
select 819,'Ester','Kristoffersen','313-685-3364','198 Utah Circle','Jamalteca' UNION ALL
select 521,'Kinny','McQuorkel','456-257-6036','16854 Swallow Parkway','Chacapalpa' UNION ALL
select 473,'Harrison','Noni','541-885-6402','3582 Schiller Terrace','Monte' UNION ALL
select 693,'Willy','Cowcha','795-831-2294','0 Forster Plaza','Bolhrad' UNION ALL
select 615,'Olly','Cuttin','216-343-5756','5047 Arrowood Crossing','Mairana' UNION ALL
select 720,'Rhetta','MacIllrick','812-413-8211','4 Sutherland Park','Matlang' UNION ALL
select 655,'Jordan','Matchett','454-192-7206','22702 Paget Road','Dagur' UNION ALL
select 543,'Brenden','De Andreis','755-516-9322','497 Erie Crossing','Piquillín' UNION ALL
select 865,'Astra','Gratton','157-610-6917','9219 Pleasure Plaza','Ramon’' UNION ALL
select 851,'Mike','Dougharty','926-244-3197','86949 Esker Point','Zátor' UNION ALL
select 861,'Rosalind','Gawkes','797-498-7771','72190 Clemons Terrace','Cherga' UNION ALL
select 854,'Ardelle','Lesser','371-655-8892','282 Novick Parkway','Aksu' UNION ALL
select 888,'Adelle','Beetles','893-730-3684','00 Manitowish Trail','Pasacao' UNION ALL
select 852,'Pall','Berryman','193-944-4014','780 Everett Place','Jiedu' UNION ALL
select 840,'Chloris','Neylon','575-705-7263','52545 Monterey Way','Uchkeken' UNION ALL
select 500,'Ingaborg','Blasio','103-237-1855','6 Loeprich Park','Serra da Silveira' UNION ALL
select 631,'Quintina','Crackett','608-753-7470','760 Blue Bill Park Avenue','Fairview' UNION ALL
select 635,'Ellene','Blessed','480-244-5875','4619 Waxwing Crossing','San Mateo' UNION ALL
select 573,'Ramsey','Colleton','714-780-2955','5 Reinke Street','Ýdra' UNION ALL
select 838,'Mercy','Chellingworth','367-404-9615','6 Menomonie Circle','Grand Bois' UNION ALL
select 476,'Alberik','Jilkes','982-184-0831','177 Cherokee Point','Ampasimanolotra' UNION ALL
select 675,'Goldie','Mourant','615-830-5482','33 Ridgeway Hill','Pavlovka' UNION ALL
select 889,'Maurine','Barz','530-443-5114','2537 Anzinger Alley','Prachuap Khiri Khan' UNION ALL
select 511,'Shaina','Stoakes','855-947-6907','52191 American Way','Kentongan' UNION ALL
select 894,'Ettore','Cufflin','590-865-6669','2488 Crescent Oaks Center','Djohong' UNION ALL
select 491,'Vannie','Stiggles','382-375-6706','45 Dayton Avenue','Heilangkou' UNION ALL
select 783,'Teddi','Doy','140-501-7782','248 Pine View Place','Severo-Zadonsk' UNION ALL
select 779,'Shanie','Trollope','286-100-6558','5 Ruskin Point','Qingxi' UNION ALL
select 511,'Niven','Terrazzo','988-808-7220','24 Erie Road','Sydney' UNION ALL
select 849,'Janine','Crofthwaite','202-462-7798','27077 Lunder Crossing','Washington' UNION ALL
select 605,'Donaugh','Maciunas','338-422-0868','9 Magdeline Point','Changfeng' UNION ALL
select 889,'Lorenza','Georgeson','630-662-2483','937 Village Road','Pasar Kidul' UNION ALL
select 892,'Riobard','Lenney','752-217-6992','5968 Loomis Way','Yixingfu' UNION ALL
select 890,'Rutger','Hawksby','506-671-7196','4414 Raven Junction','Sidomulyo' UNION ALL
select 527,'Willy','Ganford','327-532-9165','348 Clarendon Lane','Kolwezi';

create table [Genre] (
[GenreID] [int] NULL,
[Genre] [varchar] (50) NULL);


insert [Genre] ([GenreID],[Genre])
select 1,'Art' UNION ALL
select 2,'Classics' UNION ALL
select 3,'Fantasy' UNION ALL
select 4,'Fiction' UNION ALL
select 5,'History' UNION ALL
select 6,'Philosophy' UNION ALL
select 7,'Science' UNION ALL
select 8,'Science Fiction' UNION ALL
select 9,'Dystopia' UNION ALL
select 10,'Horror';

create table [OrderDetails] (
[BookID] [int] NULL,
[OrderDetailsID] [int] NULL);


insert [OrderDetails] ([BookID],[OrderDetailsID])
select 831,376 UNION ALL
select 972,296 UNION ALL
select 847,425 UNION ALL
select 896,187 UNION ALL
select 910,334 UNION ALL
select 717,344 UNION ALL
select 982,276 UNION ALL
select 885,177 UNION ALL
select 764,261 UNION ALL
select 1029,426 UNION ALL
select 1148,56 UNION ALL
select 1178,202 UNION ALL
select 833,117 UNION ALL
select 766,252 UNION ALL
select 1068,342 UNION ALL
select 1064,435 UNION ALL
select 947,438 UNION ALL
select 843,61 UNION ALL
select 776,229 UNION ALL
select 1166,359 UNION ALL
select 1165,375 UNION ALL
select 886,5 UNION ALL
select 807,6 UNION ALL
select 846,215 UNION ALL
select 839,498 UNION ALL
select 1122,75 UNION ALL
select 1173,146 UNION ALL
select 1005,315 UNION ALL
select 789,494 UNION ALL
select 1136,118 UNION ALL
select 859,495 UNION ALL
select 880,140 UNION ALL
select 861,47 UNION ALL
select 989,108 UNION ALL
select 960,67 UNION ALL
select 1074,404 UNION ALL
select 1059,55 UNION ALL
select 1174,86 UNION ALL
select 1057,289 UNION ALL
select 1043,146 UNION ALL
select 1115,274 UNION ALL
select 893,119 UNION ALL
select 1054,99 UNION ALL
select 838,376 UNION ALL
select 1155,156 UNION ALL
select 892,8 UNION ALL
select 1163,362 UNION ALL
select 981,469 UNION ALL
select 734,331 UNION ALL
select 768,167 UNION ALL
select 1080,283 UNION ALL
select 895,389 UNION ALL
select 1130,479 UNION ALL
select 1029,127 UNION ALL
select 897,441 UNION ALL
select 1108,278 UNION ALL
select 884,253 UNION ALL
select 918,11 UNION ALL
select 1063,124 UNION ALL
select 891,167 UNION ALL
select 1161,489 UNION ALL
select 1120,202 UNION ALL
select 999,215 UNION ALL
select 773,347 UNION ALL
select 785,16 UNION ALL
select 825,409 UNION ALL
select 892,294 UNION ALL
select 841,3 UNION ALL
select 923,40 UNION ALL
select 764,231 UNION ALL
select 1164,177 UNION ALL
select 1169,237 UNION ALL
select 1138,465 UNION ALL
select 1081,241 UNION ALL
select 787,149 UNION ALL
select 1075,311 UNION ALL
select 908,351 UNION ALL
select 878,205 UNION ALL
select 1045,220 UNION ALL
select 1174,170 UNION ALL
select 1056,346 UNION ALL
select 726,116 UNION ALL
select 882,57 UNION ALL
select 1166,183 UNION ALL
select 876,220 UNION ALL
select 1092,132 UNION ALL
select 1182,396 UNION ALL
select 828,162 UNION ALL
select 924,330 UNION ALL
select 843,291 UNION ALL
select 798,80 UNION ALL
select 994,39 UNION ALL
select 834,33 UNION ALL
select 1071,497 UNION ALL
select 1006,139 UNION ALL
select 720,12 UNION ALL
select 719,211 UNION ALL
select 1160,89 UNION ALL
select 1117,40 UNION ALL
select 710,497 UNION ALL
select 1169,21 UNION ALL
select 1061,378 UNION ALL
select 860,148 UNION ALL
select 1070,275 UNION ALL
select 1045,279 UNION ALL
select 816,229 UNION ALL
select 1000,233 UNION ALL
select 849,120 UNION ALL
select 1010,350 UNION ALL
select 1011,249 UNION ALL
select 1028,285 UNION ALL
select 912,103 UNION ALL
select 847,148 UNION ALL
select 1017,494 UNION ALL
select 791,43 UNION ALL
select 1022,319 UNION ALL
select 1072,364 UNION ALL
select 749,296 UNION ALL
select 896,229 UNION ALL
select 1078,450 UNION ALL
select 975,254 UNION ALL
select 974,94 UNION ALL
select 994,337 UNION ALL
select 1057,132 UNION ALL
select 1096,142 UNION ALL
select 790,206 UNION ALL
select 1161,455 UNION ALL
select 805,316 UNION ALL
select 782,411 UNION ALL
select 1069,331 UNION ALL
select 921,345 UNION ALL
select 954,22 UNION ALL
select 729,123 UNION ALL
select 932,174 UNION ALL
select 1023,396 UNION ALL
select 820,245 UNION ALL
select 1031,485 UNION ALL
select 1147,190 UNION ALL
select 711,246 UNION ALL
select 810,8 UNION ALL
select 982,471 UNION ALL
select 1160,402 UNION ALL
select 1015,442 UNION ALL
select 884,366 UNION ALL
select 715,370 UNION ALL
select 798,425 UNION ALL
select 707,474 UNION ALL
select 1150,389 UNION ALL
select 970,313 UNION ALL
select 1041,204 UNION ALL
select 1168,93 UNION ALL
select 790,46 UNION ALL
select 1035,54 UNION ALL
select 1109,201 UNION ALL
select 749,26 UNION ALL
select 1046,397 UNION ALL
select 1053,106 UNION ALL
select 1011,74 UNION ALL
select 819,110 UNION ALL
select 1048,12 UNION ALL
select 897,485 UNION ALL
select 975,440 UNION ALL
select 1088,473 UNION ALL
select 1055,318 UNION ALL
select 1158,185 UNION ALL
select 750,280 UNION ALL
select 1188,474 UNION ALL
select 756,19 UNION ALL
select 1128,150 UNION ALL
select 947,326 UNION ALL
select 965,202 UNION ALL
select 864,119 UNION ALL
select 754,392 UNION ALL
select 1076,237 UNION ALL
select 907,304 UNION ALL
select 920,358 UNION ALL
select 742,198 UNION ALL
select 1005,227 UNION ALL
select 1088,291 UNION ALL
select 1012,336 UNION ALL
select 1042,439 UNION ALL
select 895,453 UNION ALL
select 1082,499 UNION ALL
select 1038,488 UNION ALL
select 851,132 UNION ALL
select 870,138 UNION ALL
select 1160,239 UNION ALL
select 1092,13 UNION ALL
select 1103,322 UNION ALL
select 1007,287 UNION ALL
select 820,50 UNION ALL
select 877,105 UNION ALL
select 1173,125 UNION ALL
select 1140,486 UNION ALL
select 1120,287 UNION ALL
select 955,234 UNION ALL
select 1154,160 UNION ALL
select 1113,49 UNION ALL
select 862,151 UNION ALL
select 756,185 UNION ALL
select 1024,90 UNION ALL
select 1045,12 UNION ALL
select 1107,270 UNION ALL
select 744,426 UNION ALL
select 906,471 UNION ALL
select 1197,472 UNION ALL
select 907,1 UNION ALL
select 766,168 UNION ALL
select 1070,26 UNION ALL
select 942,274 UNION ALL
select 933,258 UNION ALL
select 985,306 UNION ALL
select 971,28 UNION ALL
select 1181,108 UNION ALL
select 778,267 UNION ALL
select 789,205 UNION ALL
select 957,118 UNION ALL
select 1156,35 UNION ALL
select 1144,259 UNION ALL
select 841,347 UNION ALL
select 1140,476 UNION ALL
select 1104,308 UNION ALL
select 1168,174 UNION ALL
select 1103,214 UNION ALL
select 1091,423 UNION ALL
select 968,331 UNION ALL
select 880,51 UNION ALL
select 909,484 UNION ALL
select 742,260 UNION ALL
select 971,203 UNION ALL
select 729,378 UNION ALL
select 894,257 UNION ALL
select 1109,147 UNION ALL
select 1066,81 UNION ALL
select 817,399 UNION ALL
select 852,251 UNION ALL
select 778,496 UNION ALL
select 760,242 UNION ALL
select 1143,244 UNION ALL
select 927,10 UNION ALL
select 939,163 UNION ALL
select 862,486 UNION ALL
select 1186,443 UNION ALL
select 794,190 UNION ALL
select 743,345 UNION ALL
select 1194,500 UNION ALL
select 723,165 UNION ALL
select 794,436 UNION ALL
select 857,289 UNION ALL
select 724,397 UNION ALL
select 767,416 UNION ALL
select 1152,69 UNION ALL
select 870,494 UNION ALL
select 815,202 UNION ALL
select 1071,173 UNION ALL
select 900,199 UNION ALL
select 1012,480 UNION ALL
select 956,308 UNION ALL
select 759,55 UNION ALL
select 1152,72 UNION ALL
select 876,233 UNION ALL
select 1002,492 UNION ALL
select 1191,500 UNION ALL
select 898,119 UNION ALL
select 980,182 UNION ALL
select 835,368 UNION ALL
select 1085,360 UNION ALL
select 1048,381 UNION ALL
select 746,160 UNION ALL
select 1017,138 UNION ALL
select 1180,248 UNION ALL
select 1056,80 UNION ALL
select 1054,304 UNION ALL
select 831,390 UNION ALL
select 919,359 UNION ALL
select 795,36 UNION ALL
select 985,242 UNION ALL
select 1011,351 UNION ALL
select 701,291 UNION ALL
select 1117,124 UNION ALL
select 1066,237 UNION ALL
select 1184,430 UNION ALL
select 823,401 UNION ALL
select 861,461 UNION ALL
select 726,441 UNION ALL
select 738,96 UNION ALL
select 900,4 UNION ALL
select 888,270 UNION ALL
select 1036,69 UNION ALL
select 735,143 UNION ALL
select 837,104 UNION ALL
select 739,246 UNION ALL
select 702,102 UNION ALL
select 721,273 UNION ALL
select 920,193 UNION ALL
select 903,105 UNION ALL
select 798,473 UNION ALL
select 1169,284 UNION ALL
select 971,39 UNION ALL
select 1195,475 UNION ALL
select 1101,249 UNION ALL
select 729,483 UNION ALL
select 717,196 UNION ALL
select 893,177 UNION ALL
select 1053,262 UNION ALL
select 1107,412 UNION ALL
select 946,50 UNION ALL
select 1100,110 UNION ALL
select 788,438 UNION ALL
select 1094,16 UNION ALL
select 973,4 UNION ALL
select 1072,20 UNION ALL
select 1068,242 UNION ALL
select 1055,94 UNION ALL
select 965,75 UNION ALL
select 1093,329 UNION ALL
select 1196,67 UNION ALL
select 1112,166 UNION ALL
select 1160,417 UNION ALL
select 872,463 UNION ALL
select 1197,88 UNION ALL
select 1002,136 UNION ALL
select 818,322 UNION ALL
select 746,347 UNION ALL
select 844,405 UNION ALL
select 765,201 UNION ALL
select 870,497 UNION ALL
select 1183,37 UNION ALL
select 995,89 UNION ALL
select 856,156 UNION ALL
select 885,56 UNION ALL
select 1152,210 UNION ALL
select 1018,49 UNION ALL
select 1013,120 UNION ALL
select 785,219 UNION ALL
select 1087,83 UNION ALL
select 915,440 UNION ALL
select 826,96 UNION ALL
select 1150,326 UNION ALL
select 820,89 UNION ALL
select 906,29 UNION ALL
select 903,11 UNION ALL
select 937,41 UNION ALL
select 917,134 UNION ALL
select 821,385 UNION ALL
select 802,223 UNION ALL
select 977,179 UNION ALL
select 989,302 UNION ALL
select 701,108 UNION ALL
select 750,355 UNION ALL
select 833,398 UNION ALL
select 926,350 UNION ALL
select 753,173 UNION ALL
select 949,188 UNION ALL
select 797,150 UNION ALL
select 989,181 UNION ALL
select 1034,79 UNION ALL
select 766,90 UNION ALL
select 892,415 UNION ALL
select 1105,392 UNION ALL
select 1071,471 UNION ALL
select 1192,120 UNION ALL
select 1100,409 UNION ALL
select 944,357 UNION ALL
select 1108,296 UNION ALL
select 1013,140 UNION ALL
select 795,108 UNION ALL
select 1099,158 UNION ALL
select 997,487 UNION ALL
select 1057,354 UNION ALL
select 704,140 UNION ALL
select 1180,222 UNION ALL
select 990,382 UNION ALL
select 817,27 UNION ALL
select 723,212 UNION ALL
select 748,50 UNION ALL
select 897,308 UNION ALL
select 883,212 UNION ALL
select 963,206 UNION ALL
select 922,370 UNION ALL
select 989,90 UNION ALL
select 1037,285 UNION ALL
select 1173,448 UNION ALL
select 754,109 UNION ALL
select 1047,427 UNION ALL
select 1187,242 UNION ALL
select 703,432 UNION ALL
select 974,93 UNION ALL
select 776,103 UNION ALL
select 921,192 UNION ALL
select 1072,421 UNION ALL
select 921,297 UNION ALL
select 953,234 UNION ALL
select 876,232 UNION ALL
select 1061,96 UNION ALL
select 721,496 UNION ALL
select 1090,177 UNION ALL
select 759,39 UNION ALL
select 1068,420 UNION ALL
select 1039,12 UNION ALL
select 783,71 UNION ALL
select 1084,301 UNION ALL
select 968,34 UNION ALL
select 1090,25 UNION ALL
select 722,283 UNION ALL
select 1119,208 UNION ALL
select 1166,211 UNION ALL
select 957,24 UNION ALL
select 882,488 UNION ALL
select 853,49 UNION ALL
select 750,330 UNION ALL
select 942,58 UNION ALL
select 987,432 UNION ALL
select 1069,386 UNION ALL
select 704,209 UNION ALL
select 730,293 UNION ALL
select 898,118 UNION ALL
select 1053,191 UNION ALL
select 957,64 UNION ALL
select 1011,191 UNION ALL
select 938,145 UNION ALL
select 741,432 UNION ALL
select 938,450 UNION ALL
select 1003,39 UNION ALL
select 855,263 UNION ALL
select 1009,31 UNION ALL
select 1107,109 UNION ALL
select 966,127 UNION ALL
select 1012,292 UNION ALL
select 843,167 UNION ALL
select 712,258 UNION ALL
select 773,351 UNION ALL
select 1001,174 UNION ALL
select 881,268 UNION ALL
select 1049,105 UNION ALL
select 747,55 UNION ALL
select 1194,294 UNION ALL
select 1052,98 UNION ALL
select 1134,452 UNION ALL
select 766,253 UNION ALL
select 768,387 UNION ALL
select 706,290 UNION ALL
select 1130,330 UNION ALL
select 771,432 UNION ALL
select 808,131 UNION ALL
select 1076,438 UNION ALL
select 816,498 UNION ALL
select 888,252 UNION ALL
select 1031,52 UNION ALL
select 1124,415 UNION ALL
select 1052,24 UNION ALL
select 975,479 UNION ALL
select 771,16 UNION ALL
select 880,303 UNION ALL
select 732,300 UNION ALL
select 1049,479 UNION ALL
select 903,371 UNION ALL
select 1051,365 UNION ALL
select 1122,96 UNION ALL
select 1114,56 UNION ALL
select 822,471 UNION ALL
select 1144,215 UNION ALL
select 1107,292 UNION ALL
select 1117,134 UNION ALL
select 835,284 UNION ALL
select 996,489 UNION ALL
select 1122,63 UNION ALL
select 1135,122 UNION ALL
select 739,182 UNION ALL
select 712,105 UNION ALL
select 1114,162 UNION ALL
select 1141,301 UNION ALL
select 1166,422 UNION ALL
select 926,126 UNION ALL
select 1018,59 UNION ALL
select 1099,411 UNION ALL
select 706,116 UNION ALL
select 804,149 UNION ALL
select 788,319 UNION ALL
select 852,136 UNION ALL
select 889,60 UNION ALL
select 720,232 UNION ALL
select 1132,279 UNION ALL
select 898,396 UNION ALL
select 1092,36 UNION ALL
select 781,186 UNION ALL
select 1160,355 UNION ALL
select 863,421 UNION ALL
select 1042,268 UNION ALL
select 729,158 UNION ALL
select 1100,113 UNION ALL
select 903,450 UNION ALL
select 909,445 UNION ALL
select 1095,335 UNION ALL
select 1085,52 UNION ALL
select 1190,69 UNION ALL
select 1129,144 UNION ALL
select 1176,385 UNION ALL
select 1139,39 UNION ALL
select 772,326;

create table [Orders] (
[OrderID] [int] NULL,
[OrderDetailID] [int] NULL,
[CustomerID] [int] NULL);


insert [Orders] ([OrderID],[OrderDetailID],[CustomerID])
select 5128,313,880 UNION ALL
select 5438,133,783 UNION ALL
select 5146,316,698 UNION ALL
select 5442,330,858 UNION ALL
select 5491,411,695 UNION ALL
select 5211,330,780 UNION ALL
select 5053,239,809 UNION ALL
select 5344,90,487 UNION ALL
select 5031,330,728 UNION ALL
select 5071,433,581 UNION ALL
select 5417,182,566 UNION ALL
select 5241,138,739 UNION ALL
select 5347,316,775 UNION ALL
select 5149,363,619 UNION ALL
select 5067,16,832 UNION ALL
select 5365,250,568 UNION ALL
select 5128,442,489 UNION ALL
select 5171,444,523 UNION ALL
select 5031,191,584 UNION ALL
select 5057,151,538 UNION ALL
select 5441,90,696 UNION ALL
select 5176,88,767 UNION ALL
select 5177,290,522 UNION ALL
select 5087,69,792 UNION ALL
select 5025,498,866 UNION ALL
select 5044,382,794 UNION ALL
select 5121,385,553 UNION ALL
select 5040,107,483 UNION ALL
select 5303,386,660 UNION ALL
select 5325,38,801 UNION ALL
select 5483,245,455 UNION ALL
select 5209,190,722 UNION ALL
select 5225,313,497 UNION ALL
select 5168,134,683 UNION ALL
select 5401,273,657 UNION ALL
select 5063,106,675 UNION ALL
select 5467,214,533 UNION ALL
select 5013,288,807 UNION ALL
select 5055,395,760 UNION ALL
select 5237,243,654 UNION ALL
select 5119,402,716 UNION ALL
select 5377,338,869 UNION ALL
select 5132,14,512 UNION ALL
select 5129,214,607 UNION ALL
select 5193,492,564 UNION ALL
select 5445,193,692 UNION ALL
select 5305,358,451 UNION ALL
select 5451,58,857 UNION ALL
select 5498,54,600 UNION ALL
select 5076,222,663 UNION ALL
select 5299,345,834 UNION ALL
select 5182,220,900 UNION ALL
select 5359,71,584 UNION ALL
select 5287,95,834 UNION ALL
select 5411,130,877 UNION ALL
select 5162,426,651 UNION ALL
select 5376,477,619 UNION ALL
select 5359,37,771 UNION ALL
select 5380,338,605 UNION ALL
select 5382,348,717 UNION ALL
select 5479,490,571 UNION ALL
select 5304,66,469 UNION ALL
select 5108,132,463 UNION ALL
select 5308,484,680 UNION ALL
select 5199,73,675 UNION ALL
select 5470,278,525 UNION ALL
select 5256,467,720 UNION ALL
select 5112,415,813 UNION ALL
select 5037,91,676 UNION ALL
select 5026,160,858 UNION ALL
select 5059,442,751 UNION ALL
select 5409,21,461 UNION ALL
select 5483,450,703 UNION ALL
select 5432,328,560 UNION ALL
select 5297,280,751 UNION ALL
select 5099,266,630 UNION ALL
select 5368,286,700 UNION ALL
select 5289,10,687 UNION ALL
select 5473,476,497 UNION ALL
select 5353,253,615 UNION ALL
select 5411,208,703 UNION ALL
select 5422,310,603 UNION ALL
select 5083,57,573 UNION ALL
select 5315,85,632 UNION ALL
select 5088,423,651 UNION ALL
select 5483,234,781 UNION ALL
select 5032,58,687 UNION ALL
select 5102,193,665 UNION ALL
select 5328,415,560 UNION ALL
select 5423,204,598 UNION ALL
select 5446,284,604 UNION ALL
select 5340,170,868 UNION ALL
select 5081,20,729 UNION ALL
select 5379,412,579 UNION ALL
select 5446,368,890 UNION ALL
select 5351,271,495 UNION ALL
select 5239,391,703 UNION ALL
select 5268,415,746 UNION ALL
select 5105,5,481 UNION ALL
select 5238,469,567 UNION ALL
select 5029,230,533 UNION ALL
select 5280,211,845 UNION ALL
select 5117,322,537 UNION ALL
select 5324,471,514 UNION ALL
select 5026,24,466 UNION ALL
select 5488,172,708 UNION ALL
select 5273,227,800 UNION ALL
select 5387,93,741 UNION ALL
select 5050,210,692 UNION ALL
select 5204,89,609 UNION ALL
select 5080,307,805 UNION ALL
select 5104,151,774 UNION ALL
select 5002,8,482 UNION ALL
select 5049,356,871 UNION ALL
select 5060,13,534 UNION ALL
select 5350,354,483 UNION ALL
select 5469,135,651 UNION ALL
select 5227,433,476 UNION ALL
select 5297,480,698 UNION ALL
select 5297,257,556 UNION ALL
select 5258,303,805 UNION ALL
select 5199,220,626 UNION ALL
select 5442,25,462 UNION ALL
select 5465,424,522 UNION ALL
select 5070,246,538 UNION ALL
select 5054,449,681 UNION ALL
select 5061,435,670 UNION ALL
select 5342,34,683 UNION ALL
select 5005,266,736 UNION ALL
select 5354,145,895 UNION ALL
select 5407,178,826 UNION ALL
select 5166,300,692 UNION ALL
select 5103,418,613 UNION ALL
select 5096,374,488 UNION ALL
select 5145,285,861 UNION ALL
select 5354,206,609 UNION ALL
select 5493,69,806 UNION ALL
select 5160,75,611 UNION ALL
select 5159,147,711 UNION ALL
select 5195,106,668 UNION ALL
select 5364,448,480 UNION ALL
select 5291,495,761 UNION ALL
select 5421,2,819 UNION ALL
select 5175,419,849 UNION ALL
select 5361,464,453 UNION ALL
select 5161,75,824 UNION ALL
select 5225,482,888 UNION ALL
select 5035,5,574 UNION ALL
select 5477,86,807 UNION ALL
select 5137,448,609 UNION ALL
select 5410,424,604 UNION ALL
select 5040,126,784 UNION ALL
select 5236,4,581 UNION ALL
select 5082,166,624 UNION ALL
select 5185,130,471 UNION ALL
select 5374,307,756 UNION ALL
select 5140,88,806 UNION ALL
select 5247,458,478 UNION ALL
select 5302,80,450 UNION ALL
select 5248,329,815 UNION ALL
select 5140,491,847 UNION ALL
select 5149,79,503 UNION ALL
select 5117,48,651 UNION ALL
select 5420,321,776 UNION ALL
select 5406,111,498 UNION ALL
select 5121,476,783 UNION ALL
select 5024,183,532 UNION ALL
select 5380,89,468 UNION ALL
select 5168,453,468 UNION ALL
select 5023,210,752 UNION ALL
select 5057,50,515 UNION ALL
select 5283,93,776 UNION ALL
select 5352,357,585 UNION ALL
select 5465,341,501 UNION ALL
select 5279,451,584 UNION ALL
select 5205,130,826 UNION ALL
select 5445,4,858 UNION ALL
select 5398,363,851 UNION ALL
select 5253,320,595 UNION ALL
select 5176,318,621 UNION ALL
select 5398,236,656 UNION ALL
select 5186,368,782 UNION ALL
select 5278,173,722 UNION ALL
select 5038,377,886 UNION ALL
select 5318,250,780 UNION ALL
select 5263,234,814 UNION ALL
select 5046,356,883 UNION ALL
select 5052,202,867 UNION ALL
select 5072,160,550 UNION ALL
select 5487,102,893 UNION ALL
select 5104,181,740 UNION ALL
select 5241,347,652 UNION ALL
select 5039,32,486 UNION ALL
select 5453,68,862 UNION ALL
select 5159,237,606 UNION ALL
select 5169,350,875 UNION ALL
select 5442,212,515 UNION ALL
select 5167,493,830 UNION ALL
select 5480,438,726 UNION ALL
select 5373,259,858 UNION ALL
select 5073,43,546 UNION ALL
select 5137,283,704 UNION ALL
select 5108,272,614 UNION ALL
select 5165,310,579 UNION ALL
select 5482,156,500 UNION ALL
select 5045,308,820 UNION ALL
select 5382,144,710 UNION ALL
select 5290,237,856 UNION ALL
select 5359,374,793 UNION ALL
select 5124,477,763 UNION ALL
select 5286,75,559 UNION ALL
select 5387,497,801 UNION ALL
select 5459,278,593 UNION ALL
select 5120,201,513 UNION ALL
select 5315,430,715 UNION ALL
select 5329,477,859 UNION ALL
select 5087,336,546 UNION ALL
select 5047,259,516 UNION ALL
select 5170,480,893 UNION ALL
select 5437,402,857 UNION ALL
select 5087,87,814 UNION ALL
select 5460,329,815 UNION ALL
select 5152,252,765 UNION ALL
select 5073,441,866 UNION ALL
select 5448,367,686 UNION ALL
select 5132,396,464 UNION ALL
select 5181,190,888 UNION ALL
select 5421,332,495 UNION ALL
select 5055,19,888 UNION ALL
select 5365,145,583 UNION ALL
select 5395,388,639 UNION ALL
select 5139,96,688 UNION ALL
select 5386,412,685 UNION ALL
select 5355,384,628 UNION ALL
select 5026,251,581 UNION ALL
select 5003,191,701 UNION ALL
select 5422,117,492 UNION ALL
select 5168,179,579 UNION ALL
select 5036,439,526 UNION ALL
select 5196,254,741 UNION ALL
select 5456,112,507 UNION ALL
select 5321,138,509 UNION ALL
select 5160,285,568 UNION ALL
select 5131,205,682 UNION ALL
select 5296,292,562;

GO

create table [Publisher] (
[PublisherID] [decimal] (4,0) NULL,
[Name] [varchar] (50) NULL);


insert [Publisher] ([PublisherID],[Name])
select 1010,'Penguin' UNION ALL
select 1011,'Lion' UNION ALL
select 1012,'Sparrow' UNION ALL
select 1013,'Bear' UNION ALL
select 1014,'Bull' UNION ALL
select 1015,'Bongo' UNION ALL
select 1016,'Bonobo' UNION ALL
select 1017,'Dolphin' UNION ALL
select 1018,'Chinook' UNION ALL
select 1019,'Ivy' UNION ALL
select 1020,'Dodo' UNION ALL
select 1021,'Master' UNION ALL
select 1022,'Arkedia' UNION ALL
select 1023,'Fox' UNION ALL
select 1024,'Alana' UNION ALL
select 1025,'Panda' UNION ALL
select 1026,'Tor' UNION ALL
select 1027,'Cat' UNION ALL
select 1028,'Gleda' UNION ALL
select 1029,'Beilul' UNION ALL
select 1030,'Rose';

GO


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE view [dbo].[BooksFullDetail] AS
SELECT Books.Title as Book_Name, Genre.Genre as Genre, Authors.AuthorFirstName, 
Authors.AuthorLastName, Publisher.Name as Publisher, Books.PageCount, Books.Price
FROM Books INNER JOIN Genre ON Books.GenreID = Genre.GenreID
INNER JOIN Authors ON Authors.AuthorID = Books.AuthorID
INNER JOIN Publisher ON Books.PublisherID = Publisher.PublisherID

GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spAddNewBook]
@AuthorID DECIMAL(3,0),
@GenreID DECIMAL(2,0),
@Title VARCHAR(50),
@Price VARCHAR(50),
@PageCount INT,
@PublisherID INT

AS 
BEGIN
INSERT into Books (AuthorID, GenreID, Title, Price, [PageCount], PublisherID )
VALUES (@AuthorID, @GenreID, @Title, @Price, @PageCount, @PublisherID)


SELECT * FROM Books

END
GO


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE FUNCTION [dbo].[Func_OrdersForGenre]
(
@GenreID INT

)
RETURNS TABLE
AS
RETURN
(
SELECT  Books.Title as "Book Title", Genre.Genre, Authors.AuthorFirstName, Authors.AuthorLastName, Publisher.Name as "Publisher Name", Books.Price, Customers.FirstName as "Customer FirstName", Customers.LastName as "Customer LastName" , Customers.PhoneNumber as "Customer Phone Number" FROM Books
INNER JOIN Authors ON Books.AuthorID = Authors.AuthorID
INNER JOIN Genre ON Books.GenreID = Genre.GenreID
INNER JOIN Publisher ON Publisher.PublisherID = Books.PublisherID
INNER JOIN OrderDetails ON OrderDetails.BookID = Books.BookID
INNER JOIN Orders ON Orders.OrderDetailID = OrderDetails.OrderDetailsID
INNER JOIN Customers ON Customers.CustomerID = Orders.CustomerID
WHERE Genre.GenreID = @GenreID 

)
GO


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[Func_CalculatePriceWithDiscount]
(
    @Price DECIMAL,
    @DiscountRate DECIMAL
)
RETURNS DECIMAL
AS 
BEGIN

DECLARE @calculatedAmount DECIMAL;
SET @calculatedAmount = @Price -(@Price * @DiscountRate / 100);

RETURN @calculatedAmount;
END
GO



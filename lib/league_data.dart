import './models/list.dart';
import 'package:flutter/material.dart';
import './models/team.dart';
//-------------------------------------------------leagueLIST---------------------------------------------------------------------------------
const LEAGUE_DATA = const [
  List(
    id: 'l1',
    name: 'La liga',
    nation: 'Spain',
    imageUrl: "https://worldsoccertalk.com/wp-content/uploads/2019/10/la-liga-upside-down-telemundo.jpg",
    color: Colors.green,
  ),
  List(
    id: 'l2',
    name: 'Premier league',
    nation: 'England',
    imageUrl: "https://resources.premierleague.com/premierleague/photo/2018/10/04/ed3353e1-89de-4d30-a2aa-f5464b3bdb29/epl-Logo-v3.jpg",
    color: Colors.blue,
  ),
  List(
    id: 'l3',
    name: 'Serie A',
    nation: 'Italy',
    imageUrl: "https://i.postimg.cc/qRFRk8y6/lega-serie-a-logo-2.jpg",
    color: Colors.yellow,
  ),
  List(
    id: 'l4',
    name: 'Bundesliga',
    nation: 'Germany',
    imageUrl: "https://mir-s3-cdn-cf.behance.net/project_modules/fs/e4e5fc99819069.5efb4b6397a93.png",
    color: Colors.red,
  ),
  List(
    id: 'l5',
    name: 'ligue 1 france',
    nation: 'Franch',
    imageUrl: "https://www.lanotiziasportiva.com/wp-content/uploads/2018/01/pronostici-ligue-1-19-20-21-gennaio-2018-consigli-scommesse-22-giornata-660x330.jpg",
    color: Colors.purple,
  ),
  List(
    id: 'l6',
    name: 'Primeira Liga',
    nation: 'Portugal',
    imageUrl: "https://media.contentapi.ea.com/content/dam/ea/fifa/fifa-20/team-of-the-season-so-far/common/leagues/minor/fifa20-totssf-liga-nos.png.adapt.crop191x100.1200w.png",
    color: Colors.indigo,
  ),
  List(
    id: 'l7',
    name: 'Eredivisie',
    nation: 'Netherlands',
    imageUrl: "https://tmw-storage.tccstatic.com/storage/tuttomercatoweb.com/img_notizie/thumb3/bfbe2b675f7ce39cc484f025f1064803-54007-95723157c8ebcac4750156d2b21ac04e.jpg",
    color: Colors.orange,
  ),
  List(
    id: 'l8',
    name: 'Azadegan',
    nation: 'Iran',
    imageUrl: "https://www.persianleague.com/images/thumbnails/images/remote/media.mehrnews.com/d/2020/07/24/4/3506460-fit-663x454.jpg_da39a3ee5e6b4b0d3255bfef95601890afd80709_da39a3ee5e6b4b0d3255bfef95601890afd80709",
    color: Colors.grey,
  ),
  List(
    id: 'l9',
    name: 'Segunda division',
    nation: 'Spain',
    imageUrl: "https://worldsoccertalk.com/wp-content/uploads/2019/10/la-liga-upside-down-telemundo.jpg",
    color: Colors.brown,
  ),
  List(
    id: 'l10',
    name: 'Categoría Primera A',
    nation: 'Colombia',
    imageUrl: "https://www.futbolenvivo.com.co/wp-content/uploads/2020/01/Prograacio%CC%81n-fecha-1-Liga-BetPlay-2020.jpg",
    color: Colors.cyanAccent,
  ),
  List(
    id: 'l11',
    name: 'Brasileirão Série A',
    nation: 'Brazil',
    imageUrl: "https://static-wp-tor15-prd.torcedores.com/wp-content/uploads/2020/08/classificacao-brasileirao.jpg",
    color: Colors.teal,
  ),
  List(
    id: 'l12',
    name: 'MLS',
    nation: 'USA',
    imageUrl: "https://chicago-mp7static.mlsdigital.net/images/25th-Season_1280x553.png?qnNfF_z6ZVg827mlfpt0_j2KRGZHA5BD",
    color: Colors.pink,
  ),
  List(
    id: 'l13',
    name: 'Russian Premier League',
    nation: 'Russia',
    imageUrl: "https://www.artlebedev.com/rpl/logo/rpl-logo-wide.png",
    color: Colors.lightGreenAccent,
  ),
  List(
    id: 'l14',
    name: 'A-League',
    nation: 'Australia',
    imageUrl: "https://www.perthglory.com.au/sites/per/files/2018-02/E-LEAGUE%20LOGO%20Official%20-%20cropped_1.jpg",
    color: Colors.amberAccent,
  ),
  List(
    id: 'l15',
    name: 'EFL Trophy',
    nation: 'England',
    imageUrl: "https://salfordcityfc.co.uk/wp-content/uploads/Sponsors/EFL-Trophy-Wall.png",
    color: Colors.blueGrey,
  ),
];
//--------------------------------------------------TeamLIST-----------------------------------------------------------------------------------
const DUMMY_TEAM = const [
  Team(
    id: "t1",
    league: ["l3"],
    name:"Juventus",
    imageUrl:
      'https://images.daznservices.com/di/library/GOAL/f6/8a/new-juventus-logo_ltar5e1hf5s612hr3iniq3831.png?t=-1461443087&quality=100',
    nation: "Italian",
    homeStadium: "Allianz Stadium",
  ),
  Team(
    id: "t2",
    league: ["l3"],
    name:"Inter",
    imageUrl:
    'https://www.inter.it/binaries/content/gallery/internazionale/photos/2021/04/19/comunicato_nuovo_logo.jpg/comunicato_nuovo_logo.jpg/internazionale%3Acinema',
    nation: "Italian",
    homeStadium: "giuseppe meazza",
  ),
  Team(
    id: "t3",
    league: ["l3"],
    name:"Milan",
    imageUrl:
    'https://besthqwallpapers.com/Uploads/12-2-2020/121667/thumb2-ac-milan-logo-italian-football-club-metal-emblem-red-black-metal-mesh-background-ac-milan.jpg',
    nation: "Italian",
    homeStadium: "San Siro",
  ),
  Team(
    id: "t4",
    league: ["l3"],
    name:"As Roma",
    imageUrl:
    'https://www.teahub.io/photos/full/49-497419_ssc-napoli-wallpaper-4k.jpg',
    nation: "Italian",
    homeStadium: "Stadio Olimpico",
  ),
  Team(
    id: "t5",
    league: ["l1"],
    name:"Barcelona",
    imageUrl:
    'https://p4.wallpaperbetter.com/wallpaper/639/159/622/soccer-fc-barcelona-logo-wallpaper-preview.jpg',
    nation: "Spanish",
    homeStadium: "Camp nou",
  ),
  Team(
    id: "t6",
    league: ["l1"],
    name:"RealMadrid",
    imageUrl:
    'https://lh3.googleusercontent.com/proxy/GmQschSWxKluUXqcZkQlY82le__4pORx0sU3702o697ziu86Cqbjn-Q-evAyQ1VGGSStFuWKAdnfvKDtvekaAtDUle_bCMCiitDvTWarIgtn1JrzgeWo53w=s0-d',
    nation: "Spanish",
    homeStadium: "santiago Bernabeu",
  ),
  Team(
    id: "t7",
    league: ["l1"],
    name:"Athletic de madrid",
    imageUrl:
    'https://i.pinimg.com/originals/cb/21/75/cb2175c0dfdea5b12af9975b47fda3e5.jpg',
    nation: "Spanish",
    homeStadium: "Wanda Metropolitano",
  ),
  Team(
    id: "t8",
    league: ["l2"],
    name:"Manchester united",
    imageUrl:
    'https://wallpaper.dog/large/5561302.jpg',
    nation: "England",
    homeStadium: "old trafford",
  ),
  Team(
    id: "t9",
    league: ["l2"],
    name:"Manchester city",
    imageUrl:
    'https://i.pinimg.com/originals/f8/b0/4e/f8b04edd66df52b4a01411af14aae086.jpg',
    nation: "England",
    homeStadium: "Etihad Stadium",
  ),
  Team(
    id: "t10",
    league: ["l2"],
    name:"Liverpool",
    imageUrl:
    'https://fantoken.news/wp-content/uploads/2021/01/Liverpool-FC-joins-Sorare.jpg',
    nation: "England",
    homeStadium: "Anfield",
  ),
  Team(
    id: "t11",
    league: ["l2"],
    name:"Arsenal",
    imageUrl:
    'https://pro2-bar-s3-cdn-cf1.myportfolio.com/f44a6a86-6cdb-4ac5-b205-003353cc5a9c/cece889c-256f-408e-8ba2-1aab1e41d022_rw_1920.jpg?h=602295230580e49d8210fcb45e58550a',
    nation: "England",
    homeStadium: "Emirates Stadium",
  ),
  Team(
    id: "t12",
    league: ["l4"],
    name:"Bayern Munich",
    imageUrl:
    'https://wallpaperaccess.com/full/4251633.jpg',
    nation: "Germany",
    homeStadium: "Allianz Arena",
  ),
  Team(
    id: "t13",
    league: ["l4"],
    name:"Dortmund",
    imageUrl:
    'https://wallpaperaccess.com/full/5842224.jpg',
    nation: "Germany",
    homeStadium: "Signal Iduna Park",
  ),
  Team(
    id: "t14",
    league: ["l5"],
    name:"PSG",
    imageUrl:
    'https://wallpaperaccess.com/full/2686009.jpg',
    nation: "french",
    homeStadium: "Parc des Princes",
  ),
  Team(
    id: "t15",
    league: ["l5"],
    name:"Olympique lyon",
    imageUrl:
    'https://i.pinimg.com/originals/a4/96/c6/a496c6dc3c4791d859fb22478ea53c89.png',
    nation: "french",
    homeStadium: "Groupama",
  ),
  Team(
    id: "t16",
    league: ["l6"],
    name:"Porto",
    imageUrl:
    'https://ak.picdn.net/shutterstock/videos/1015023160/thumb/1.jpg',
    nation: "portugees",
    homeStadium: "Estádio do Dragão",
  ),
  Team(
    id: "t17",
    league: ["l6"],
    name:"Benfica",
    imageUrl:
    'https://www.leagueteamupdates.com/wp-content/uploads/2017/12/Sport-Lisboa-e-Benfica-Team.png',
    nation: "portugees",
    homeStadium: "Estádio da Luz",
  ),
  Team(
    id: "t18",
    league: ["l6"],
    name:"Sporting",
    imageUrl:
    'https://i.pinimg.com/originals/56/fc/13/56fc13f01f91721bfe68d7f48976d62c.png',
    nation: "portugees",
    homeStadium: "Estádio José Alvalade",
  ),
  Team(
    id: "t19",
    league: ["l7"],
    name:"Ajax",
    imageUrl:
    'https://www.wallpapertip.com/wmimgs/97-973274_rode-ajax-amsterdam-wallpaper-met-logo-in-het.jpg',
    nation: "Netherlands",
    homeStadium: "Johan Cruyff Arena",
  ),
  Team(
    id: "t20",
    league: ["l8"],
    name:"Esteghlal",
    imageUrl:
    'https://wallpaperaccess.com/full/1892392.jpg',
    nation: "Iranian",
    homeStadium: "Azadi Complex",
  ),
  Team(
    id: "t21",
    league: ["l8"],
    name:"Persepolis",
    imageUrl:
    'https://besthqwallpapers.com/Uploads/8-5-2018/51696/thumb2-persepolis-fc-4k-silk-texture-logo-emblem.jpg',
    nation: "Iranian",
    homeStadium: "Azadi Complex",

  ),
  Team(
    id: "t22",
    league: ["l8"],
    name:"Sepahan",
    imageUrl:
    'https://besthqwallpapers.com/Uploads/19-6-2018/56273/thumb2-foolad-mobarakeh-sepahan-sc-4k-logo-leather-texture-iranian-football-club.jpg',
    nation: "Iranian",
    homeStadium: "Naghsh-e-Jahan Stadium",

  ),
  Team(
    id: "t23",
    league: ["l9"],
    name:"Borcelona B",
    imageUrl:
    'https://p4.wallpaperbetter.com/wallpaper/639/159/622/soccer-fc-barcelona-logo-wallpaper-preview.jpg',
    nation: "Spanish",
    homeStadium: "Estadi Johan Cruyff",
  ),
  Team(
    id: "t24",
    league: ["l10"],
    name:"Atlético Nacional",
    imageUrl:
    'https://files.antena2.com/antena2/public/styles/imagen_despliegue/public/2019-05/nacional_camiseta_0.jpg?itok=-9Q33lir',
    nation: "Chile",
    homeStadium: "Estadio Atanasio Girardot",
  ),
  Team(
    id: "t25",
    league: ["l10"],
    name:"Atlético Junior",
    imageUrl:
    'https://besthqwallpapers.com/img/original/52275/club-deportivo-popular-junior-atletico-junior-fc-4k-logo-colombian-football-club.jpg',
    nation: "Chile",
    homeStadium: "Estadio Metropolitano Roberto Meléndez",
  ),
  Team(
    id: "t26",
    league: ["l11"],
    name:"Santos",
    imageUrl:
    'https://coolwallpapers.me/picsup/5043972-emblem-logo-santos-fc-soccer.jpg',
    nation: "Brazilian",
    homeStadium: "Estadio Urbano Caldeira",
  ),
  Team(
    id: "t27",
    league: ["l11"],
    name:"Atletico Mineiro",
    imageUrl:
    'https://img5.goodfon.com/wallpaper/nbig/8/cb/wallpaper-sport-logo-football-atletico-mineiro-brazilian-ser.jpg',
    nation: "Brazilian",
    homeStadium: "Estádio Mineirão",
  ),
  Team(
    id: "t28",
    league: ["l12"],
    name:"LA galaxy",
    imageUrl:
    'https://c4.wallpaperflare.com/wallpaper/874/812/17/soccer-la-galaxy-emblem-logo-mls-hd-wallpaper-preview.jpg',
    nation: "American",
    homeStadium: "Dignity Health Sports Park",
  ),
  Team(
    id: "t29",
    league: ["l13"],
    name:"Zenit",
    imageUrl:
    'https://i.pinimg.com/originals/fe/cf/de/fecfde55477ddc37dac242cacb2c93aa.jpg',
    nation: "Russian",
    homeStadium: "Gazprom Arena",
  ),
  Team(
    id: "t30",
    league: ["l13"],
    name:"Rostov",
    imageUrl:
    'https://besthqwallpapers.com/Uploads/28-10-2017/26043/thumb2-fc-rostov-4k-russian-football-club-logo-rostov-emblem.jpg',
    nation: "Russian",
    homeStadium: "Rostov Arena",
  ),
  Team(
    id: "t31",
    league: ["l14"],
    name:"Melbourne City",
    imageUrl:
    'https://i.pinimg.com/originals/0b/43/ca/0b43cacc0ecdd7486f32cdc1ff5786f9.jpg',
    nation: "Australian",
    homeStadium: "AAMI Park",
  ),
  Team(
    id: "t32",
    league: ["l15"],
    name:"Middlesbrough",
    imageUrl:
    'https://www.mfc.co.uk/sites/default/files/styles/focal_header_image_standard/public/image/2018-05/Generic_hero_169.jpg?h=5df13b21&itok=non69fs2',
     nation: "England",
    homeStadium: "Riverside Stadium",
  ),
];

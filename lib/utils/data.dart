//Constellation class
class Constellations {
  final String name;
  final String imgAsset;
  final String brightestStar;
  final String meaning;
  final String month;

  Constellations(
      this.name, this.imgAsset, this.brightestStar, this.meaning, this.month);

  String get combine => '$name $brightestStar';
}

//Constellation List
List<Constellations> constellationList = [
  Constellations("Andromeda", "assets/constellation_imgs/Andromeda_IAU.svg",
      "Alpheratz", "The Chained Maiden", "November"),
  Constellations("Antlia", "assets/constellation_imgs/Antlia_IAU.svg",
      "α Antilae", "Air Pump", "April"),
  Constellations("Apus", "assets/constellation_imgs/Apus_IAU.svg", "α Apodis",
      "Bird of Paradise", "July"),
  Constellations("Aquarius", "assets/constellation_imgs/Aquarius_IAU.svg",
      "ß Aquarii", "Water Bearer", "October"),
  Constellations("Aquilla", "assets/constellation_imgs/Aquila_IAU.svg",
      "Altair", "Eagle", "August"),
  Constellations("Ara", "assets/constellation_imgs/Ara_IAU.svg", "ß Arae",
      "Altar", "July"),
  Constellations("Aries", "assets/constellation_imgs/Aries_IAU.svg", "Hamal",
      "Ram", "December"),
  Constellations("Auriga", "assets/constellation_imgs/Auriga_IAU.svg",
      "Capella", "Charioteer", "March"),
  Constellations("Bootes", "assets/constellation_imgs/Bootes_IAU.svg",
      "Arcturus", "Herdsman", "June"),
  Constellations("Caelum", "assets/constellation_imgs/Caelum_IAU.svg",
      "α Caeli", "Chisel", "January"),
  Constellations(
      "Camelopardalis",
      "assets/constellation_imgs/Camelopardalis_IAU.svg",
      "ß Camelopardalis",
      "Giraffe",
      "February"),
  Constellations("Cancer", "assets/constellation_imgs/Cancer_IAU.svg",
      "ß Cancri", "Crab", "March"),
  Constellations(
      "Canes Venatici",
      "assets/constellation_imgs/Canes_Venatici_IAU.svg",
      "Cor Caroli",
      "Hunting Dogs",
      "May"),
  Constellations("Canis Major", "assets/constellation_imgs/Canis_Major_IAU.svg",
      "Sirius", "Greater Dog", "February"),
  Constellations("Canis Minor", "assets/constellation_imgs/Canis_Minor_IAU.svg",
      "Procyron", "Lesser Dog", "March"),
  Constellations("Capricornus", "assets/constellation_imgs/Capricornus_IAU.svg",
      "δ Capricorni", "Sea Goat", "September"),
  Constellations("Carina", "assets/constellation_imgs/Carina_IAU.svg",
      "Canopus", "Keel", "March"),
  Constellations("Cassiopeia", "assets/constellation_imgs/Cassiopeia_IAU.svg",
      "α Cassiopeiae", "Cassiopeia (Mythological Character)", "November"),
  Constellations("Centaurus", "assets/constellation_imgs/Centaurus_IAU.svg",
      "α Centauri", "Centaur", "May"),
  Constellations("Cepheus", "assets/constellation_imgs/Cepheus_IAU.svg",
      "α Cephei", "Cepheus", "November"),
  Constellations("Cetus", "assets/constellation_imgs/Cetus_IAU.svg", "ß Ceti",
      "Sea Monster/Whale", "November"),
  Constellations(
      "Chameleon",
      "imgAssetassets/constellation_imgs/Chameleon_IAU.svg",
      "α Chameleontis",
      "Chameleon",
      "April"),
  Constellations("Circinus", "assets/constellation_imgs/Circinus_IAU.svg",
      "α Circini", "Compasses", "July"),
  Constellations("Columba", "assets/constellation_imgs/Columba_IAU.svg",
      "α Columbae", "Dove", "February"),
  Constellations(
      "Coma Berenices",
      "assets/constellation_imgs/Coma_Berenices_IAU.svg",
      "ß Comae Berenices",
      "Berenice's Hair",
      "May"),
  Constellations(
      "Corona Australis",
      "assets/constellation_imgs/Corona_Australis_IAU.svg",
      "α Coronae Australis",
      "Southern Crown",
      "August"),
  Constellations(
      "Corona Borealis",
      "assets/constellation_imgs/Columba_Borealis_IAU.svg",
      "α Coronae Borealis",
      "Northern Crown",
      "July"),
  Constellations("Corvus", "assets/constellation_imgs/Corvus_IAU.svg",
      "Γ Corvi", "Crow", "May"),
  Constellations("Crater", "assets/constellation_imgs/Crater_IAU.svg",
      "δ Crateris", "Cup", "April"),
  Constellations("Crux", "assets/constellation_imgs/Crux_IAU.svg", "Acrux",
      "Southern Cross", "May"),
  Constellations("Cygnus", "assets/constellation_imgs/Cygnus_IAU.svg", "Deneb",
      "Swan or Northern Cross", "September"),
  Constellations("Delphinus", "assets/constellation_imgs/Delphinus_IAU.svg",
      "ß Delphini", "Dolphin", "September"),
  Constellations("Dorado", "assets/constellation_imgs/Dorado_IAU.svg",
      "α Doradus", "Dolphinfish", "September"),
  Constellations("Draco", "assets/constellation_imgs/Columba_IAU.svg",
      "Γ Draconis", "Dragon", "July"),
  Constellations("Equules", "assets/constellation_imgs/Equulues_IAU.svg",
      "α Equulei", "Pony", "September"),
  Constellations("Eridanus", "assets/constellation_imgs/Eridanus_IAU.svg",
      "Achemar", "River Aredanus", "December"),
  Constellations("Fornax", "assets/constellation_imgs/Fornax_IAU.svg",
      "α Fornacis", "Chemical Furnace", "December"),
  Constellations("Gemini", "assets/constellation_imgs/Gemini_IAU.svg", "Pollux",
      "Twins", "February"),
  Constellations("Grus", "assets/constellation_imgs/Grus_IAU.svg", "α Gruis",
      "Crane", "October"),
  Constellations("Hercules", "assets/constellation_imgs/Hercules_IAU.svg",
      "ß Hercules", "Hercules", "July"),
  Constellations("Horologium", "assets/constellation_imgs/Horologium_IAU.svg",
      "α Horologii", "Pendulum Clock", "December"),
  Constellations("Hydra", "assets/constellation_imgs/hydra_IAU.svg", "Alphard",
      "Hydra", "April"),
  Constellations("Hydrus", "assets/constellation_imgs/Hydrus_IAU.svg",
      "ß Hydri", "Lesser Water Snake", "November"),
  Constellations("Indus", "assets/constellation_imgs/Indus_IAU.svg", "α Indi",
      "Indian", "September"),
  Constellations("Lacerta", "assets/constellation_imgs/Lacerta_IAU.svg",
      "α Lacartae", "Lizard", "October"),
  Constellations("Leo", "assets/constellation_imgs/Leo_IAU.svg", "Regulus",
      "Lion", "April"),
  Constellations("Leo Minor", "assets/constellation_imgs/Leo_Minor_IAU.svg",
      "46 Leonis Minoris", "Lesser Lion", "April"),
  Constellations("Lepus", "assets/constellation_imgs/Lepus_IAU.svg",
      "α Leopris", "Hare", "January"),
  Constellations("Libra", "assets/constellation_imgs/Libra_IAU.svg", "ß Librae",
      "Balance", "June"),
  Constellations("Lupus", "assets/constellation_imgs/Lupus_IAU.svg", "α Lupi",
      "Wolf", "June"),
  Constellations("Lynx", "assets/constellation_imgs/Lynx_IAU.svg", "α Lyncis",
      "Lynx", "March"),
  Constellations("Lyra", "assets/constellation_imgs/Lyra_IAU.svg", "Vega",
      "Lyre/Harp", "August"),
  Constellations("Mensa", "assets/constellation_imgs/Mensa_IAU.svg", "α Mensae",
      "Table Mountain (South Africa)", "January"),
  Constellations(
      "Microscopium",
      "assets/constellation_imgs/Microscopium_IAU.svg",
      "Γ Microscopii",
      "Microscope",
      "September"),
  Constellations("Monoceros", "assets/constellation_imgs/Monoceros_IAU.svg",
      "ß Monocerotis", "Unicorn", "February"),
  Constellations("Musca", "assets/constellation_imgs/Musca_IAU.svg", "α Muscae",
      "Fly", "May"),
  Constellations("Norma", "assets/constellation_imgs/Norma_IAU.svg", "Γ Normae",
      "Carpenter's Level", "July"),
  Constellations("Octans", "assets/constellation_imgs/Octans_IAU.svg",
      "v Octantis", "Octant", "October"),
  Constellations("Ophiuchus", "assets/constellation_imgs/Ophiuchus_IAU.svg",
      "α Ophiuchi", "Serpent Bearer", "July"),
  Constellations("Orion", "assets/constellation_imgs/Orion_IAU.svg", "Regel",
      "Orion (Hunter)", "January"),
  Constellations("Pavo", "assets/constellation_imgs/Pavo_IAU.svg", "α Pavonis",
      "Peacock", "August"),
  Constellations("Pegasus", "assets/constellation_imgs/Pegasus_IAU.svg",
      "ε Pegasi", "Pegasus", "October"),
  Constellations("Perseus", "assets/constellation_imgs/Perseus_IAU.svg",
      "α Persei", "Perseus", "December"),
  Constellations("Phoenix", "assets/constellation_imgs/Phoenix_IAU.svg",
      "α Phoenices", "Phoenix", "November"),
  Constellations("Pictor", "assets/constellation_imgs/Pictor_IAU.svg",
      "α Pictoris", "Easel", "January"),
  Constellations("Pisces", "assets/constellation_imgs/Pisces_IAU.svg",
      "╖ Piscium", "Fishes", "November"),
  Constellations(
      "Pisces Austrinus",
      "assets/constellation_imgs/Piscis_Austrinus_IAU.svg",
      "FomalHaut",
      "Southern Fishes",
      "October"),
  Constellations("Puppis", "assets/constellation_imgs/Puppis_IAU.svg",
      "╢ Puppis", "Poop Deck", "February"),
  Constellations("Pyxis", "assets/constellation_imgs/Pyxis_IAU.svg",
      "α Pyxidis", "Manner's Compass", "March"),
  Constellations("Reticulum", "assets/constellation_imgs/Reticulum_IAU.svg",
      "α Reticuli", "Eyepiece Graticule", "January"),
  Constellations("Sagitta", "assets/constellation_imgs/Sagitta_IAU.svg",
      "Γ Sagittae", "Arrow", "August"),
  Constellations("Sagittarius", "assets/constellation_imgs/Sagittarius_IAU.svg",
      "ε Sagittarii", "Archer", "August"),
  Constellations("Scorpius", "assets/constellation_imgs/Scorpius_IAU.svg",
      "Antares", "Scorpion", "July"),
  Constellations("Sculptor", "assets/constellation_imgs/Sculptor_IAU.svg",
      "α Sculptoris", "Sculptor", "November"),
  Constellations("Scutum", "assets/constellation_imgs/Scutum_IAU.svg",
      "α Scuti", "Shield", "August"),
  Constellations("Serpens", "assets/constellation_imgs/Serpens_Caput_IAU.svg",
      "α Serpentis", "Snake", "July"),
  Constellations("Sextans", "assets/constellation_imgs/Sextans_IAU.svg",
      "α Sextantis", "Sextant", "April"),
  Constellations("Taurus", "assets/constellation_imgs/Taurus_IAU.svg",
      "Aldebaran", "Bull", "January"),
  Constellations("Telescopium", "assets/constellation_imgs/Telescopium_IAU.svg",
      "α Telescopii", "Telescope", "August"),
  Constellations(
      "Triangulum Australe",
      "assets/constellation_imgs/Triangulum_Australe_IAU.svg",
      "α Trainguli Australis",
      "Southern Triangle",
      "July"),
  Constellations("Triangulum", "assets/constellation_imgs/Triangulum_IAU.svg",
      "ß Triangulii", "Triangle", "December"),
  Constellations("Tucana", "assets/constellation_imgs/Tucana_IAU.svg",
      "α Tucanae", "Toucan", "November"),
  Constellations("Ursa Major", "assets/constellation_imgs/Ursa_Major_IAU.svg",
      "ε Ursae Majoris", "Great Bear", "April"),
  Constellations("Ursa Minor", "assets/constellation_imgs/Ursa_Minor_IAU.svg",
      "Polaris", "Lesser Bear", "June"),
  Constellations("Vela", "assets/constellation_imgs/Vela_IAU.svg", "Γ Velorum",
      "Salts", "March"),
  Constellations("Virgo", "assets/constellation_imgs/Virgo_IAU.svg", "Spica",
      "Virgin or Maiden", "May"),
  Constellations("Volans", "assets/constellation_imgs/Volans_IAU.svg",
      "ß Volantis", "Flying Fish", "March"),
  Constellations("Vulpecula", "assets/constellation_imgs/Vulpecula_IAU.svg",
      "α Vulpeculae", "Fox", "September")
];

//AssetConstants
class AssetConstants {
  static const String splashbg = "assets/wallpapers/splash-bg.jpg";
  static const String homebg = "assets/wallpapers/home-bg.jpg";
  static const String eclipsebg = "assets/wallpapers/eclipse-bg.jpg";
  static const String apodImg = "assets/icons/APOD-img.png";
  static const String constellationImg = "assets/icons/constellation-img.png";
  static const String eclipseImg = "assets/icons/eclipse-img.png";
  static const String mapsImg = "assets/icons/maps-img.png";
  static const String moonImg = "assets/icons/moon-img.png";
  static const String sunImg = "assets/icons/sun-img.png";
  static const String apod = "assets/apod/apod.jpg";
  static const String earthImg = "assets/icons/earth-img.png";
  static const String marsImg = "assets/icons/mars-img.png";
  static const String solarEclipse = "assets/eclipses/solar-eclipse.png";
  static const String lunarEclipse = "assets/eclipses/lunar-eclipse.png";
}

//String constants
class StringConstants {
  static const String apodDetails =
      "Not the James Webb Space Telescope's latest view of a distant galactic nebula, this cloud of gas and dust dazzled spacecoast skygazers on March 3. The telephoto snapshot was taken minutes after the launch of a Falcon 9 rocket on the SpaceX Crew-8 mission, to the International Space Station. It captures plumes and exhaust from the separated first and second stage, a drifting Rorschach pattern in dark evening skies. The bright spot near bottom center within the stunning terrestrial nebulosity is the second stage engine firing to carry 4 humans to space in the Crew Dragon spacecraft Endeavour. In sharp silhouette just above it is the Falcon 9 first stage booster orienting itself for return to a landing zone at Cape Canaveral, planet Earth. This reuseable first stage booster was making its first flight. But the Crew Dragon Endeavour capsule has flown humans to low Earth orbit and back again 4 times before. Endeavour, as a name for a spacecraft, has also seen reuse, christening retired Space Shuttle Endeavour and the Apollo 15 command module.";
  static const String solarEclipse =
      "A solar eclipse occurs when the Moon passes between Earth and the Sun, thereby obscuring the view of the Sun from a small part of Earth, totally or partially. Such an alignment occurs approximately every six months, during the eclipse season in its new moon phase, when the Moon's orbital plane is closest to the plane of Earth's orbit. In a total eclipse, the disk of the Sun is fully obscured by the Moon. In partial and annular eclipses, only part of the Sun is obscured. Unlike a lunar eclipse, which may be viewed from anywhere on the night side of Earth, a solar eclipse can only be viewed from a relatively small area of the world. As such, although total solar eclipses occur somewhere on Earth every 18 months on average, they recur at any given place only once every 360 to 410 years.";
  static const String lunarEclipse =
      "A lunar eclipse is an astronomical event that occurs when the Moon moves into the Earth's shadow, causing the Moon to be darkened. Such an alignment occurs during an eclipse season, approximately every six months, during the full moon phase, when the Moon's orbital plane is closest to the plane of the Earth's orbit. \nThis can occur only when the Sun, Earth, and Moon are exactly or very closely aligned (in syzygy) with Earth between the other two, which can happen only on the night of a full moon when the Moon is near either lunar node. The type and length of a lunar eclipse depend on the Moon's proximity to the lunar node. \nWhen the Moon is totally eclipsed by the Earth (a \"deep eclipse\"), it takes on a reddish color that is caused by the planet when it completely blocks direct sunlight from reaching the Moon's surface, as the only light that is reflected from the lunar surface is what has been refracted by the Earth's atmosphere. This light appears reddish due to the Rayleigh scattering of blue light, the same reason sunrises and sunsets are more orange than during the day.";
  static const String mapInfo = "This page will redirect you to the HTML format of the Maps provided by NASA for different bodies. \nCurrently the maps for Moon and Mars are available. \nMore Maps will be available soon.";
}

//Class to store the location of theh device
class Location {
  String latitude;
  String longitude;
  Location(this.latitude, this.longitude);
}
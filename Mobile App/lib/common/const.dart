class Country {
  final int id;
  final String name;

  Country({required this.id, required this.name});
}

class Player {
  final int Index;
  final String playerName;
  final String nation;
  Player({required this.Index, required this.playerName, required this.nation});
}

// List<Country> COUNTRIES = [
//   Country(id: 0, name: 'Abkhazia'),
//   Country(id: 1, name: 'Afghanistan'),
//   Country(id: 2, name: 'Albania'),
//   Country(id: 3, name: 'Alderney'),
//   Country(id: 4, name: 'Algeria'),
//   Country(id: 5, name: 'American Samoa'),
//   Country(id: 6, name: 'Andorra'),
//   Country(id: 7, name: 'Angola'),
//   Country(id: 8, name: 'Anguilla'),
//   Country(id: 9, name: 'Antigua and Barbuda'),
//   Country(id: 10, name: 'Arameans Suryoye'),
//   Country(id: 11, name: 'Argentina'),
//   Country(id: 12, name: 'Armenia'),
//   Country(id: 13, name: 'Artsakh'),
//   Country(id: 14, name: 'Aruba'),
//   Country(id: 15, name: 'Australia'),
//   Country(id: 16, name: 'Austria'),
//   Country(id: 17, name: 'Azerbaijan'),
//   Country(id: 18, name: 'Bahamas'),
//   Country(id: 19, name: 'Bahrain'),
//   Country(id: 20, name: 'Bangladesh'),
//   Country(id: 21, name: 'Barawa'),
//   Country(id: 22, name: 'Barbados'),
//   Country(id: 23, name: 'Basque Country'),
//   Country(id: 24, name: 'Belarus'),
//   Country(id: 25, name: 'Belgium'),
//   Country(id: 26, name: 'Belize'),
//   Country(id: 27, name: 'Bermuda'),
//   Country(id: 28, name: 'Bhutan'),
//   Country(id: 29, name: 'Biafra'),
//   Country(id: 30, name: 'Bolivia'),
//   Country(id: 31, name: 'Bonaire'),
//   Country(id: 32, name: 'Bosnia and Herzegovina'),
//   Country(id: 33, name: 'Botswana'),
//   Country(id: 34, name: 'Brazil'),
//   Country(id: 35, name: 'British Virgin Islands'),
//   Country(id: 36, name: 'Brittany'),
//   Country(id: 37, name: 'Brunei'),
//   Country(id: 38, name: 'Bulgaria'),
//   Country(id: 39, name: 'Burkina Faso'),
//   Country(id: 40, name: 'Burundi'),
//   Country(id: 41, name: 'Cambodia'),
//   Country(id: 42, name: 'Cameroon'),
//   Country(id: 43, name: 'Canada'),
//   Country(id: 44, name: 'Cape Verde'),
//   Country(id: 45, name: 'Cascadia'),
//   Country(id: 46, name: 'Catalonia'),
//   Country(id: 47, name: 'Cayman Islands'),
//   Country(id: 48, name: 'Central African Republic'),
//   Country(id: 49, name: 'Central Spain'),
//   Country(id: 50, name: 'Chad'),
//   Country(id: 51, name: 'Chagos Islands'),
//   Country(id: 52, name: 'Chameria'),
//   Country(id: 53, name: 'Chile'),
//   Country(id: 54, name: 'China PR'),
//   Country(id: 55, name: 'Colombia'),
//   Country(id: 56, name: 'Comoros'),
//   Country(id: 57, name: 'Congo'),
//   Country(id: 58, name: 'Cook Islands'),
//   Country(id: 59, name: 'Corsica'),
//   Country(id: 60, name: 'Costa Rica'),
//   Country(id: 61, name: 'County of Nice'),
//   Country(id: 62, name: 'Croatia'),
//   Country(id: 63, name: 'Cuba'),
//   Country(id: 64, name: 'Curaçao'),
//   Country(id: 65, name: 'Cyprus'),
//   Country(id: 66, name: 'Czech Republic'),
//   Country(id: 67, name: 'Czechoslovakia'),
//   Country(id: 68, name: 'DR Congo'),
//   Country(id: 69, name: 'Darfur'),
//   Country(id: 70, name: 'Denmark'),
//   Country(id: 71, name: 'Djibouti'),
//   Country(id: 72, name: 'Dominica'),
//   Country(id: 73, name: 'Dominican Republic'),
//   Country(id: 74, name: 'Ecuador'),
//   Country(id: 75, name: 'Egypt'),
//   Country(id: 76, name: 'El Salvador'),
//   Country(id: 77, name: 'Ellan Vannin'),
//   Country(id: 78, name: 'England'),
//   Country(id: 79, name: 'Equatorial Guinea'),
//   Country(id: 80, name: 'Eritrea'),
//   Country(id: 81, name: 'Estonia'),
//   Country(id: 82, name: 'Eswatini'),
//   Country(id: 83, name: 'Ethiopia'),
//   Country(id: 84, name: 'Falkland Islands'),
//   Country(id: 85, name: 'Faroe Islands'),
//   Country(id: 86, name: 'Felvidék'),
//   Country(id: 87, name: 'Fiji'),
//   Country(id: 88, name: 'Finland'),
//   Country(id: 89, name: 'France'),
//   Country(id: 90, name: 'French Guiana'),
//   Country(id: 91, name: 'Frøya'),
//   Country(id: 92, name: 'Gabon'),
//   Country(id: 93, name: 'Galicia'),
//   Country(id: 94, name: 'Gambia'),
//   Country(id: 95, name: 'Georgia'),
//   Country(id: 96, name: 'German DR'),
//   Country(id: 97, name: 'Germany'),
//   Country(id: 98, name: 'Ghana'),
//   Country(id: 99, name: 'Gibraltar'),
//   Country(id: 100, name: 'Gotland'),
//   Country(id: 101, name: 'Gozo'),
//   Country(id: 102, name: 'Greece'),
//   Country(id: 103, name: 'Greenland'),
//   Country(id: 104, name: 'Grenada'),
//   Country(id: 105, name: 'Guadeloupe'),
//   Country(id: 106, name: 'Guam'),
//   Country(id: 107, name: 'Guatemala'),
//   Country(id: 108, name: 'Guernsey'),
//   Country(id: 109, name: 'Guinea'),
//   Country(id: 110, name: 'Guinea-Bissau'),
//   Country(id: 111, name: 'Guyana'),
//   Country(id: 112, name: 'Haiti'),
//   Country(id: 113, name: 'Hitra'),
//   Country(id: 114, name: 'Hmong'),
//   Country(id: 115, name: 'Honduras'),
//   Country(id: 116, name: 'Hong Kong'),
//   Country(id: 117, name: 'Hungary'),
//   Country(id: 118, name: 'Iceland'),
//   Country(id: 119, name: 'India'),
//   Country(id: 120, name: 'Indonesia'),
//   Country(id: 121, name: 'Iran'),
//   Country(id: 122, name: 'Iraq'),
//   Country(id: 123, name: 'Iraqi Kurdistan'),
//   Country(id: 124, name: 'Isle of Man'),
//   Country(id: 125, name: 'Isle of Wight'),
//   Country(id: 126, name: 'Israel'),
//   Country(id: 127, name: 'Italy'),
//   Country(id: 128, name: 'Ivory Coast'),
//   Country(id: 129, name: 'Jamaica'),
//   Country(id: 130, name: 'Japan'),
//   Country(id: 131, name: 'Jersey'),
//   Country(id: 132, name: 'Jordan'),
//   Country(id: 133, name: 'Kabylia'),
//   Country(id: 134, name: 'Kazakhstan'),
//   Country(id: 135, name: 'Kenya'),
//   Country(id: 136, name: 'Kernow'),
//   Country(id: 137, name: 'Kiribati'),
//   Country(id: 138, name: 'Kosovo'),
//   Country(id: 139, name: 'Kuwait'),
//   Country(id: 140, name: 'Kyrgyzstan'),
//   Country(id: 141, name: 'Kárpátalja'),
//   Country(id: 142, name: 'Laos'),
//   Country(id: 143, name: 'Latvia'),
//   Country(id: 144, name: 'Lebanon'),
//   Country(id: 145, name: 'Lesotho'),
//   Country(id: 146, name: 'Liberia'),
//   Country(id: 147, name: 'Libya'),
//   Country(id: 148, name: 'Liechtenstein'),
//   Country(id: 149, name: 'Lithuania'),
//   Country(id: 150, name: 'Luxembourg'),
//   Country(id: 151, name: 'Macau'),
//   Country(id: 152, name: 'Madagascar'),
//   Country(id: 153, name: 'Malawi'),
//   Country(id: 154, name: 'Malaysia'),
//   Country(id: 155, name: 'Maldives'),
//   Country(id: 156, name: 'Mali'),
//   Country(id: 157, name: 'Malta'),
//   Country(id: 158, name: 'Manchukuo'),
//   Country(id: 159, name: 'Martinique'),
//   Country(id: 160, name: 'Matabeleland'),
//   Country(id: 161, name: 'Mauritania'),
//   Country(id: 162, name: 'Mauritius'),
//   Country(id: 163, name: 'Mayotte'),
//   Country(id: 164, name: 'Menorca'),
//   Country(id: 165, name: 'Mexico'),
//   Country(id: 166, name: 'Micronesia'),
//   Country(id: 167, name: 'Moldova'),
//   Country(id: 168, name: 'Monaco'),
//   Country(id: 169, name: 'Mongolia'),
//   Country(id: 170, name: 'Montenegro'),
//   Country(id: 171, name: 'Montserrat'),
//   Country(id: 172, name: 'Morocco'),
//   Country(id: 173, name: 'Mozambique'),
//   Country(id: 174, name: 'Myanmar'),
//   Country(id: 175, name: 'Namibia'),
//   Country(id: 176, name: 'Nepal'),
//   Country(id: 177, name: 'Netherlands'),
//   Country(id: 178, name: 'New Caledonia'),
//   Country(id: 179, name: 'New Zealand'),
//   Country(id: 180, name: 'Nicaragua'),
//   Country(id: 181, name: 'Niger'),
//   Country(id: 182, name: 'Nigeria'),
//   Country(id: 183, name: 'North Korea'),
//   Country(id: 184, name: 'North Macedonia'),
//   Country(id: 185, name: 'North Vietnam'),
//   Country(id: 186, name: 'Northern Cyprus'),
//   Country(id: 187, name: 'Northern Ireland'),
//   Country(id: 188, name: 'Northern Mariana Islands'),
//   Country(id: 189, name: 'Norway'),
//   Country(id: 190, name: 'Occitania'),
//   Country(id: 191, name: 'Oman'),
//   Country(id: 192, name: 'Orkney'),
//   Country(id: 193, name: 'Padania'),
//   Country(id: 194, name: 'Pakistan'),
//   Country(id: 195, name: 'Palestine'),
//   Country(id: 196, name: 'Panama'),
//   Country(id: 197, name: 'Panjab'),
//   Country(id: 198, name: 'Papua New Guinea'),
//   Country(id: 199, name: 'Paraguay'),
//   Country(id: 200, name: 'Parishes of Jersey'),
//   Country(id: 201, name: 'Peru'),
//   Country(id: 202, name: 'Philippines'),
//   Country(id: 203, name: 'Poland'),
//   Country(id: 204, name: 'Portugal'),
//   Country(id: 205, name: 'Provence'),
//   Country(id: 206, name: 'Puerto Rico'),
//   Country(id: 207, name: 'Qatar'),
//   Country(id: 208, name: 'Raetia'),
//   Country(id: 209, name: 'Republic of Ireland'),
//   Country(id: 210, name: 'Rhodes'),
//   Country(id: 211, name: 'Romani people'),
//   Country(id: 212, name: 'Romania'),
//   Country(id: 213, name: 'Russia'),
//   Country(id: 214, name: 'Rwanda'),
//   Country(id: 215, name: 'Réunion'),
//   Country(id: 216, name: 'Saare County'),
//   Country(id: 217, name: 'Saarland'),
//   Country(id: 218, name: 'Saint Helena'),
//   Country(id: 219, name: 'Saint Kitts and Nevis'),
//   Country(id: 220, name: 'Saint Lucia'),
//   Country(id: 221, name: 'Saint Martin'),
//   Country(id: 222, name: 'Saint Pierre and Miquelon'),
//   Country(id: 223, name: 'Saint Vincent and the Grenadines'),
//   Country(id: 224, name: 'Samoa'),
//   Country(id: 225, name: 'San Marino'),
//   Country(id: 226, name: 'Sark'),
//   Country(id: 227, name: 'Saudi Arabia'),
//   Country(id: 228, name: 'Scotland'),
//   Country(id: 229, name: 'Senegal'),
//   Country(id: 230, name: 'Serbia'),
//   Country(id: 231, name: 'Seychelles'),
//   Country(id: 232, name: 'Shetland'),
//   Country(id: 233, name: 'Sierra Leone'),
//   Country(id: 234, name: 'Singapore'),
//   Country(id: 235, name: 'Sint Maarten'),
//   Country(id: 236, name: 'Slovakia'),
//   Country(id: 237, name: 'Slovenia'),
//   Country(id: 238, name: 'Solomon Islands'),
//   Country(id: 239, name: 'Somalia'),
//   Country(id: 240, name: 'Somaliland'),
//   Country(id: 241, name: 'South Africa'),
//   Country(id: 242, name: 'South Korea'),
//   Country(id: 243, name: 'South Ossetia'),
//   Country(id: 244, name: 'South Sudan'),
//   Country(id: 245, name: 'Spain'),
//   Country(id: 246, name: 'Sri Lanka'),
//   Country(id: 247, name: 'Sudan'),
//   Country(id: 248, name: 'Suriname'),
//   Country(id: 249, name: 'Sweden'),
//   Country(id: 250, name: 'Switzerland'),
//   Country(id: 251, name: 'Syria'),
//   Country(id: 252, name: 'Székely Land'),
//   Country(id: 253, name: 'Sápmi'),
//   Country(id: 254, name: 'São Tomé and Príncipe'),
//   Country(id: 255, name: 'Tahiti'),
//   Country(id: 256, name: 'Taiwan'),
//   Country(id: 257, name: 'Tajikistan'),
//   Country(id: 258, name: 'Tamil Eelam'),
//   Country(id: 259, name: 'Tanzania'),
//   Country(id: 260, name: 'Thailand'),
//   Country(id: 261, name: 'Tibet'),
//   Country(id: 262, name: 'Timor-Leste'),
//   Country(id: 263, name: 'Togo'),
//   Country(id: 264, name: 'Tonga'),
//   Country(id: 265, name: 'TrinCountry(idad and Tobago'),
//   Country(id: 266, name: 'Tunisia'),
//   Country(id: 267, name: 'Turkey'),
//   Country(id: 268, name: 'Turkmenistan'),
//   Country(id: 269, name: 'Turks and Caicos Islands'),
//   Country(id: 270, name: 'Tuvalu'),
//   Country(id: 271, name: 'Uganda'),
//   Country(id: 272, name: 'Ukraine'),
//   Country(id: 273, name: 'United Arab Emirates'),
//   Country(id: 274, name: 'United Koreans in Japan'),
//   Country(id: 275, name: 'United States'),
//   Country(id: 276, name: 'United States Virgin Islands'),
//   Country(id: 277, name: 'Uruguay'),
//   Country(id: 278, name: 'Uzbekistan'),
//   Country(id: 279, name: 'Vanuatu'),
//   Country(id: 280, name: 'Vatican City'),
//   Country(id: 281, name: 'Venezuela'),
//   Country(id: 282, name: 'Vietnam'),
//   Country(id: 283, name: 'Vietnam Republic'),
//   Country(id: 284, name: 'Wales'),
//   Country(id: 285, name: 'Wallis Islands and Futuna'),
//   Country(id: 286, name: 'Western Armenia'),
//   Country(id: 287, name: 'Western Australia'),
//   Country(id: 288, name: 'Western Isles'),
//   Country(id: 289, name: 'Western Sahara'),
//   Country(id: 290, name: 'Yemen'),
//   Country(id: 291, name: 'Yemen DPR'),
//   Country(id: 292, name: 'Ynys Môn'),
//   Country(id: 293, name: 'Yorkshire'),
//   Country(id: 294, name: 'Yugoslavia'),
//   Country(id: 295, name: 'Zambia'),
//   Country(id: 296, name: 'Zanzibar'),
//   Country(id: 297, name: 'Zimbabwe'),
//   Country(id: 298, name: 'Åland'),
//   Country(id: 299, name: 'Åland Islands'),
// ];

//  List<Country> COUNTRIES = [
//   Country(id: 0, name: 'Afghanistan'),
//   Country(id: 1, name: 'Albania'),
//   Country(id: 2, name: 'Algeria'),
//   Country(id: 3, name: 'Angola'),
//   Country(id: 4, name: 'Argentina'),
//   Country(id: 5, name: 'Armenia'),
//   Country(id: 6, name: 'Australia'),
//   Country(id: 7, name: 'Austria'),
//   Country(id: 8, name: 'Azerbaijan'),
//   Country(id: 9, name: 'Bahrain'),
//   Country(id: 10, name: 'Barbados'),
//   Country(id: 11, name: 'Belgium'),
//   Country(id: 12, name: 'Belize'),
//   Country(id: 13, name: 'Benin'),
//   Country(id: 14, name: 'Bermuda'),
//   Country(id: 15, name: 'Bolivia'),
//   Country(id: 16, name: 'Brazil'),
//   Country(id: 17, name: 'Bulgaria'),
//   Country(id: 18, name: 'Burkina Faso'),
//   Country(id: 19, name: 'Burundi'),
//   Country(id: 20, name: 'Cameroon'),
//   Country(id: 21, name: 'Canada'),
//   Country(id: 22, name: 'Cape Verde'),
//   Country(id: 23, name: 'Chile'),
//   Country(id: 24, name: 'China PR'),
//   Country(id: 25, name: 'Colombia'),
//   Country(id: 26, name: 'Comoros'),
//   Country(id: 27, name: 'Congo'),
//   Country(id: 28, name: 'Costa Rica'),
//   Country(id: 29, name: 'Croatia'),
//   Country(id: 30, name: 'Cuba'),
//   Country(id: 31, name: 'Cyprus'),
//   Country(id: 32, name: 'Czech Republic'),
//   Country(id: 33, name: 'Denmark'),
//   Country(id: 34, name: 'Dominican Republic'),
//   Country(id: 35, name: 'DR Congo'),
//   Country(id: 36, name: 'Ecuador'),
//   Country(id: 37, name: 'Egypt'),
//   Country(id: 38, name: 'El Salvador'),
//   Country(id: 39, name: 'England'),
//   Country(id: 40, name: 'Equatorial Guinea'),
//   Country(id: 41, name: 'Eritrea'),
//   Country(id: 42, name: 'Estonia'),
//   Country(id: 43, name: 'Ethiopia'),
//   Country(id: 44, name: 'Faroe Islands'),
//   Country(id: 45, name: 'Finland'),
//   Country(id: 46, name: 'France'),
//   Country(id: 47, name: 'Gabon'),
//   Country(id: 48, name: 'Gambia'),
//   Country(id: 49, name: 'Georgia'),
//   Country(id: 50, name: 'Germany'),
//   Country(id: 51, name: 'Ghana'),
//   Country(id: 52, name: 'Gibraltar'),
//   Country(id: 53, name: 'Greece'),
//   Country(id: 54, name: 'Grenada'),
//   Country(id: 55, name: 'Guam'),
//   Country(id: 56, name: 'Guatemala'),
//   Country(id: 57, name: 'Guinea'),
//   Country(id: 58, name: 'Guyana'),
//   Country(id: 59, name: 'Haiti'),
//   Country(id: 60, name: 'Honduras'),
//   Country(id: 61, name: 'Hong Kong'),
//   Country(id: 62, name: 'Hungary'),
//   Country(id: 63, name: 'Iceland'),
//   Country(id: 64, name: 'India'),
//   Country(id: 65, name: 'Indonesia'),
//   Country(id: 66, name: 'Iran'),
//   Country(id: 67, name: 'Iraq'),
//   Country(id: 68, name: 'Republic of Ireland'),
//   Country(id: 69, name: 'Israel'),
//   Country(id: 70, name: 'Italy'),
//   Country(id: 71, name: 'Ivory Coast'),
//   Country(id: 72, name: 'Jamaica'),
//   Country(id: 73, name: 'Japan'),
//   Country(id: 74, name: 'Jordan'),
//   Country(id: 75, name: 'Kazakhstan'),
//   Country(id: 76, name: 'Kenya'),
//   Country(id: 77, name: 'Kosovo'),
//   Country(id: 78, name: 'Latvia'),
//   Country(id: 79, name: 'Lebanon'),
//   Country(id: 80, name: 'Liberia'),
//   Country(id: 81, name: 'Liechtenstein'),
//   Country(id: 82, name: 'Lithuania'),
//   Country(id: 83, name: 'Luxembourg'),
//   Country(id: 84, name: 'Macau'),
//   Country(id: 85, name: 'Madagascar'),
//   Country(id: 86, name: 'Malawi'),
//   Country(id: 87, name: 'Malaysia'),
//   Country(id: 88, name: 'Malta'),
//   Country(id: 89, name: 'Mauritania'),
//   Country(id: 90, name: 'Mauritius'),
//   Country(id: 91, name: 'Mexico'),
//   Country(id: 92, name: 'Moldova'),
//   Country(id: 93, name: 'Montenegro'),
//   Country(id: 94, name: 'Montserrat'),
//   Country(id: 95, name: 'Morocco'),
//   Country(id: 96, name: 'Mozambique'),
//   Country(id: 97, name: 'Namibia'),
//   Country(id: 98, name: 'Netherlands'),
//   Country(id: 99, name: 'New Caledonia'),
//   Country(id: 100, name: 'New Zealand'),
//   Country(id: 101, name: 'Niger'),
//   Country(id: 102, name: 'Nigeria'),
//   Country(id: 103, name: 'Northern Ireland'),
//   Country(id: 104, name: 'Norway'),
//   Country(id: 105, name: 'Palestine'),
//   Country(id: 106, name: 'Panama'),
//   Country(id: 107, name: 'Paraguay'),
//   Country(id: 108, name: 'Peru'),
//   Country(id: 109, name: 'Philippines'),
//   Country(id: 110, name: 'Poland'),
//   Country(id: 111, name: 'Portugal'),
//   Country(id: 112, name: 'Puerto Rico'),
//   Country(id: 113, name: 'Romania'),
//   Country(id: 114, name: 'Russia'),
//   Country(id: 115, name: 'Saudi Arabia'),
//   Country(id: 116, name: 'Scotland'),
//   Country(id: 117, name: 'Senegal'),
//   Country(id: 118, name: 'Serbia'),
//   Country(id: 119, name: 'Sierra Leone'),
//   Country(id: 120, name: 'Slovakia'),
//   Country(id: 121, name: 'Slovenia'),
//   Country(id: 122, name: 'South Africa'),
//   Country(id: 123, name: 'South Sudan'),
//   Country(id: 124, name: 'Spain'),
//   Country(id: 125, name: 'Sudan'),
//   Country(id: 126, name: 'Suriname'),
//   Country(id: 127, name: 'Sweden'),
//   Country(id: 128, name: 'Switzerland'),
//   Country(id: 129, name: 'Syria'),
//   Country(id: 130, name: 'Tanzania'),
//   Country(id: 131, name: 'Thailand'),
//   Country(id: 132, name: 'Togo'),
//   Country(id: 133, name: 'Tunisia'),
//   Country(id: 134, name: 'Turkey'),
//   Country(id: 135, name: 'Uganda'),
//   Country(id: 136, name: 'Ukraine'),
//   Country(id: 137, name: 'United Arab Emirates'),
//   Country(id: 138, name: 'United States'),
//   Country(id: 139, name: 'Uruguay'),
//   Country(id: 140, name: 'Uzbekistan'),
//   Country(id: 141, name: 'Venezuela'),
//   Country(id: 142, name: 'Vietnam'),
//   Country(id: 143, name: 'Wales'),
//   Country(id: 144, name: 'Zambia'),
//   Country(id: 145, name: 'Zimbabwe'),
//   Country(id: 146, name: 'Malaysia'),
//   Country(id: 147, name: 'Nigeria'),
//   Country(id: 148, name: 'Kazakhstan'),
// ];

// List<String> NATIONS = [
//   'ALB',
//   'ALG',
//   'ANG',
//   'ARG',
//   'ARM',
//   'AUS',
//   'AUT',
//   'BDI',
//   'BEL',
//   'BEN',
//   'BFA',
//   'BIH',
//   'BRA',
//   'BUL',
//   'CAN',
//   'CGO',
//   'CHI',
//   'CIV',
//   'CMR',
//   'COD',
//   'COL',
//   'COM',
//   'CPV',
//   'CRC',
//   'CRO',
//   'CTA',
//   'CYP',
//   'CZE',
//   'DEN',
//   'DOM',
//   'ECU',
//   'EGY',
//   'ENG',
//   'EQG',
//   'ESP',
//   'FIN',
//   'FRA',
//   'GAB',
//   'GAM',
//   'GEO',
//   'GER',
//   'GHA',
//   'GLP',
//   'GNB',
//   'GRE',
//   'GRN',
//   'GUF',
//   'GUI',
//   'HAI',
//   'HON',
//   'HUN',
//   'IRL',
//   'IRN',
//   'ISL',
//   'ISR',
//   'ITA',
//   'JAM',
//   'JPN',
//   'KOR',
//   'KVX',
//   'LTU',
//   'LUX',
//   'LVA',
//   'MAD',
//   'MAR',
//   'MEX',
//   'MKD',
//   'MLI',
//   'MNE',
//   'MOZ',
//   'MTQ',
//   'NED',
//   'NGA',
//   'NIR',
//   'NOR',
//   'NZL',
//   'PAR',
//   'PER',
//   'PHI',
//   'POL',
//   'POR',
//   'ROU',
//   'RSA',
//   'RUS',
//   'SCO',
//   'SEN',
//   'SLE',
//   'SRB',
//   'SUI',
//   'SUR',
//   'SVK',
//   'SVN',
//   'SWE',
//   'TOG',
//   'TUN',
//   'TUR',
//   'UKR',
//   'URU',
//   'USA',
//   'UZB',
//   'VEN',
//   'WAL',
//   'ZAM',
//   'ZIM'
// ];

// Map<String, List<Player>> NATIONALPLAYER = {
//   'ALB': [
//     Player(
//       playerName: 'Nedim Bajrami',
//       nation: 'ALB',
//       Index: 0,
//     ),
//     Player(
//       playerName: 'Armando Broja',
//       nation: 'ALB',
//       Index: 1,
//     ),
//     Player(
//       playerName: 'Kristjan Asllani',
//       nation: 'ALB',
//       Index: 2,
//     ),
//     Player(
//       playerName: 'Nedim Bajrami',
//       nation: 'ALB',
//       Index: 3,
//     ),
//     Player(playerName: 'Ivan Balliu', nation: 'ALB', Index: 4)
//   ],
//   'ALG': [
//     Player(
//       playerName: 'Andy Delort',
//       nation: 'ALG',
//       Index: 5,
//     ),
//     Player(
//       playerName: 'Youcef Belaili',
//       nation: 'ALG',
//       Index: 6,
//     ),
//     Player(
//       playerName: 'Ramy Bensebaini',
//       nation: 'ALG',
//       Index: 7,
//     ),
//     Player(
//       playerName: 'Riyad Mahrez',
//       nation: 'ALG',
//       Index: 8,
//     ),
//     Player(playerName: 'Said Benrahma', nation: 'ALG', Index: 9)
//   ],
//   'ANG': [
//     Player(
//       playerName: "M'Bala Nzola",
//       nation: 'ANG',
//       Index: 10,
//     ),
//     Player(playerName: 'Jeremie Bela', nation: 'ANG', Index: 11)
//   ],
//   'ARG': [
//     Player(
//       playerName: 'Lautaro Martinez',
//       nation: 'ARG',
//       Index: 12,
//     ),
//     Player(
//       playerName: 'Lionel Messi',
//       nation: 'ARG',
//       Index: 13,
//     ),
//     Player(
//       playerName: 'paulo Dybala',
//       nation: 'ARG',
//       Index: 14,
//     ),
//     Player(
//       playerName: 'Ezequiel Avila',
//       nation: 'ARG',
//       Index: 15,
//     ),
//     Player(playerName: 'Angel Correa', nation: 'ARG', Index: 16)
//   ],
//   'ARM': [
//     Player(
//       playerName: 'Sargis Adamyan',
//       nation: 'ARM',
//       Index: 17,
//     ),
//     Player(playerName: 'Henrikh Mkhitaryan', nation: 'ARM', Index: 18)
//   ],
//   'AUS': [
//     Player(
//       playerName: 'Tyrese Francois',
//       nation: 'AUS',
//       Index: 19,
//     ),
//     Player(
//       playerName: 'Denis Genreau',
//       nation: 'AUS',
//       Index: 20,
//     ),
//     Player(
//       playerName: 'Ajdin Hrustic',
//       nation: 'AUS',
//       Index: 21,
//     ),
//     Player(
//       playerName: 'Alou Kuol',
//       nation: 'AUS',
//       Index: 22,
//     ),
//     Player(playerName: 'Awer Mabil', nation: 'AUS', Index: 23)
//   ],
//   'AUT': [
//     Player(
//       playerName: 'Marko Arnautovi',
//       nation: 'AUT',
//       Index: 24,
//     ),
//     Player(
//       playerName: 'Karim Onisiwo',
//       nation: 'AUT',
//       Index: 25,
//     ),
//     Player(
//       playerName: 'Michael Gregoritsch',
//       nation: 'AUT',
//       Index: 26,
//     ),
//     Player(
//       playerName: 'Christoph Baumgartner',
//       nation: 'AUT',
//       Index: 27,
//     ),
//     Player(playerName: 'Florian Kainz', nation: 'AUT', Index: 28)
//   ],
//   'BDI': [
//     Player(playerName: 'Youssouf Ndayishimiye', nation: 'BDI', Index: 29)
//   ],
//   'BEL': [
//     Player(
//       playerName: 'Lois Openda',
//       nation: 'BEL',
//       Index: 30,
//     ),
//     Player(
//       playerName: 'Dodi Lukebakio',
//       nation: 'BEL',
//       Index: 31,
//     ),
//     Player(
//       playerName: 'Leandro Trossard',
//       nation: 'BEL',
//       Index: 32,
//     ),
//     Player(
//       playerName: 'Brecht Dejaegere',
//       nation: 'BEL',
//       Index: 33,
//     ),
//     Player(playerName: 'Kevin De Bruyne', nation: 'BEL', Index: 34)
//   ],
//   'BEN': [
//     Player(
//       playerName: 'Steve Mounie',
//       nation: 'BEN',
//       Index: 35,
//     ),
//     Player(
//       playerName: 'Jodel Dossou',
//       nation: 'BEN',
//       Index: 36,
//     ),
//     Player(playerName: 'Cedric Hountondji', nation: 'BEN', Index: 37)
//   ],
//   'BFA': [
//     Player(
//       playerName: 'Dango Ouattara',
//       nation: 'BFA',
//       Index: 38,
//     ),
//     Player(
//       playerName: 'Cyrille Bayala',
//       nation: 'BFA',
//       Index: 39,
//     ),
//     Player(
//       playerName: 'Issa Kabore',
//       nation: 'BFA',
//       Index: 40,
//     ),
//     Player(
//       playerName: 'Edmond Tapsoba',
//       nation: 'BFA',
//       Index: 41,
//     ),
//     Player(playerName: 'Kouame Botue', nation: 'BFA', Index: 42)
//   ],
//   'BIH': [
//     Player(
//       playerName: 'Ermedin Demirovi',
//       nation: 'BIH',
//       Index: 43,
//     ),
//     Player(
//       playerName: 'Edin Deko',
//       nation: 'BIH',
//       Index: 44,
//     ),
//     Player(
//       playerName: 'Sead Kolainac',
//       nation: 'BIH',
//       Index: 45,
//     ),
//     Player(
//       playerName: 'Sanjin Prci',
//       nation: 'BIH',
//       Index: 46,
//     ),
//     Player(playerName: 'Milan uri', nation: 'BIH', Index: 47)
//   ],
//   'BRA': [
//     Player(
//       playerName: 'Neymar',
//       nation: 'BRA',
//       Index: 48,
//     ),
//     Player(
//       playerName: 'Roberto Firmino',
//       nation: 'BRA',
//       Index: 49,
//     ),
//     Player(
//       playerName: 'Vinicius Junior',
//       nation: 'BRA',
//       Index: 50,
//     ),
//     Player(
//       playerName: 'Martinelli',
//       nation: 'BRA',
//       Index: 51,
//     ),
//     Player(playerName: 'Gabriel Strefezza', nation: 'BRA', Index: 52)
//   ],
//   'BUL': [
//     Player(
//       playerName: 'Valentin Antov',
//       nation: 'BUL',
//       Index: 53,
//     ),
//     Player(
//       playerName: 'Ilia Gruev',
//       nation: 'BUL',
//       Index: 54,
//     ),
//     Player(playerName: 'petko Hristov', nation: 'BUL', Index: 55)
//   ],
//   'CAN': [
//     Player(
//       playerName: 'Jonathan David',
//       nation: 'CAN',
//       Index: 56,
//     ),
//     Player(
//       playerName: 'Cyle Larin',
//       nation: 'CAN',
//       Index: 57,
//     ),
//     Player(
//       playerName: 'Ike Ugbo',
//       nation: 'CAN',
//       Index: 58,
//     ),
//     Player(
//       playerName: 'Alphonso Davies',
//       nation: 'CAN',
//       Index: 59,
//     ),
//     Player(playerName: 'Luca Koleosho', nation: 'CAN', Index: 60)
//   ],
//   'CGO': [
//     Player(
//       playerName: 'Bevic Moussiti-Oko',
//       nation: 'CGO',
//       Index: 61,
//     ),
//     Player(
//       playerName: "Silvere Ganvoula M'Boussy",
//       nation: 'CGO',
//       Index: 62,
//     ),
//     Player(
//       playerName: 'Beni Makouana',
//       nation: 'CGO',
//       Index: 63,
//     ),
//     Player(
//       playerName: 'Fernand Mayembo',
//       nation: 'CGO',
//       Index: 64,
//     ),
//     Player(playerName: 'Brice Samba', nation: 'CGO', Index: 65)
//   ],
//   'CHI': [
//     Player(
//       playerName: 'Alexis Sanchez',
//       nation: 'CHI',
//       Index: 66,
//     ),
//     Player(
//       playerName: 'Guillermo Maripan',
//       nation: 'CHI',
//       Index: 67,
//     ),
//     Player(
//       playerName: 'Charles Aranguiz',
//       nation: 'CHI',
//       Index: 68,
//     ),
//     Player(
//       playerName: 'Tomas Alarcon',
//       nation: 'CHI',
//       Index: 69,
//     ),
//     Player(playerName: 'Claudio Bravo', nation: 'CHI', Index: 70)
//   ],
//   'CIV': [
//     Player(
//       playerName: 'Nicolas Pepe',
//       nation: 'CIV',
//       Index: 71,
//     ),
//     Player(
//       playerName: 'Wilfried Zaha',
//       nation: 'CIV',
//       Index: 72,
//     ),
//     Player(
//       playerName: 'Seko Fofana',
//       nation: 'CIV',
//       Index: 73,
//     ),
//     Player(
//       playerName: 'Wilfried Kanga',
//       nation: 'CIV',
//       Index: 74,
//     ),
//     Player(playerName: 'Christian Kouame', nation: 'CIV', Index: 75)
//   ],
//   'CMR': [
//     Player(
//       playerName: 'Eric Maxim Choupo-Moting',
//       nation: 'CMR',
//       Index: 76,
//     ),
//     Player(
//       playerName: 'Bryan Mbeumo',
//       nation: 'CMR',
//       Index: 77,
//     ),
//     Player(
//       playerName: 'Karl Toko Ekambi',
//       nation: 'CMR',
//       Index: 78,
//     ),
//     Player(
//       playerName: 'Ignatius Ganago',
//       nation: 'CMR',
//       Index: 79,
//     ),
//     Player(playerName: 'Andre-Frank Zambo Anguissa', nation: 'CMR', Index: 80)
//   ],
//   'COD': [
//     Player(
//       playerName: 'Yoane Wissa',
//       nation: 'COD',
//       Index: 81,
//     ),
//     Player(
//       playerName: 'Silas Katompa',
//       nation: 'COD',
//       Index: 82,
//     ),
//     Player(
//       playerName: 'Theo Bongonda',
//       nation: 'COD',
//       Index: 83,
//     ),
//     Player(
//       playerName: 'Chancel Mbemba',
//       nation: 'COD',
//       Index: 84,
//     ),
//     Player(playerName: 'Cedric Bakambu', nation: 'COD', Index: 85)
//   ],
//   'COL': [
//     Player(
//       playerName: 'Luis Diaz',
//       nation: 'COL',
//       Index: 86,
//     ),
//     Player(
//       playerName: 'Luis Javier Suarez',
//       nation: 'COL',
//       Index: 87,
//     ),
//     Player(
//       playerName: 'Rafael Borre',
//       nation: 'COL',
//       Index: 88,
//     ),
//     Player(
//       playerName: 'Radamel Falcao',
//       nation: 'COL',
//       Index: 89,
//     ),
//     Player(playerName: 'Luis Javier Suarez', nation: 'COL', Index: 90)
//   ],
//   'COM': [
//     Player(
//       playerName: 'Ckene Doucoure',
//       nation: 'COM',
//       Index: 91,
//     ),
//     Player(
//       playerName: "Youssouf M'Changama",
//       nation: 'COM',
//       Index: 92,
//     ),
//     Player(playerName: 'Mohamed Youssouf', nation: 'COM', Index: 93)
//   ],
//   'CPV': [
//     Player(
//       playerName: 'Nuno da Costa',
//       nation: 'CPV',
//       Index: 94,
//     ),
//     Player(
//       playerName: 'Bebe',
//       nation: 'CPV',
//       Index: 95,
//     ),
//     Player(
//       playerName: 'Logan Costa',
//       nation: 'CPV',
//       Index: 96,
//     ),
//     Player(playerName: 'Steven Fortes', nation: 'CPV', Index: 97)
//   ],
//   'CRC': [
//     Player(
//       playerName: 'Cristian Gamboa',
//       nation: 'CRC',
//       Index: 98,
//     ),
//     Player(playerName: 'Keylor Navas', nation: 'CRC', Index: 99)
//   ],
//   'CRO': [
//     Player(
//       playerName: 'Andrej Kramari',
//       nation: 'CRO',
//       Index: 100,
//     ),
//     Player(
//       playerName: 'Nikola Vlai',
//       nation: 'CRO',
//       Index: 101,
//     ),
//     Player(
//       playerName: 'Luka Modri',
//       nation: 'CRO',
//       Index: 102,
//     ),
//     Player(
//       playerName: 'Ante Rebi',
//       nation: 'CRO',
//       Index: 103,
//     ),
//     Player(playerName: 'Marcelo Brozovi', nation: 'CRO', Index: 104)
//   ],
//   'CTA': [Player(playerName: 'Geoffrey Kondogbia', nation: 'CTA', Index: 105)],
//   'CYP': [Player(playerName: 'Grigoris Kastanos', nation: 'CYP', Index: 106)],
//   'CZE': [
//     Player(
//       playerName: 'Adam Hloek',
//       nation: 'CZE',
//       Index: 107,
//     ),
//     Player(
//       playerName: 'patrik Schick',
//       nation: 'CZE',
//       Index: 108,
//     ),
//     Player(
//       playerName: 'Antonin Barak',
//       nation: 'CZE',
//       Index: 109,
//     ),
//     Player(
//       playerName: 'pavel Kadeabek',
//       nation: 'CZE',
//       Index: 110,
//     ),
//     Player(playerName: 'Toma Souek', nation: 'CZE', Index: 111)
//   ],
//   'DEN': [
//     Player(
//       playerName: 'Jesper Lindstrom',
//       nation: 'DEN',
//       Index: 112,
//     ),
//     Player(
//       playerName: 'Marcus Ingvartsen',
//       nation: 'DEN',
//       Index: 113,
//     ),
//     Player(
//       playerName: 'Martin Braithwaite',
//       nation: 'DEN',
//       Index: 114,
//     ),
//     Player(
//       playerName: 'Rasmus Hojlund',
//       nation: 'DEN',
//       Index: 115,
//     ),
//     Player(playerName: 'philip Billing', nation: 'DEN', Index: 116)
//   ],
//   'DOM': [Player(playerName: 'Mariano', nation: 'DOM', Index: 117)],
//   'ECU': [
//     Player(
//       playerName: 'Jackson Porozo',
//       nation: 'ECU',
//       Index: 118,
//     ),
//     Player(
//       playerName: 'Moises Caicedo',
//       nation: 'ECU',
//       Index: 119,
//     ),
//     Player(
//       playerName: 'piero Hincapie',
//       nation: 'ECU',
//       Index: 120,
//     ),
//     Player(
//       playerName: 'pervis Estupinan',
//       nation: 'ECU',
//       Index: 121,
//     ),
//     Player(playerName: 'Carlos Gruezo', nation: 'ECU', Index: 122)
//   ],
//   'EGY': [
//     Player(
//       playerName: 'Mohamed Salah',
//       nation: 'EGY',
//       Index: 123,
//     ),
//     Player(
//       playerName: 'Mostafa Mohamed',
//       nation: 'EGY',
//       Index: 124,
//     ),
//     Player(
//       playerName: 'Omar Marmoush',
//       nation: 'EGY',
//       Index: 125,
//     ),
//     Player(playerName: 'Mohamed Elneny', nation: 'EGY', Index: 126)
//   ],
//   'ENG': [
//     Player(
//       playerName: 'Harry Kane',
//       nation: 'ENG',
//       Index: 127,
//     ),
//     Player(
//       playerName: 'Folarin Balogun',
//       nation: 'ENG',
//       Index: 128,
//     ),
//     Player(
//       playerName: 'Ivan Toney',
//       nation: 'ENG',
//       Index: 129,
//     ),
//     Player(
//       playerName: 'Marcus Rashford',
//       nation: 'ENG',
//       Index: 130,
//     ),
//     Player(playerName: 'James Maddison', nation: 'ENG', Index: 131)
//   ],
//   'EQG': [
//     Player(
//       playerName: 'Aridane Hernandez',
//       nation: 'EQG',
//       Index: 132,
//     ),
//     Player(
//       playerName: 'pedro Obiang',
//       nation: 'EQG',
//       Index: 133,
//     ),
//     Player(playerName: 'pepin', nation: 'EQG', Index: 134)
//   ],
//   'ESP': [
//     Player(
//       playerName: 'Joselu',
//       nation: 'ESP',
//       Index: 135,
//     ),
//     Player(
//       playerName: 'Rodrigo',
//       nation: 'ESP',
//       Index: 136,
//     ),
//     Player(
//       playerName: 'Iago Aspas',
//       nation: 'ESP',
//       Index: 137,
//     ),
//     Player(
//       playerName: 'Borja Iglesias',
//       nation: 'ESP',
//       Index: 138,
//     ),
//     Player(playerName: 'Oihan Sancet', nation: 'ESP', Index: 139)
//   ],
//   'FIN': [
//     Player(
//       playerName: 'Fredrik Jensen',
//       nation: 'FIN',
//       Index: 140,
//     ),
//     Player(
//       playerName: 'Luka Hradeck',
//       nation: 'FIN',
//       Index: 141,
//     ),
//     Player(
//       playerName: 'Joel Pohjanpalo',
//       nation: 'FIN',
//       Index: 142,
//     ),
//     Player(
//       playerName: 'Niklas Pyyhtia',
//       nation: 'FIN',
//       Index: 143,
//     ),
//     Player(playerName: 'Naatan Skytta', nation: 'FIN', Index: 144)
//   ],
//   'FRA': [
//     Player(
//       playerName: 'Wissam Ben Yedder',
//       nation: 'FRA',
//       Index: 145,
//     ),
//     Player(
//       playerName: 'Alexandre Lacazette',
//       nation: 'FRA',
//       Index: 146,
//     ),
//     Player(
//       playerName: 'Kylian Mbappe',
//       nation: 'FRA',
//       Index: 147,
//     ),
//     Player(
//       playerName: 'Christopher Nkunku',
//       nation: 'FRA',
//       Index: 148,
//     ),
//     Player(playerName: 'Marcus Thuram', nation: 'FRA', Index: 149)
//   ],
//   'GAB': [
//     Player(
//       playerName: 'Jim Allevinah',
//       nation: 'GAB',
//       Index: 150,
//     ),
//     Player(
//       playerName: 'pierre-Emerick Aubameyang',
//       nation: 'GAB',
//       Index: 151,
//     ),
//     Player(
//       playerName: 'pierre-Emerick Aubameyang',
//       nation: 'GAB',
//       Index: 152,
//     ),
//     Player(
//       playerName: 'Alan Do Marcolino',
//       nation: 'GAB',
//       Index: 153,
//     ),
//     Player(playerName: 'Mario Lemina', nation: 'GAB', Index: 154)
//   ],
//   'GAM': [
//     Player(
//       playerName: 'Assan Ceesay',
//       nation: 'GAM',
//       Index: 155,
//     ),
//     Player(
//       playerName: 'Musa Barrow',
//       nation: 'GAM',
//       Index: 156,
//     ),
//     Player(
//       playerName: 'Omar Colley',
//       nation: 'GAM',
//       Index: 157,
//     ),
//     Player(playerName: 'Saidy Janko', nation: 'GAM', Index: 158)
//   ],
//   'GEO': [
//     Player(
//       playerName: 'Khvicha Kvaratskhelia',
//       nation: 'GEO',
//       Index: 159,
//     ),
//     Player(
//       playerName: 'Luka Lochoshvili',
//       nation: 'GEO',
//       Index: 160,
//     ),
//     Player(playerName: 'Giorgi Mamardashvili', nation: 'GEO', Index: 161)
//   ],
//   'GER': [
//     Player(
//       playerName: 'Niclas Fullkrug',
//       nation: 'GER',
//       Index: 162,
//     ),
//     Player(
//       playerName: 'Jamal Musiala',
//       nation: 'GER',
//       Index: 163,
//     ),
//     Player(
//       playerName: 'Serge Gnabry',
//       nation: 'GER',
//       Index: 164,
//     ),
//     Player(
//       playerName: 'Jonas Hofmann',
//       nation: 'GER',
//       Index: 165,
//     ),
//     Player(playerName: 'philipp Hofmann', nation: 'GER', Index: 166)
//   ],
//   'GHA': [
//     Player(
//       playerName: 'Inaki Williams',
//       nation: 'GHA',
//       Index: 167,
//     ),
//     Player(
//       playerName: 'Joseph Aidoo',
//       nation: 'GHA',
//       Index: 168,
//     ),
//     Player(
//       playerName: 'Christopher Antwi-Adjei',
//       nation: 'GHA',
//       Index: 169,
//     ),
//     Player(
//       playerName: 'Daniel Kyereh',
//       nation: 'GHA',
//       Index: 170,
//     ),
//     Player(playerName: 'Thomas Partey', nation: 'GHA', Index: 171)
//   ],
//   'GLP': [
//     Player(
//       playerName: 'Cedric Avinel',
//       nation: 'GLP',
//       Index: 172,
//     ),
//     Player(
//       playerName: 'Mickael Alphonse',
//       nation: 'GLP',
//       Index: 173,
//     ),
//     Player(
//       playerName: 'Andrew Gravillon',
//       nation: 'GLP',
//       Index: 174,
//     ),
//     Player(
//       playerName: 'Andrew Gravillon',
//       nation: 'GLP',
//       Index: 175,
//     ),
//     Player(playerName: 'Remy Labeau Lascary', nation: 'GLP', Index: 176)
//   ],
//   'GNB': [
//     Player(
//       playerName: 'Mama Samba Balde',
//       nation: 'GNB',
//       Index: 177,
//     ),
//     Player(
//       playerName: 'Beto',
//       nation: 'GNB',
//       Index: 178,
//     ),
//     Player(
//       playerName: 'Ronaldo Vieira',
//       nation: 'GNB',
//       Index: 179,
//     ),
//     Player(playerName: 'Ronaldo Vieira', nation: 'GNB', Index: 180)
//   ],
//   'GRE': [
//     Player(
//       playerName: 'Konstantinos Mavropanos',
//       nation: 'GRE',
//       Index: 181,
//     ),
//     Player(
//       playerName: 'Giorgos Kyriakopoulos',
//       nation: 'GRE',
//       Index: 182,
//     ),
//     Player(
//       playerName: 'Charalambos Lykogiannis',
//       nation: 'GRE',
//       Index: 183,
//     ),
//     Player(
//       playerName: 'Thomas Kastanaras',
//       nation: 'GRE',
//       Index: 184,
//     ),
//     Player(playerName: 'Giorgos Kyriakopoulos', nation: 'GRE', Index: 185)
//   ],
//   'GRN': [Player(playerName: 'Shandon Baptiste', nation: 'GRN', Index: 186)],
//   'GUF': [Player(playerName: 'Yoann Salmier', nation: 'GUF', Index: 187)],
//   'GUI': [
//     Player(
//       playerName: 'Sehrou Guirassy',
//       nation: 'GUI',
//       Index: 188,
//     ),
//     Player(
//       playerName: 'Mohamed Lamine Bayo',
//       nation: 'GUI',
//       Index: 189,
//     ),
//     Player(
//       playerName: 'Mouctar Diakhaby',
//       nation: 'GUI',
//       Index: 190,
//     ),
//     Player(
//       playerName: 'Julian Jeanvier',
//       nation: 'GUI',
//       Index: 191,
//     ),
//     Player(playerName: 'Mohamed Camara', nation: 'GUI', Index: 192)
//   ],
//   'HAI': [Player(playerName: 'Dany Jean', nation: 'HAI', Index: 193)],
//   'HON': [
//     Player(
//       playerName: 'Alberth Elis',
//       nation: 'HON',
//       Index: 194,
//     ),
//     Player(playerName: 'Anthony Lozano', nation: 'HON', Index: 195)
//   ],
//   'HUN': [
//     Player(
//       playerName: 'Willi Orban',
//       nation: 'HUN',
//       Index: 196,
//     ),
//     Player(
//       playerName: 'Dominik Szoboszlai',
//       nation: 'HUN',
//       Index: 197,
//     ),
//     Player(
//       playerName: 'peter Gulacsi',
//       nation: 'HUN',
//       Index: 198,
//     ),
//     Player(
//       playerName: 'Roland Sallai',
//       nation: 'HUN',
//       Index: 199,
//     ),
//     Player(playerName: 'Andras Schafer', nation: 'HUN', Index: 200)
//   ],
//   'IRL': [
//     Player(
//       playerName: 'Evan Ferguson',
//       nation: 'IRL',
//       Index: 201,
//     ),
//     Player(
//       playerName: 'Matt Doherty',
//       nation: 'IRL',
//       Index: 202,
//     ),
//     Player(
//       playerName: 'Gavin Bazunu',
//       nation: 'IRL',
//       Index: 203,
//     ),
//     Player(
//       playerName: 'Thomas Cannon',
//       nation: 'IRL',
//       Index: 204,
//     ),
//     Player(playerName: 'Seamus Coleman', nation: 'IRL', Index: 205)
//   ],
//   'IRN': [
//     Player(
//       playerName: 'Sardar Azmoun',
//       nation: 'IRN',
//       Index: 206,
//     ),
//     Player(playerName: 'Saman Ghoddos', nation: 'IRN', Index: 207)
//   ],
//   'ISL': [
//     Player(
//       playerName: 'Mikael Ellertsson',
//       nation: 'ISL',
//       Index: 208,
//     ),
//     Player(playerName: 'orir Johann Helgason', nation: 'ISL', Index: 209)
//   ],
//   'ISR': [
//     Player(
//       playerName: 'Moanes Dabbur',
//       nation: 'ISR',
//       Index: 210,
//     ),
//     Player(
//       playerName: 'Manor Solomon',
//       nation: 'ISR',
//       Index: 211,
//     ),
//     Player(playerName: 'Shon Weissman', nation: 'ISR', Index: 212)
//   ],
//   'ITA': [
//     Player(
//       playerName: 'Vincenzo Grifo',
//       nation: 'ITA',
//       Index: 213,
//     ),
//     Player(
//       playerName: 'Mattia Zaccagni',
//       nation: 'ITA',
//       Index: 214,
//     ),
//     Player(
//       playerName: 'Ciro Immobile',
//       nation: 'ITA',
//       Index: 215,
//     ),
//     Player(
//       playerName: 'Nicolo Barella',
//       nation: 'ITA',
//       Index: 216,
//     ),
//     Player(playerName: 'Davide Frattesi', nation: 'ITA', Index: 217)
//   ],
//   'JAM': [
//     Player(
//       playerName: 'Leon Bailey',
//       nation: 'JAM',
//       Index: 218,
//     ),
//     Player(
//       playerName: 'Bobby Reid',
//       nation: 'JAM',
//       Index: 219,
//     ),
//     Player(
//       playerName: 'Michail Antonio',
//       nation: 'JAM',
//       Index: 220,
//     ),
//     Player(
//       playerName: 'Dexter Lembikisa',
//       nation: 'JAM',
//       Index: 221,
//     ),
//     Player(playerName: 'Jamal Lowe', nation: 'JAM', Index: 222)
//   ],
//   'JPN': [
//     Player(
//       playerName: 'Daichi Kamada',
//       nation: 'JPN',
//       Index: 223,
//     ),
//     Player(
//       playerName: 'Kaoru Mitoma',
//       nation: 'JPN',
//       Index: 224,
//     ),
//     Player(
//       playerName: 'Junya Ito',
//       nation: 'JPN',
//       Index: 225,
//     ),
//     Player(
//       playerName: 'Wataru Endo',
//       nation: 'JPN',
//       Index: 226,
//     ),
//     Player(playerName: 'Takefusa Kubo', nation: 'JPN', Index: 227)
//   ],
//   'KOR': [
//     Player(
//       playerName: 'Lee Jae-sung',
//       nation: 'KOR',
//       Index: 228,
//     ),
//     Player(
//       playerName: 'Son Heung-min',
//       nation: 'KOR',
//       Index: 229,
//     ),
//     Player(
//       playerName: 'Lee Kangin',
//       nation: 'KOR',
//       Index: 230,
//     ),
//     Player(
//       playerName: 'Kim Min-jae',
//       nation: 'KOR',
//       Index: 231,
//     ),
//     Player(playerName: 'Jeong Woo-yeong', nation: 'KOR', Index: 232)
//   ],
//   'KVX': [
//     Player(
//       playerName: 'Vedat Muriqi',
//       nation: 'KVX',
//       Index: 233,
//     ),
//     Player(
//       playerName: 'Elba Rashani',
//       nation: 'KVX',
//       Index: 234,
//     ),
//     Player(
//       playerName: 'Amir Rrahmani',
//       nation: 'KVX',
//       Index: 235,
//     ),
//     Player(
//       playerName: 'Edon Zhegrova',
//       nation: 'KVX',
//       Index: 236,
//     ),
//     Player(playerName: 'Fisnik Asllani', nation: 'KVX', Index: 237)
//   ],
//   'LTU': [Player(playerName: 'Gvidas Gineitis', nation: 'LTU', Index: 238)],
//   'LUX': [
//     Player(
//       playerName: 'Leandro Barreiro Martins',
//       nation: 'LUX',
//       Index: 239,
//     ),
//     Player(
//       playerName: 'Yvandro Borges Sanches',
//       nation: 'LUX',
//       Index: 240,
//     ),
//     Player(playerName: 'Mathias Olesen', nation: 'LUX', Index: 241)
//   ],
//   'LVA': [Player(playerName: 'Raimonds Krollis', nation: 'LVA', Index: 242)],
//   'MAD': [
//     Player(
//       playerName: 'Kenji-Van Boto',
//       nation: 'MAD',
//       Index: 243,
//     ),
//     Player(playerName: 'Rayan Raveloson', nation: 'MAD', Index: 244)
//   ],
//   'MAR': [
//     Player(
//       playerName: 'Zakaria Aboukhlal',
//       nation: 'MAR',
//       Index: 245,
//     ),
//     Player(
//       playerName: 'Sofiane Boufal',
//       nation: 'MAR',
//       Index: 246,
//     ),
//     Player(
//       playerName: 'Achraf Hakimi',
//       nation: 'MAR',
//       Index: 247,
//     ),
//     Player(
//       playerName: 'Youssef En-Nesyri',
//       nation: 'MAR',
//       Index: 248,
//     ),
//     Player(playerName: 'Anuar', nation: 'MAR', Index: 249)
//   ],
//   'MEX': [
//     Player(
//       playerName: 'Hirving Lozano',
//       nation: 'MEX',
//       Index: 250,
//     ),
//     Player(
//       playerName: 'Andres Guardado',
//       nation: 'MEX',
//       Index: 251,
//     ),
//     Player(
//       playerName: 'Jesus Corona',
//       nation: 'MEX',
//       Index: 252,
//     ),
//     Player(
//       playerName: 'Raul Jimenez',
//       nation: 'MEX',
//       Index: 253,
//     ),
//     Player(playerName: 'Cesar Montes', nation: 'MEX', Index: 254)
//   ],
//   'MKD': [
//     Player(
//       playerName: 'Elif Elmas',
//       nation: 'MKD',
//       Index: 255,
//     ),
//     Player(
//       playerName: 'Ilija Nestorovski',
//       nation: 'MKD',
//       Index: 256,
//     ),
//     Player(
//       playerName: 'Darko Churlinov',
//       nation: 'MKD',
//       Index: 257,
//     ),
//     Player(playerName: 'Stole Dimitrievski', nation: 'MKD', Index: 258)
//   ],
//   'MLI': [
//     Player(
//       playerName: 'El Bilal Toure',
//       nation: 'MLI',
//       Index: 259,
//     ),
//     Player(
//       playerName: 'Ibrahima Kone',
//       nation: 'MLI',
//       Index: 260,
//     ),
//     Player(
//       playerName: 'Kamory Doumbia',
//       nation: 'MLI',
//       Index: 261,
//     ),
//     Player(
//       playerName: 'Lassana Coulibaly',
//       nation: 'MLI',
//       Index: 262,
//     ),
//     Player(playerName: 'Amadou Haidara', nation: 'MLI', Index: 263)
//   ],
//   'MNE': [
//     Player(
//       playerName: 'Stevan Joveti',
//       nation: 'MNE',
//       Index: 264,
//     ),
//     Player(
//       playerName: 'Adam Marui',
//       nation: 'MNE',
//       Index: 265,
//     ),
//     Player(
//       playerName: 'Esteban Saveljich',
//       nation: 'MNE',
//       Index: 266,
//     ),
//     Player(playerName: 'Stefan Savi', nation: 'MNE', Index: 267)
//   ],
//   'MOZ': [Player(playerName: 'Reinildo Mandava', nation: 'MOZ', Index: 268)],
//   'MTQ': [
//     Player(
//       playerName: 'Gregoire Defrel',
//       nation: 'MTQ',
//       Index: 269,
//     ),
//     Player(
//       playerName: 'Christophe Herelle',
//       nation: 'MTQ',
//       Index: 270,
//     ),
//     Player(playerName: 'Mickael Malsa', nation: 'MTQ', Index: 271)
//   ],
//   'NED': [
//     Player(
//       playerName: 'Thijs Dallinga',
//       nation: 'NED',
//       Index: 272,
//     ),
//     Player(
//       playerName: 'Teun Koopmeiners',
//       nation: 'NED',
//       Index: 273,
//     ),
//     Player(
//       playerName: 'Branco van den Boomen',
//       nation: 'NED',
//       Index: 274,
//     ),
//     Player(
//       playerName: 'Jeremie Frimpong',
//       nation: 'NED',
//       Index: 275,
//     ),
//     Player(playerName: 'Danilho Doekhi', nation: 'NED', Index: 276)
//   ],
//   'NGA': [
//     Player(
//       playerName: 'Victor Osimhen',
//       nation: 'NGA',
//       Index: 277,
//     ),
//     Player(
//       playerName: 'Ademola Lookman',
//       nation: 'NGA',
//       Index: 278,
//     ),
//     Player(
//       playerName: 'Terem Moffi',
//       nation: 'NGA',
//       Index: 279,
//     ),
//     Player(
//       playerName: 'David Okereke',
//       nation: 'NGA',
//       Index: 280,
//     ),
//     Player(playerName: 'Moses Simon', nation: 'NGA', Index: 281)
//   ],
//   'NIR': [
//     Player(
//       playerName: 'Jonny Evans',
//       nation: 'NIR',
//       Index: 282,
//     ),
//     Player(
//       playerName: 'Jamal Lewis',
//       nation: 'NIR',
//       Index: 283,
//     ),
//     Player(playerName: 'Isaac Price', nation: 'NIR', Index: 284)
//   ],
//   'NOR': [
//     Player(
//       playerName: 'Erling Haaland',
//       nation: 'NOR',
//       Index: 285,
//     ),
//     Player(
//       playerName: 'Alexander Sorloth',
//       nation: 'NOR',
//       Index: 286,
//     ),
//     Player(
//       playerName: 'Martin Odegaard',
//       nation: 'NOR',
//       Index: 287,
//     ),
//     Player(
//       playerName: 'Jorgen Strand Larsen',
//       nation: 'NOR',
//       Index: 288,
//     ),
//     Player(playerName: 'Erik Botheim', nation: 'NOR', Index: 289)
//   ],
//   'NZL': [
//     Player(
//       playerName: 'Chris Wood',
//       nation: 'NZL',
//       Index: 290,
//     ),
//     Player(
//       playerName: 'Liberato Cacace',
//       nation: 'NZL',
//       Index: 291,
//     ),
//     Player(playerName: 'Chris Wood', nation: 'NZL', Index: 292)
//   ],
//   'ROU': [
//     Player(
//       playerName: 'Rzvan Marin',
//       nation: 'ROU',
//       Index: 311,
//     ),
//     Player(
//       playerName: 'Vlad Chiriche',
//       nation: 'ROU',
//       Index: 312,
//     ),
//     Player(
//       playerName: 'Rareth Ilie',
//       nation: 'ROU',
//       Index: 313,
//     ),
//     Player(
//       playerName: 'Andreas Ivan',
//       nation: 'ROU',
//       Index: 314,
//     ),
//     Player(playerName: 'Ionu Radu', nation: 'ROU', Index: 315)
//   ],
//   'RSA': [Player(playerName: 'Lebo Mothiba', nation: 'RSA', Index: 316)],
//   'RUS': [
//     Player(
//       playerName: 'Aleksandr Golovin',
//       nation: 'RUS',
//       Index: 317,
//     ),
//     Player(
//       playerName: 'Aleksei Miranchuk',
//       nation: 'RUS',
//       Index: 318,
//     ),
//     Player(playerName: 'Andrey Lunyov', nation: 'RUS', Index: 319)
//   ],
//   'SCO': [
//     Player(
//       playerName: 'Che Adams',
//       nation: 'SCO',
//       Index: 320,
//     ),
//     Player(
//       playerName: 'Lewis Ferguson',
//       nation: 'SCO',
//       Index: 321,
//     ),
//     Player(
//       playerName: 'Oliver Burke',
//       nation: 'SCO',
//       Index: 322,
//     ),
//     Player(
//       playerName: 'Josh Doig',
//       nation: 'SCO',
//       Index: 323,
//     ),
//     Player(playerName: 'Stuart Armstrong', nation: 'SCO', Index: 324)
//   ],
//   'SEN': [
//     Player(
//       playerName: 'Habib Diallo',
//       nation: 'SEN',
//       Index: 325,
//     ),
//     Player(
//       playerName: 'Boulaye Dia',
//       nation: 'SEN',
//       Index: 326,
//     ),
//     Player(
//       playerName: 'Sadio Mane',
//       nation: 'SEN',
//       Index: 327,
//     ),
//     Player(
//       playerName: "M'Baye Niang",
//       nation: 'SEN',
//       Index: 328,
//     ),
//     Player(playerName: 'Krepin Diatta', nation: 'SEN', Index: 329)
//   ],
//   'SLE': [Player(playerName: 'Yayah Kallon', nation: 'SLE', Index: 330)],
//   'SRB': [
//     Player(
//       playerName: 'Aleksandar Mitrovi',
//       nation: 'SRB',
//       Index: 331,
//     ),
//     Player(
//       playerName: 'Duan Vlahovi',
//       nation: 'SRB',
//       Index: 332,
//     ),
//     Player(
//       playerName: 'Komnen Andri',
//       nation: 'SRB',
//       Index: 333,
//     ),
//     Player(
//       playerName: 'Sergej Milinkovi-Savi',
//       nation: 'SRB',
//       Index: 334,
//     ),
//     Player(playerName: 'Luka Jovi', nation: 'SRB', Index: 335)
//   ],
//   'SUI': [
//     Player(
//       playerName: 'Breel Embolo',
//       nation: 'SUI',
//       Index: 336,
//     ),
//     Player(
//       playerName: 'Granit Xhaka',
//       nation: 'SUI',
//       Index: 337,
//     ),
//     Player(
//       playerName: 'Nico Elvedi',
//       nation: 'SUI',
//       Index: 338,
//     ),
//     Player(
//       playerName: 'Djibril Sow',
//       nation: 'SUI',
//       Index: 339,
//     ),
//     Player(playerName: 'Silvan Widmer', nation: 'SUI', Index: 340)
//   ],
//   'SUR': [Player(playerName: 'Sheraldo Becker', nation: 'SUR', Index: 341)],
//   'SVK': [
//     Player(
//       playerName: 'Stanislav Lobotka',
//       nation: 'SVK',
//       Index: 342,
//     ),
//     Player(
//       playerName: 'Ondrej Duda',
//       nation: 'SVK',
//       Index: 343,
//     ),
//     Player(
//       playerName: 'Ondrej Duda',
//       nation: 'SVK',
//       Index: 344,
//     ),
//     Player(
//       playerName: 'Norbert Gyomber',
//       nation: 'SVK',
//       Index: 345,
//     ),
//     Player(playerName: 'peter Pekarik', nation: 'SVK', Index: 346)
//   ],
//   'SVN': [
//     Player(
//       playerName: 'Jaka Bijol',
//       nation: 'SVN',
//       Index: 347,
//     ),
//     Player(
//       playerName: 'Miha Blai',
//       nation: 'SVN',
//       Index: 348,
//     ),
//     Player(
//       playerName: 'Sandi Lovri',
//       nation: 'SVN',
//       Index: 349,
//     ),
//     Player(
//       playerName: 'Tio Cipot',
//       nation: 'SVN',
//       Index: 350,
//     ),
//     Player(playerName: 'Domen rnigoj', nation: 'SVN', Index: 351)
//   ],
//   'SWE': [
//     Player(
//       playerName: 'Alexander Isak',
//       nation: 'SWE',
//       Index: 352,
//     ),
//     Player(
//       playerName: 'Emil Forsberg',
//       nation: 'SWE',
//       Index: 353,
//     ),
//     Player(
//       playerName: 'Dejan Kulusevski',
//       nation: 'SWE',
//       Index: 354,
//     ),
//     Player(
//       playerName: 'Mattias Svanberg',
//       nation: 'SWE',
//       Index: 355,
//     ),
//     Player(playerName: 'Jens Cajuste', nation: 'SWE', Index: 356)
//   ],
//   'TOG': [
//     Player(
//       playerName: 'Ihlas Bebou',
//       nation: 'TOG',
//       Index: 357,
//     ),
//     Player(
//       playerName: 'Lorenz Assignon',
//       nation: 'TOG',
//       Index: 358,
//     ),
//     Player(
//       playerName: 'Djene',
//       nation: 'TOG',
//       Index: 359,
//     ),
//     Player(
//       playerName: 'Dikeni Salifou',
//       nation: 'TOG',
//       Index: 360,
//     ),
//     Player(playerName: 'Marvin Senaya', nation: 'TOG', Index: 361)
//   ],
//   'TUN': [
//     Player(
//       playerName: 'Ellyes Skhiri',
//       nation: 'TUN',
//       Index: 362,
//     ),
//     Player(
//       playerName: 'Saif-Eddine Khaoui',
//       nation: 'TUN',
//       Index: 363,
//     ),
//     Player(
//       playerName: 'Wahbi Khazri',
//       nation: 'TUN',
//       Index: 364,
//     ),
//     Player(
//       playerName: 'Montassar Talbi',
//       nation: 'TUN',
//       Index: 365,
//     ),
//     Player(playerName: 'Dylan Bronn', nation: 'TUN', Index: 366)
//   ],
//   'TUR': [
//     Player(
//       playerName: 'Enes Unal',
//       nation: 'TUR',
//       Index: 367,
//     ),
//     Player(
//       playerName: 'Hakan Calhanodlu',
//       nation: 'TUR',
//       Index: 368,
//     ),
//     Player(
//       playerName: 'Ozan Kabak',
//       nation: 'TUR',
//       Index: 369,
//     ),
//     Player(
//       playerName: 'Merih Demiral',
//       nation: 'TUR',
//       Index: 370,
//     ),
//     Player(playerName: 'Cengiz Under', nation: 'TUR', Index: 371)
//   ],
//   'UKR': [
//     Player(
//       playerName: 'Ruslan Malinovskyi',
//       nation: 'UKR',
//       Index: 372,
//     ),
//     Player(
//       playerName: 'Ruslan Malinovskyi',
//       nation: 'UKR',
//       Index: 373,
//     ),
//     Player(
//       playerName: 'Viktor Kovalenko',
//       nation: 'UKR',
//       Index: 374,
//     ),
//     Player(
//       playerName: 'Andriy Lunin',
//       nation: 'UKR',
//       Index: 375,
//     ),
//     Player(playerName: 'Mykhailo Mudryk', nation: 'UKR', Index: 376)
//   ],
//   'URU': [
//     Player(
//       playerName: 'Federico Valverde',
//       nation: 'URU',
//       Index: 377,
//     ),
//     Player(
//       playerName: 'Rodrigo Bentancur',
//       nation: 'URU',
//       Index: 378,
//     ),
//     Player(
//       playerName: 'Edinson Cavani',
//       nation: 'URU',
//       Index: 379,
//     ),
//     Player(
//       playerName: 'Darwin Nunez',
//       nation: 'URU',
//       Index: 380,
//     ),
//     Player(playerName: 'Cristhian Stuani', nation: 'URU', Index: 381)
//   ],
//   'USA': [
//     Player(
//       playerName: 'Gio Reyna',
//       nation: 'USA',
//       Index: 382,
//     ),
//     Player(
//       playerName: 'Jordan Pefok',
//       nation: 'USA',
//       Index: 383,
//     ),
//     Player(
//       playerName: 'Brenden Aaronson',
//       nation: 'USA',
//       Index: 384,
//     ),
//     Player(
//       playerName: 'Weston McKennie',
//       nation: 'USA',
//       Index: 385,
//     ),
//     Player(playerName: 'Kevin Paredes', nation: 'USA', Index: 386)
//   ],
//   'UZB': [
//     Player(
//       playerName: 'Eldor Shomurodov',
//       nation: 'UZB',
//       Index: 387,
//     ),
//     Player(playerName: 'Eldor Shomurodov', nation: 'UZB', Index: 388)
//   ],
//   'VEN': [
//     Player(
//       playerName: 'Yangel Herrera',
//       nation: 'VEN',
//       Index: 389,
//     ),
//     Player(
//       playerName: 'Darwin Machis',
//       nation: 'VEN',
//       Index: 390,
//     ),
//     Player(
//       playerName: 'Tomas Rincon',
//       nation: 'VEN',
//       Index: 391,
//     ),
//     Player(playerName: 'Salomon Rondon', nation: 'VEN', Index: 392)
//   ],
//   'WAL': [
//     Player(
//       playerName: 'Brennan Johnson',
//       nation: 'WAL',
//       Index: 393,
//     ),
//     Player(
//       playerName: 'Kieffer Moore',
//       nation: 'WAL',
//       Index: 394,
//     ),
//     Player(
//       playerName: 'Ben Davies',
//       nation: 'WAL',
//       Index: 395,
//     ),
//     Player(
//       playerName: 'Rhys Healey',
//       nation: 'WAL',
//       Index: 396,
//     ),
//     Player(playerName: 'Daniel James', nation: 'WAL', Index: 397)
//   ],
//   'ZAM': [
//     Player(
//       playerName: 'patson Daka',
//       nation: 'ZAM',
//       Index: 398,
//     ),
//     Player(
//       playerName: 'Lameck Banda',
//       nation: 'ZAM',
//       Index: 399,
//     ),
//     Player(playerName: 'Enock Mwepu', nation: 'ZAM', Index: 400)
//   ],
//   'ZIM': [
//     Player(
//       playerName: 'Marshall Munetsi',
//       nation: 'ZIM',
//       Index: 401,
//     ),
//     Player(
//       playerName: 'Tino Kadewere',
//       nation: 'ZIM',
//       Index: 402,
//     ),
//     Player(playerName: 'Jordan Zemura', nation: 'ZIM', Index: 403)
//   ]
// };

List<Country> COUNTRIES = [
  Country(id: 0, name: 'Argentina'),
  Country(id: 1, name: 'Italy'),
  Country(id: 2, name: 'Brazil'),
  Country(id: 3, name: 'France'),
  Country(id: 4, name: 'Spain'),
  Country(id: 5, name: 'Belgium'),
  Country(id: 6, name: 'Colombia'),
  Country(id: 7, name: 'Croatia'),
  Country(id: 8, name: 'Canada'),
  Country(id: 9, name: 'Russia'),
  Country(id: 10, name: 'Denmark'),
  Country(id: 11, name: 'Portugal'),
  Country(id: 12, name: 'Netherlands'),
  Country(id: 13, name: 'Germany')
];

const Map<String, List<String>> playersByCountry = {
  "Argentina": [
    "L. Messi",
    "A. Correa",
    "L. Biglia",
    "G. Rulli",
    "J. Correa",
    "L. Paredes",
    "I. Marcone",
    "M. Zaracho",
    "M. Vargas",
    "G. Simeone",
    "L. Miranda",
    "J. Palomino"
  ],
  "Italy": [
    "L. Insigne",
    "M. Politano",
    "A. Izzo",
    "N. Barella",
    "M. Caldara",
    "B. Cristante",
    "D. Berardi",
    "R. Gagliardini",
    "V. Grifo",
    "R. Soriano",
    "Emerson",
    "M. Benassi"
  ],
  "Brazil": [
    "Neymar Jr",
    "Fernandinho",
    "Roberto Firmino",
    "Alex Sandro",
    "Felipe Anderson",
    "Lucas Leiva",
    "Anderson Talisca",
    "Lucas Moura",
    "Raphaelito Anjos",
    "Juiano Mestres",
    "Renato Augusto",
    "Laure Santeiro"
  ],
  "France": [
    "S. Umtiti",
    "B. Matuidi",
    "C. Tolisso",
    "A. Rabiot",
    "J. Roussillon",
    "I. Amadou",
    "J. Veretout",
    "F. Tait",
    "G. Hoarau",
    "C. Grenier",
    "A. Djiku",
    "L. Kurzawa"
  ],
  "Spain": [
    "David Silva",
    "Iago Aspas",
    "Luis Alberto",
    "David Soria",
    "Sergi Roberto",
    "Dani Ceballos",
    "Jordi Masip",
    "Gerard Moreno",
    "Carlos Soler",
    "Sergi Darder",
    "Manu Trigueros",
    "Cristian Tello"
  ],
  "Belgium": [
    "E. Hazard",
    "K. De Bruyne",
    "D. Mertens",
    "T. Alderweireld",
    "Y. Carrasco",
    "R. Nainggolan",
    "Y. Tielemans",
    "A. Januzaj",
    "S. Mignolet",
    "L. Dimata",
    "S. Dewaest",
    "N. Chadli"
  ],
  "Colombia": [
    "J. Cuadrado",
    "C. Bacca",
    "F. Fabra",
    "C. Vargas",
    "E. Cardona",
    "G. Moreno",
    "J. Izquierdo",
    "J. Lucumi",
    "H. Rodallega",
    "O. Murillo",
    "H. Preciado",
    "A. Aguilar"
  ],
  "Croatia": [
    "D. Lovren",
    "D. Vida",
    "J. Brekalo",
    "M. Livaja",
    "T. Jedvaj",
    "M. Pjaca",
    "M. Rog",
    "D. Kreilach",
    "L. Majer",
    "S. Perica",
    "A. Budimir",
    "A. Palaversa"
  ],
  "Canada": [
    "J. David",
    "L. Cavallini",
    "S. Arfield",
    "J. Hoilett",
    "A. Davies",
    "M. James",
    "R. Teibert",
    "B. Tabla",
    "R. Edwards",
    "L. Fraser",
    "J. Chapman",
    "S. Shome"
  ],
  "Russia": [
    "F. Smolov",
    "R. Zobnin",
    "A. Selikhov",
    "D. Kuzyaev",
    "F. Chalov",
    "V. Vasin",
    "I. Oblyakov",
    "A. Rebrov",
    "A. Eschenko",
    "F. Kudryashov",
    "K. Nababkin",
    "D. Barinov"
  ],
  "Denmark": [
    "C. Eriksen",
    "T. Delaney",
    "A. Christensen",
    "D. Wass",
    "J. Vestergaard",
    "V. Fischer",
    "J. Larsen",
    "M. Jensen",
    "J. Hansen",
    "P. Billing",
    "A. Bjelland",
    "J. Larsen"
  ],
  "Portugal": [
    "Cristiano Ronaldo",
    "Bruno Fernandes",
    "A. Lopes",
    "Danilo Pereira",
    "Gelson Martins",
    "Ricardo Pereira",
    "Daniel Podence",
    "Pedro Mendes",
    "Adrien Silva",
    "Miguel Veloso",
    "Gedson Fernandes",
    "Diogo Viana"
  ],
  "Netherlands": [
    "V. van Dijk",
    "S. de Vrij",
    "D. Blind",
    "B. Dost",
    "Q. Promes",
    "J. Zoet",
    "T. Vilhena",
    "H. Hateboer",
    "P. Rosario",
    "M. Bizot",
    "K. Huntelaar",
    "D. Janmaat"
  ],
  "Germany": [
    "T. Kroos",
    "M. Reus",
    "J. Kimmich",
    "K. Havertz",
    "B. Leno",
    "J. Boateng",
    "T. Werner",
    "K. Trapp",
    "S. Khedira",
    "K. Demirbay",
    "O. Baumann",
    "N. Schulz"
  ],
  "Mexico": [
    "H. Herrera",
    "J. Corona",
    "G. Ochoa",
    "H. Moreno",
    "R. Pizarro",
    "C. Salcedo",
    "D. Reyes",
    "J. Orozco",
    "J. Corona",
    "H. Ayala",
    "R. Cota",
    "J. Aquino"
  ],
};

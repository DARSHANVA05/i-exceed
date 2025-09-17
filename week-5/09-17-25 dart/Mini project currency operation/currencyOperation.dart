import 'dart:convert';
import "dart:io";

void main() {
  //json data
  //convertion into map by decoding the json data

  String jsonData = '''
  {
  "Afghanistan": {
    "currency": "Afghan afghani",
    "code": "AFN",
    "unicode": "Pul",
    "decimals": 2
  },
  "Albania": {
    "currency": "Albanian lek",
    "code": "ALL",
    "unicode": "Qindarkë",
    "decimals": 2
  },
  "Algeria": {
    "currency": "Algerian dinar",
    "code": "DZD",
    "unicode": "Santeem",
    "decimals": 2
  },
  "Andorra": {
    "currency": "Euro",
    "code": "EUR",
    "unicode": "Cent",
    "decimals": 2
  },
  "Angola": {
    "currency": "Angolan kwanza",
    "code": "AOA",
    "unicode": "Cêntimo",
    "decimals": 2
  },
  "Antigua and Barbuda": {
    "currency": "East Caribbean dollar",
    "code": "XCD",
    "unicode": "Cent",
    "decimals": 2
  },
  "Argentina": {
    "currency": "Argentine peso",
    "code": "ARS",
    "unicode": "Centavo",
    "decimals": 2
  },
  "Armenia": {
    "currency": "Armenian dram",
    "code": "AMD",
    "unicode": "Luma",
    "decimals": 2
  },
  "Australia": {
    "currency": "Australian dollar",
    "code": "AUD",
    "unicode": "Cent",
    "decimals": 2
  },
  "Austria": {
    "currency": "Euro",
    "code": "EUR",
    "unicode": "Cent",
    "decimals": 2
  },
  "Azerbaijan": {
    "currency": "Azerbaijani manat",
    "code": "AZN",
    "unicode": "Qəpik",
    "decimals": 2
  },
  "Bahamas": {
    "currency": "Bahamian dollar",
    "code": "BSD",
    "unicode": "Cent",
    "decimals": 2
  },
  "Bahrain": {
    "currency": "Bahraini dinar",
    "code": "BHD",
    "unicode": "Fils",
    "decimals": 3
  },
  "Bangladesh": {
    "currency": "Bangladeshi taka",
    "code": "BDT",
    "unicode": "Poisha",
    "decimals": 2
  },
  "Barbados": {
    "currency": "Barbadian dollar",
    "code": "BBD",
    "unicode": "Cent",
    "decimals": 2
  },
  "Belarus": {
    "currency": "Belarusian ruble",
    "code": "BYN",
    "unicode": "Kopeck",
    "decimals": 2
  },
  "Belgium": {
    "currency": "Euro",
    "code": "EUR",
    "unicode": "Cent",
    "decimals": 2
  },
  "Belize": {
    "currency": "Belize dollar",
    "code": "BZD",
    "unicode": "Cent",
    "decimals": 2
  },
  "Benin": {
    "currency": "West African CFA franc",
    "code": "XOF",
    "unicode": "Centime",
    "decimals": 0
  },
  "Bhutan": {
    "currency": "Bhutanese ngultrum",
    "code": "BTN",
    "unicode": "Chetrum",
    "decimals": 2
  },
  "Bolivia": {
    "currency": "Bolivian boliviano",
    "code": "BOB",
    "unicode": "Centavo",
    "decimals": 2
  },
  "Bosnia and Herzegovina": {
    "currency": "Convertible mark",
    "code": "BAM",
    "unicode": "Fening",
    "decimals": 2
  },
  "Botswana": {
    "currency": "Botswana pula",
    "code": "BWP",
    "unicode": "Thebe",
    "decimals": 2
  },
  "Brazil": {
    "currency": "Brazilian real",
    "code": "BRL",
    "unicode": "Centavo",
    "decimals": 2
  },
  "Brunei": {
    "currency": "Brunei dollar",
    "code": "BND",
    "unicode": "Sen",
    "decimals": 2
  },
  "Bulgaria": {
    "currency": "Bulgarian lev",
    "code": "BGN",
    "unicode": "Stotinka",
    "decimals": 2
  },
  "Burkina Faso": {
    "currency": "West African CFA franc",
    "code": "XOF",
    "unicode": "Centime",
    "decimals": 0
  },
  "Burundi": {
    "currency": "Burundian franc",
    "code": "BIF",
    "unicode": "Centime",
    "decimals": 0
  },
  "Cambodia": {
    "currency": "Cambodian riel",
    "code": "KHR",
    "unicode": "Sen",
    "decimals": 2
  },
  "Cameroon": {
    "currency": "Central African CFA franc",
    "code": "XAF",
    "unicode": "Centime",
    "decimals": 0
  },
  "Canada": {
    "currency": "Canadian dollar",
    "code": "CAD",
    "unicode": "Cent",
    "decimals": 2
  },
  "Cape Verde": {
    "currency": "Cape Verdean escudo",
    "code": "CVE",
    "unicode": "Centavo",
    "decimals": 2
  },
  "Central African Republic": {
    "currency": "Central African CFA franc",
    "code": "XAF",
    "unicode": "Centime",
    "decimals": 0
  },
  "Chad": {
    "currency": "Central African CFA franc",
    "code": "XAF",
    "unicode": "Centime",
    "decimals": 0
  },
  "Chile": {
    "currency": "Chilean peso",
    "code": "CLP",
    "unicode": "Centavo",
    "decimals": 0
  },
  "China": {
    "currency": "Chinese yuan",
    "code": "CNY",
    "unicode": "Fen",
    "decimals": 2
  },
  "Colombia": {
    "currency": "Colombian peso",
    "code": "COP",
    "unicode": "Centavo",
    "decimals": 2
  },
  "Comoros": {
    "currency": "Comorian franc",
    "code": "KMF",
    "unicode": "Centime",
    "decimals": 0
  },
  "Congo (Brazzaville)": {
    "currency": "Central African CFA franc",
    "code": "XAF",
    "unicode": "Centime",
    "decimals": 0
  },
  "Congo (Kinshasa)": {
    "currency": "Congolese franc",
    "code": "CDF",
    "unicode": "Centime",
    "decimals": 2
  },
  "Costa Rica": {
    "currency": "Costa Rican colón",
    "code": "CRC",
    "unicode": "Céntimo",
    "decimals": 2
  },
  "Croatia": {
    "currency": "Euro",
    "code": "EUR",
    "unicode": "Cent",
    "decimals": 2
  },
  "Cuba": {
    "currency": "Cuban peso",
    "code": "CUP",
    "unicode": "Centavo",
    "decimals": 2
  },
  "Cyprus": {
    "currency": "Euro",
    "code": "EUR",
    "unicode": "Cent",
    "decimals": 2
  },
  "Czech Republic": {
    "currency": "Czech koruna",
    "code": "CZK",
    "unicode": "Haléř",
    "decimals": 2
  },
  "Denmark": {
    "currency": "Danish krone",
    "code": "DKK",
    "unicode": "Øre",
    "decimals": 2
  },
  "Djibouti": {
    "currency": "Djiboutian franc",
    "code": "DJF",
    "unicode": "Centime",
    "decimals": 0
  },
  "Dominica": {
    "currency": "East Caribbean dollar",
    "code": "XCD",
    "unicode": "Cent",
    "decimals": 2
  },
  "Dominican Republic": {
    "currency": "Dominican peso",
    "code": "DOP",
    "unicode": "Centavo",
    "decimals": 2
  },
  "Ecuador": {
    "currency": "United States dollar",
    "code": "USD",
    "unicode": "Cent",
    "decimals": 2
  },
  "Egypt": {
    "currency": "Egyptian pound",
    "code": "EGP",
    "unicode": "Piastre",
    "decimals": 2
  },
  "El Salvador": {
    "currency": "United States dollar",
    "code": "USD",
    "unicode": "Cent",
    "decimals": 2
  },
  "Equatorial Guinea": {
    "currency": "Central African CFA franc",
    "code": "XAF",
    "unicode": "Centime",
    "decimals": 0
  },
  "Eritrea": {
    "currency": "Eritrean nakfa",
    "code": "ERN",
    "unicode": "Cent",
    "decimals": 2
  },
  "Estonia": {
    "currency": "Euro",
    "code": "EUR",
    "unicode": "Cent",
    "decimals": 2
  },
  "Eswatini": {
    "currency": "Swazi lilangeni",
    "code": "SZL",
    "unicode": "Cent",
    "decimals": 2
  },
  "Ethiopia": {
    "currency": "Ethiopian birr",
    "code": "ETB",
    "unicode": "Santim",
    "decimals": 2
  },
  "Fiji": {
    "currency": "Fijian dollar",
    "code": "FJD",
    "unicode": "Cent",
    "decimals": 2
  },
  "Finland": {
    "currency": "Euro",
    "code": "EUR",
    "unicode": "Cent",
    "decimals": 2
  },
  "France": {
    "currency": "Euro",
    "code": "EUR",
    "unicode": "Cent",
    "decimals": 2
  },
  "Gabon": {
    "currency": "Central African CFA franc",
    "code": "XAF",
    "unicode": "Centime",
    "decimals": 0
  },
  "Gambia": {
    "currency": "Gambian dalasi",
    "code": "GMD",
    "unicode": "Butut",
    "decimals": 2
  },
  "Georgia": {
    "currency": "Georgian lari",
    "code": "GEL",
    "unicode": "tetri",
    "decimals": 2
  },
  "Germany": {
    "currency": "Euro",
    "code": "EUR",
    "unicode": "Cent",
    "decimals": 2
  },
  "Ghana": {
    "currency": "Ghanaian cedi",
    "code": "GHS",
    "unicode": "Pesewa",
    "decimals": 2
  },
  "Greece": {
    "currency": "Euro",
    "code": "EUR",
    "unicode": "Cent",
    "decimals": 2
  },
  "Grenada": {
    "currency": "East Caribbean dollar",
    "code": "XCD",
    "unicode": "Cent",
    "decimals": 2
  },
  "Guatemala": {
    "currency": "Guatemalan quetzal",
    "code": "GTQ",
    "unicode": "Centavo",
    "decimals": 2
  },
  "Guinea": {
    "currency": "Guinean franc",
    "code": "GNF",
    "unicode": "Centime",
    "decimals": 0
  },
  "Guinea-Bissau": {
    "currency": "West African CFA franc",
    "code": "XOF",
    "unicode": "Centime",
    "decimals": 0
  },
  "Guyana": {
    "currency": "Guyanese dollar",
    "code": "GYD",
    "unicode": "Cent",
    "decimals": 2
  },
  "Haiti": {
    "currency": "Haitian gourde",
    "code": "HTG",
    "unicode": "Centime",
    "decimals": 2
  },
  "Honduras": {
    "currency": "Honduran lempira",
    "code": "HNL",
    "unicode": "Centavo",
    "decimals": 2
  },
  "Hungary": {
    "currency": "Hungarian forint",
    "code": "HUF",
    "unicode": "Fillér",
    "decimals": 2
  },
  "Iceland": {
    "currency": "Icelandic króna",
    "code": "ISK",
    "unicode": "Eyrir",
    "decimals": 0
  },
  "India": {
    "currency": "Indian rupee",
    "code": "INR",
    "unicode": "Paisa",
    "decimals": 2
  },
  "Indonesia": {
    "currency": "Indonesian rupiah",
    "code": "IDR",
    "unicode": "Sen",
    "decimals": 2
  },
  "Iran": {
    "currency": "Iranian rial",
    "code": "IRR",
    "unicode": "Rial (no minor unit)",
    "decimals": 2
  },
  "Iraq": {
    "currency": "Iraqi dinar",
    "code": "IQD",
    "unicode": "Fils",
    "decimals": 3
  },
  "Ireland": {
    "currency": "Euro",
    "code": "EUR",
    "unicode": "Cent",
    "decimals": 2
  },
  "Israel": {
    "currency": "Israeli new shekel",
    "code": "ILS",
    "unicode": "Agora",
    "decimals": 2
  },
  "Italy": {
    "currency": "Euro",
    "code": "EUR",
    "unicode": "Cent",
    "decimals": 2
  },
  "Jamaica": {
    "currency": "Jamaican dollar",
    "code": "JMD",
    "unicode": "Cent",
    "decimals": 2
  },
  "Japan": {
    "currency": "Japanese yen",
    "code": "JPY",
    "unicode": "Sen",
    "decimals": 0
  },
  "Jordan": {
    "currency": "Jordanian dinar",
    "code": "JOD",
    "unicode": "Piastre",
    "decimals": 3
  },
  "Kazakhstan": {
    "currency": "Kazakhstani tenge",
    "code": "KZT",
    "unicode": "Tiyn",
    "decimals": 2
  },
  "Kenya": {
    "currency": "Kenyan shilling",
    "code": "KES",
    "unicode": "Cent",
    "decimals": 2
  },
  "Kiribati": {
    "currency": "Australian dollar",
    "code": "AUD",
    "unicode": "Cent",
    "decimals": 2
  },
  "Kuwait": {
    "currency": "Kuwaiti dinar",
    "code": "KWD",
    "unicode": "Fils",
    "decimals": 3
  },
  "Kyrgyzstan": {
    "currency": "Kyrgyzstani som",
    "code": "KGS",
    "unicode": "som",
    "decimals": 2
  },
  "Laos": {
    "currency": "Lao kip",
    "code": "LAK",
    "unicode": "Att",
    "decimals": 2
  },
  "Latvia": {
    "currency": "Euro",
    "code": "EUR",
    "unicode": "Cent",
    "decimals": 2
  },
  "Lebanon": {
    "currency": "Lebanese pound",
    "code": "LBP",
    "unicode": "Piastre",
    "decimals": 2
  },
  "Lesotho": {
    "currency": "Lesotho loti",
    "code": "LSL",
    "unicode": "Sente",
    "decimals": 2
  },
  "Liberia": {
    "currency": "Liberian dollar",
    "code": "LRD",
    "unicode": "Cent",
    "decimals": 2
  },
  "Libya": {
    "currency": "Libyan dinar",
    "code": "LYD",
    "unicode": "Dirham",
    "decimals": 3
  },
  "Liechtenstein": {
    "currency": "Swiss franc",
    "code": "CHF",
    "unicode": "Fr",
    "decimals": 2
  },
  "Lithuania": {
    "currency": "Euro",
    "code": "EUR",
    "unicode": "Cent",
    "decimals": 2
  },
  "Luxembourg": {
    "currency": "Euro",
    "code": "EUR",
    "unicode": "Cent",
    "decimals": 2
  },
  "Madagascar": {
    "currency": "Malagasy ariary",
    "code": "MGA",
    "unicode": "Iraimbilanja",
    "decimals": 2
  },
  "Malawi": {
    "currency": "Malawian kwacha",
    "code": "MWK",
    "unicode": "Tambala",
    "decimals": 2
  },
  "Malaysia": {
    "currency": "Malaysian ringgit",
    "code": "MYR",
    "unicode": "Sen",
    "decimals": 2
  },
  "Maldives": {
    "currency": "Maldivian rufiyaa",
    "code": "MVR",
    "unicode": "Laari",
    "decimals": 2
  },
  "Mali": {
    "currency": "West African CFA franc",
    "code": "XOF",
    "unicode": "Centime",
    "decimals": 0
  },
  "Malta": {
    "currency": "Euro",
    "code": "EUR",
    "unicode": "Cent",
    "decimals": 2
  },
  "Marshall Islands": {
    "currency": "United States dollar",
    "code": "USD",
    "unicode": "Cent",
    "decimals": 2
  },
  "Mauritania": {
    "currency": "Mauritanian ouguiya",
    "code": "MRU",
    "unicode": "Khoums",
    "decimals": 2
  },
  "Mauritius": {
    "currency": "Mauritian rupee",
    "code": "MUR",
    "unicode": "Cent",
    "decimals": 2
  },
  "Mexico": {
    "currency": "Mexican peso",
    "code": "MXN",
    "unicode": "Centavo",
    "decimals": 2
  },
  "Micronesia": {
    "currency": "United States dollar",
    "code": "USD",
    "unicode": "Cent",
    "decimals": 2
  },
  "Moldova": {
    "currency": "Moldovan leu",
    "code": "MDL",
    "unicode": "ban",
    "decimals": 2
  },
  "Monaco": {
    "currency": "Euro",
    "code": "EUR",
    "unicode": "Cent",
    "decimals": 2
  },
  "Mongolia": {
    "currency": "Mongolian tögrög",
    "code": "MNT",
    "unicode": "₮(möngö)",
    "decimals": 2
  },
  "Montenegro": {
    "currency": "Euro",
    "code": "EUR",
    "unicode": "Cent",
    "decimals": 2
  },
  "Morocco": {
    "currency": "Moroccan dirham",
    "code": "MAD",
    "unicode": "د.م.(santim)",
    "decimals": 2
  },
  "Mozambique": {
    "currency": "Mozambican metical",
    "code": "MZN",
    "unicode": "Centavo",
    "decimals": 2
  },
  "Myanmar": {
    "currency": "Burmese kyat",
    "code": "MMK",
    "unicode": "pyas",
    "decimals": 2
  },
  "Namibia": {
    "currency": "Namibian dollar",
    "code": "NAD",
    "unicode": "Cent",
    "decimals": 2
  },
  "Nauru": {
    "currency": "Australian dollar",
    "code": "AUD",
    "unicode": "Cent",
    "decimals": 2
  },
  "Nepal": {
    "currency": "Nepalese rupee",
    "code": "NPR",
    "unicode": "Paisa",
    "decimals": 2
  },
  "Netherlands": {
    "currency": "Euro",
    "code": "EUR",
    "unicode": "Cent",
    "decimals": 2
  },
  "New Zealand": {
    "currency": "New Zealand dollar",
    "code": "NZD",
    "unicode": "Cent",
    "decimals": 2
  },
  "Nicaragua": {
    "currency": "Nicaraguan córdoba",
    "code": "NIO",
    "unicode": "Centavo",
    "decimals": 2
  },
  "Niger": {
    "currency": "West African CFA franc",
    "code": "XOF",
    "unicode": "Centime",
    "decimals": 0
  },
  "Nigeria": {
    "currency": "Nigerian naira",
    "code": "NGN",
    "unicode": "Kobo",
    "decimals": 2
  },
  "North Korea": {
    "currency": "North Korean won",
    "code": "KPW",
    "unicode": "Chon",
    "decimals": 2
  },
  "North Macedonia": {
    "currency": "Macedonian denar",
    "code": "MKD",
    "unicode": "Deni",
    "decimals": 2
  },
  "Norway": {
    "currency": "Norwegian krone",
    "code": "NOK",
    "unicode": "Øre",
    "decimals": 2
  },
  "Oman": {
    "currency": "Omani rial",
    "code": "OMR",
    "unicode": "Baisa",
    "decimals": 3
  },
  "Pakistan": {
    "currency": "Pakistani rupee",
    "code": "PKR",
    "unicode": "Paisa",
    "decimals": 2
  },
  "Palau": {
    "currency": "United States dollar",
    "code": "USD",
    "unicode": "Cent",
    "decimals": 2
  },
  "Palestine": {
    "currency": "Israeli new shekel",
    "code": "ILS",
    "unicode": "Agora",
    "decimals": 2
  },
  "Panama": {
    "currency": "Panamanian balboa",
    "code": "PAB",
    "unicode": "Centésimo",
    "decimals": 2
  },
  "Papua New Guinea": {
    "currency": "Papua New Guinean kina",
    "code": "PGK",
    "unicode": "Toea",
    "decimals": 2
  },
  "Paraguay": {
    "currency": "Paraguayan guaraní",
    "code": "PYG",
    "unicode": "(No minor unit)",
    "decimals": 0
  },
  "Peru": {
    "currency": "Peruvian sol",
    "code": "PEN",
    "unicode": "Céntimo",
    "decimals": 2
  },
  "Philippines": {
    "currency": "Philippine peso",
    "code": "PHP",
    "unicode": "Sentimo",
    "decimals": 2
  },
  "Poland": {
    "currency": "Polish złoty",
    "code": "PLN",
    "unicode": "Grosz",
    "decimals": 2
  },
  "Portugal": {
    "currency": "Euro",
    "code": "EUR",
    "unicode": "Cent",
    "decimals": 2
  },
  "Qatar": {
    "currency": "Qatari riyal",
    "code": "QAR",
    "unicode": "Dirham",
    "decimals": 2
  },
  "Romania": {
    "currency": "Romanian leu",
    "code": "RON",
    "unicode": "Bani",
    "decimals": 2
  },
  "Russia": {
    "currency": "Russian ruble",
    "code": "RUB",
    "unicode": "Kopeck",
    "decimals": 2
  },
  "Rwanda": {
    "currency": "Rwandan franc",
    "code": "RWF",
    "unicode": "(No minor unit)",
    "decimals": 0
  },
  "Saint Kitts and Nevis": {
    "currency": "East Caribbean dollar",
    "code": "XCD",
    "unicode": "Cent",
    "decimals": 2
  },
  "Saint Lucia": {
    "currency": "East Caribbean dollar",
    "code": "XCD",
    "unicode": "Cent",
    "decimals": 2
  },
  "Saint Vincent and the Grenadines": {
    "currency": "East Caribbean dollar",
    "code": "XCD",
    "unicode": "Cent",
    "decimals": 2
  },
  "Samoa": {
    "currency": "Samoan tālā",
    "code": "WST",
    "unicode": "Sene",
    "decimals": 2
  },
  "San Marino": {
    "currency": "Euro",
    "code": "EUR",
    "unicode": "Cent",
    "decimals": 2
  },
  "Saudi Arabia": {
    "currency": "Saudi riyal",
    "code": "SAR",
    "unicode": "Halalah",
    "decimals": 2
  },
  "Senegal": {
    "currency": "West African CFA franc",
    "code": "XOF",
    "unicode": "Centime",
    "decimals": 0
  },
  "Serbia": {
    "currency": "Serbian dinar",
    "code": "RSD",
    "unicode": "Para",
    "decimals": 2
  },
  "Seychelles": {
    "currency": "Seychellois rupee",
    "code": "SCR",
    "unicode": "Cent",
    "decimals": 2
  },
  "Sierra Leone": {
    "currency": "Sierra Leonean leone",
    "code": "SLL",
    "unicode": "Cent",
    "decimals": 2
  },
  "Singapore": {
    "currency": "Singapore dollar",
    "code": "SGD",
    "unicode": "Cent",
    "decimals": 2
  },
  "Slovakia": {
    "currency": "Euro",
    "code": "EUR",
    "unicode": "Cent",
    "decimals": 2
  },
  "Slovenia": {
    "currency": "Euro",
    "code": "EUR",
    "unicode": "Cent",
    "decimals": 2
  },
  "Solomon Islands": {
    "currency": "Solomon Islands dollar",
    "code": "SBD",
    "unicode": "cent",
    "decimals": 2
  },
  "Somalia": {
    "currency": "Somali shilling",
    "code": "SOS",
    "unicode": "Cent",
    "decimals": 2
  },
  "South Africa": {
    "currency": "South African rand",
    "code": "ZAR",
    "unicode": "Cent",
    "decimals": 2
  },
  "South Korea": {
    "currency": "South Korean won",
    "code": "KRW",
    "unicode": "Jeon",
    "decimals": 0
  },
  "South Sudan": {
    "currency": "South Sudanese pound",
    "code": "SSP",
    "unicode": "Piaster",
    "decimals": 2
  },
  "Spain": {
    "currency": "Euro",
    "code": "EUR",
    "unicode": "Cent",
    "decimals": 2
  },
  "Sri Lanka": {
    "currency": "Sri Lankan rupee",
    "code": "LKR",
    "unicode": "cent",
    "decimals": 2
  },
  "Sudan": {
    "currency": "Sudanese pound",
    "code": "SDG",
    "unicode": "Piastre",
    "decimals": 2
  },
  "Suriname": {
    "currency": "Surinamese dollar",
    "code": "SRD",
    "unicode": "Cent",
    "decimals": 2
  },
  "Sweden": {
    "currency": "Swedish krona",
    "code": "SEK",
    "unicode": "Öre",
    "decimals": 2
  },
  "Switzerland": {
    "currency": "Swiss franc",
    "code": "CHF",
    "unicode": "Rappen",
    "decimals": 2
  },
  "Syria": {
    "currency": "Syrian pound",
    "code": "SYP",
    "unicode": "Piastre",
    "decimals": 2
  },
  "Taiwan": {
    "currency": "New Taiwan dollar",
    "code": "TWD",
    "unicode": "Cent",
    "decimals": 2
  },
  "Tajikistan": {
    "currency": "Tajikistani somoni",
    "code": "TJS",
    "unicode": "Diram",
    "decimals": 2
  },
  "Tanzania": {
    "currency": "Tanzanian shilling",
    "code": "TZS",
    "unicode": "Cent",
    "decimals": 2
  },
  "Thailand": {
    "currency": "Thai baht",
    "code": "THB",
    "unicode": "Satang",
    "decimals": 2
  },
  "Togo": {
    "currency": "West African CFA franc",
    "code": "XOF",
    "unicode": "Centime",
    "decimals": 0
  },
  "Tonga": {
    "currency": "Tongan paʻanga",
    "code": "TOP",
    "unicode": "Seniti",
    "decimals": 2
  },
  "Trinidad and Tobago": {
    "currency": "Trinidad and Tobago dollar",
    "code": "TTD",
    "unicode": "Cent",
    "decimals": 2
  },
  "Tunisia": {
    "currency": "Tunisian dinar",
    "code": "TND",
    "unicode": "Millime",
    "decimals": 3
  },
  "Turkey": {
    "currency": "Turkish lira",
    "code": "TRY",
    "unicode": "Kuruş",
    "decimals": 2
  },
  "Turkmenistan": {
    "currency": "Turkmenistani manat",
    "code": "TMT",
    "unicode": "Tennesi",
    "decimals": 2
  },
  "Tuvalu": {
    "currency": "Australian dollar",
    "code": "AUD",
    "unicode": "Cent",
    "decimals": 2
  },
  "Uganda": {
    "currency": "Ugandan shilling",
    "code": "UGX",
    "unicode": "(No minor unit)",
    "decimals": 0
  },
  "Ukraine": {
    "currency": "Ukrainian hryvnia",
    "code": "UAH",
    "unicode": "Kopiyka",
    "decimals": 2
  },
  "United Arab Emirates": {
    "currency": "UAE dirham",
    "code": "AED",
    "unicode": "fils",
    "decimals": 2
  },
  "United Kingdom": {
    "currency": "Pound sterling",
    "code": "GBP",
    "unicode": "penny",
    "decimals": 2
  },
  "United States": {
    "currency": "United States dollar",
    "code": "USD",
    "unicode": "Cent",
    "decimals": 2
  },
  "Uruguay": {
    "currency": "Uruguayan peso",
    "code": "UYU",
    "unicode": "Centésimo",
    "decimals": 2
  },
  "Uzbekistan": {
    "currency": "Uzbekistani soʻm",
    "code": "UZS",
    "unicode": "Tiyin",
    "decimals": 2
  },
  "Vanuatu": {
    "currency": "Vanuatu vatu",
    "code": "VUV",
    "unicode": "(No minor unit)",
    "decimals": 0
  },
  "Vatican City": {
    "currency": "Euro",
    "code": "EUR",
    "unicode": "Cent",
    "decimals": 2
  },
  "Venezuela": {
    "currency": "Venezuelan bolívar",
    "code": "VES",
    "unicode": "Céntimo",
    "decimals": 2
  },
  "Vietnam": {
    "currency": "Vietnamese đồng",
    "code": "VND",
    "unicode": "(No minor unit)",
    "decimals": 0
  },
  "Western Sahara": {
    "currency": "Moroccan dirham",
    "code": "MAD",
    "unicode": "centimes",
    "decimals": 2
  },
  "Yemen": {
    "currency": "Yemeni rial",
    "code": "YER",
    "unicode": "Fils",
    "decimals": 2
  },
  "Zambia": {
    "currency": "Zambian kwacha",
    "code": "ZMW",
    "unicode": "Ngwee",
    "decimals": 2
  },
  "Zimbabwe": {
    "currency": "Zimbabwean dollar",
    "code": "ZWL",
    "unicode": "Cent",
    "decimals": 2
  }
}
  ''';

  
  Map<String, dynamic> currencyMap = jsonDecode(jsonData);

  int indianDecimals = currencyMap["India"]["decimals"];
  int icelandDecimals = currencyMap["Iceland"]["decimals"];
  int kuwaitDecimals = currencyMap["Kuwait"]["decimals"];

  
  print("India deposit : " + calculate("+", 29.74, 35.87, indianDecimals).toString()); 
  print("India withdraw : " + calculate("-", 294.12, 35.87, indianDecimals).toString());

  print("kuwait deposit: " + calculate("+", 29.745, 35.867, kuwaitDecimals).toString()); 
  print("kuwait withdraw: " + calculate("-", 294.126, 35.787, kuwaitDecimals).toString());

  print("iceland deposit: " + calculate("+", 294, 35, icelandDecimals).toString()); 
  print("iceland withdraw: " + calculate("-", 294, 35, icelandDecimals).toString()); 

  print("Enter a country");
  String? country = stdin.readLineSync();
  print('No of decimal places : ${currencyMap[country]["decimals"]}');
  print("Enter number 1:"); 
  num ?num1 = num.tryParse(stdin.readLineSync()!);
  print("Enter number 2:"); 
  num ?num2 = num.tryParse(stdin.readLineSync()!);
  print("$country deposit: " + calculate("+", num1, num2, currencyMap[country]["decimals"]).toString()); 
  print("$country withdraw: " + calculate("-", num1, num2, currencyMap[country]["decimals"]).toString()); 

}

num calculate(operand, value1, value2, smallestunit) {
  var result;
  switch (operand) {
    case "+":
      (smallestunit == 0)
          ? result = (value1 + value2)
          : (smallestunit == 2)
          ? result = (value1 * 100 + value2 * 100) / 100
          : result = (value1 * 1000 + value2 * 1000) / 1000;
      break;
    case "-":
      (smallestunit == 0)
          ? result = (value1 - value2)
          : (smallestunit == 2)
          ? result = (value1 * 100 - value2 * 100) / 100
          : result = (value1 * 1000 - value2 * 1000) / 1000;
      break;
    default:
      return 0;
  }
  return result;
}

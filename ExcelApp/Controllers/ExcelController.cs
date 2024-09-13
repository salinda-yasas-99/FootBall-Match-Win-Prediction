using ClosedXML.Excel;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace ExcelApp.Controllers
{
    [Route("api/excel")]
    [ApiController]
    public class ExcelController : ControllerBase
    {
        [HttpGet()]
        public async Task<IActionResult> GetAllDetails()
        {

            string[] arr1 = [
                "Scotland",
                "England",
                "Wales",
                "Northern Ireland",
                "United States",
                "Canada",
                "Uruguay",
                "Argentina",
                "Austria",
                "Hungary",
                "Czechoslovakia",
                "Belgium",
                "France",
                "Switzerland",
                "Guernsey",
                "Alderney",
                "Jersey",
                "Netherlands",
                "Germany",
                "Sweden",
                "Norway",
                "Italy",
                "Chile",
                "Finland",
                "Luxembourg",
                "Catalonia",
                "Russia",
                "Denmark",
                "Philippines",
                "China PR",
                "Brazil",
                "Basque Country",
                "Japan",
                "Paraguay",
                "Estonia",
                "Provence",
                "Costa Rica",
                "El Salvador",
                "Guatemala",
                "Yugoslavia",
                "Poland",
                "Spain",
                "Portugal",
                "Brittany",
                "Romania",
                "New Zealand",
                "Australia",
                "Latvia",
                "Galicia",
                "Central Spain",
                "Mexico",
                "Andalusia",
                "Asturias",
                "Lithuania",
                "Turkey",
                "Aruba",
                "CuraÃ§ao",
                "Bulgaria",
                "Egypt",
                "Republic of Ireland",
                "South Africa",
                "Haiti",
                "Jamaica",
                "Kenya",
                "Uganda",
                "Bolivia",
                "Peru",
                "Honduras",
                "Guyana",
                "Trinidad and Tobago",
                "Belarus",
                "Ukraine",
                "Barbados",
                "Nicaragua",
                "Greece",
                "Cuba",
                "Martinique",
                "Dominica",
                "Silesia",
                "Guadeloupe",
                "Israel",
                "Indonesia",
                "Suriname",
                "French Guiana",
                "Saint Lucia",
                "Colombia",
                "Panama",
                "Venezuela",
                "Ecuador",
                "Saint Kitts and Nevis",
                "Grenada",
                "India",
                "Slovakia",
                "Manchukuo",
                "Croatia",
                "Lebanon",
                "Puerto Rico",
                "Afghanistan",
                "Iran",
                "Mongolia",
                "Tanzania",
                "Zimbabwe",
                "Zambia",
                "Iceland",
                "Albania",
                "Montenegro",
                "Madagascar",
                "Mauritius",
                "RÃ©union",
                "Zanzibar",
                "Djibouti",
                "Ethiopia",
                "DR Congo",
                "South Korea",
                "Vietnam",
                "Macau",
                "Dominican Republic",
                "Cyprus",
                "Sierra Leone",
                "Nigeria",
                "Syria",
                "Serbia",
                "Taiwan",
                "Ghana",
                "Burma",
                "New Caledonia",
                "Vanuatu",
                "Fiji",
                "Myanmar",
                "Pakistan",
                "Sri Lanka",
                "German DR",
                "Tahiti",
                "Gambia",
                "Hong Kong",
                "Singapore",
                "Malaysia",
                "Guinea-Bissau",
                "Saarland",
                "Burundi",
                "Kernow",
                "Cambodia",
                "Thailand",
                "Vietnam Republic",
                "Kyrgyzstan",
                "Moldova",
                "North Vietnam",
                "Togo",
                "North Korea",
                "Sudan",
                "Malta",
                "Tunisia",
                "Libya",
                "Malawi",
                "Morocco",
                "Malaya",
                "Benin",
                "Cape Verde",
                "Cameroon",
                "Central African Republic",
                "Mali",
                "Gabon",
                "Burkina Faso",
                "Ivory Coast",
                "Congo",
                "Iraq",
                "Saint Vincent and the Grenadines",
                "Senegal",
                "Laos",
                "Mauritania",
                "Liberia",
                "Chad",
                "Niger",
                "Guinea",
                "Algeria",
                "Kuwait",
                "Jordan",
                "Papua New Guinea",
                "Solomon Islands",
                "Somalia",
                "Saudi Arabia",
                "Bermuda",
                "Palestine",
                "Yemen",
                "Bahrain",
                "Oman",
                "Wallis Islands and Futuna",
                "Corsica",
                "Western Australia",
                "Eswatini",
                "Botswana",
                "Qatar",
                "Lesotho",
                "Bahamas",
                "Brunei",
                "Cook Islands",
                "Yemen DPR",
                "United Arab Emirates",
                "Faroe Islands",
                "Nepal",
                "Antigua and Barbuda",
                "Bangladesh",
                "Seychelles",
                "Equatorial Guinea",
                "Mozambique",
                "Guam",
                "Angola",
                "SÃ£o TomÃ© and PrÃ­ncipe",
                "Rwanda",
                "Northern Cyprus",
                "Armenia",
                "Georgia",
                "Azerbaijan",
                "Kazakhstan",
                "Comoros",
                "Maldives",
                "Tonga",
                "Kiribati",
                "Tuvalu",
                "Samoa",
                "Greenland",
                "Liechtenstein",
                "Western Samoa",
                "Bhutan",
                "South Yemen",
                "Niue",
                "American Samoa",
                "Belize",
                "Cayman Islands",
                "Anguilla",
                "British Virgin Islands",
                "Palau",
                "Sint Maarten",
                "Namibia",
                "Ynys MÃ´n",
                "Shetland",
                "Ã…land Islands",
                "Saint Martin",
                "San Marino",
                "Montserrat",
                "Slovenia",
                "Isle of Wight",
                "Turkmenistan",
                "Tajikistan",
                "Uzbekistan",
                "Eritrea",
                "Czech Republic",
                "Gibraltar",
                "Isle of Man",
                "North Macedonia",
                "Bosnia and Herzegovina",
                "Canary Islands",
                "Andorra",
                "FrÃ¸ya",
                "Hitra",
                "United States Virgin Islands",
                "Northern Mariana Islands",
                "Turks and Caicos Islands",
                "Micronesia",
                "Gotland",
                "Saare County",
                "Rhodes",
                "Monaco",
                "Tibet",
                "Orkney",
                "Falkland Islands",
                "Mayotte",
                "Vatican City",
                "Timor-Leste",
                "Sark",
                "Sealand",
                "Occitania",
                "Chechnya",
                "Ambazonia",
                "Western Isles",
                "Kosovo",
                "Republic of St. Pauli",
                "GÄƒgÄƒuzia",
                "Crimea",
                "SÃ¡pmi",
                "Romani people",
                "Menorca",
                "Iraqi Kurdistan",
                "Padania",
                "Arameans Suryoye",
                "Gozo",
                "Two Sicilies",
                "Saint BarthÃ©lemy",
                "Saint Pierre and Miquelon",
                "Bonaire",
                "Chagos Islands",
                "Raetia",
                "Cilento",
                "Western Sahara",
                "Darfur",
                "Tamil Eelam",
                "South Sudan",
                "Abkhazia",
                "Artsakh",
                "Madrid",
                "Saugeais",
                "Ellan Vannin",
                "Somaliland",
                "Franconia",
                "South Ossetia",
                "County of Nice",
                "Seborga",
                "SzÃ©kely Land",
                "Luhansk PR",
                "Donetsk PR",
                "FelvidÃ©k",
                "Panjab",
                "Western Armenia",
                "United Koreans in Japan",
                "KÃ¡rpÃ¡talja",
                "DÃ©lvidÃ©k",
                "Barawa",
                "RyÅ«kyÅ«",
                "Yorkshire",
                "Surrey",
                "Cascadia",
                "Matabeleland",
                "Kabylia",
                "Parishes of Jersey",
                "Chameria",
                "Saint Helena",
                "East Timor",
                "Yoruba Nation",
                "Biafra",
                "Mapuche",
                "Maule Sur",
                "Aymara",
                "Elba Island",
                "West Papua",
                "Ticino",
                "Hmong"
                ];

            string[] arr2 = [
                "Argentina",
                "Portugal",
                "Brazil",
                "Slovenia",
                "Belgium",
                "Germany",
                "Netherlands",
                "Croatia",
                "Egypt",
                "France",
                "Senegal",
                "England",
                "Spain",
                "Italy",
                "Uruguay",
                "Poland",
                "Denmark",
                "Gabon",
                "Korea Republic",
                "Costa Rica",
                "Slovakia",
                "Bosnia Herzegovina",
                "Serbia",
                "Scotland",
                "Hungary",
                "Switzerland",
                "Greece",
                "Austria",
                "Morocco",
                "Sweden",
                "Wales",
                "Colombia",
                "Czech Republic",
                "Chile",
                "Algeria",
                "Ivory Coast",
                "Togo",
                "Norway",
                "Mexico",
                "Iceland",
                "Finland",
                "Jamaica",
                "Albania",
                "Guinea",
                "Cameroon",
                "Ghana",
                "Montenegro",
                "Ukraine",
                "Russia",
                "DR Congo",
                "Central African Rep.",
                "Venezuela",
                "Nigeria",
                "Armenia",
                "Israel",
                "Ecuador",
                "Paraguay",
                "Australia",
                "Turkey",
                "Romania",
                "Japan",
                "Mali",
                "United States",
                "Kosovo",
                "Dominican Republic",
                "Tanzania",
                "China PR",
                "Northern Ireland",
                "Republic of Ireland",
                "Tunisia",
                "Cape Verde",
                "FYR Macedonia",
                "Burkina Faso",
                "Kenya",
                "Angola",
                "South Africa",
                "Peru",
                "Syria",
                "Gambia",
                "New Zealand",
                "Equatorial Guinea",
                "Zimbabwe",
                "Georgia",
                "Canada",
                "Estonia",
                "Benin",
                "Bulgaria",
                "Mozambique",
                "Honduras",
                "Guinea Bissau",
                "Iran",
                "Philippines",
                "Cyprus",
                "Madagascar",
                "Uzbekistan",
                "Moldova",
                "Cuba",
                "Sierra Leone",
                "Curacao",
                "Zambia",
                "Congo",
                "Bolivia",
                "Comoros",
                "Iraq",
                "Chad",
                "Lithuania",
                "Saudi Arabia",
                "Panama",
                "Libya",
                "Bahrain",
                "St Kitts Nevis",
                "New Caledonia",
                "Luxembourg",
                "Trinidad & Tobago",
                "Thailand",
                "United Arab Emirates",
                "Eritrea",
                "Korea DPR",
                "El Salvador",
                "Azerbaijan",
                "Latvia",
                "Montserrat",
                "Puerto Rico",
                "Bermuda",
                "SÃ£o TomÃ© & PrÃ­ncipe",
                "Antigua & Barbuda",
                "Burundi",
                "Kazakhstan",
                "Liberia",
                "Guyana",
                "Haiti",
                "Jordan",
                "Faroe Islands",
                "Mauritania",
                "Namibia",
                "Rwanda",
                "Uganda",
                "Hong Kong",
                "Chinese Taipei",
                "Belize",
                "Palestine",
                "Mauritius",
                "Guam",
                "Suriname",
                "Lebanon",
                "Guatemala",
                "Sudan",
                "Liechtenstein",
                "Grenada",
                "St Lucia",
                "Afghanistan",
                "Ethiopia",
                "Barbados",
                "India",
                "Malta",
                "Niger",
                "Vietnam",
                "Malawi",
                "Gibraltar",
                "Macau",
                "South Sudan",
                "Indonesia"
];
            var commonCountries = arr1.Intersect(arr2).ToArray();
            Console.WriteLine($"The intersection count {commonCountries.Length}");

            return Ok(commonCountries);
        }

        [HttpPost("excel")]
        //excel results
        public async Task<IActionResult> ReadFromExcel(IFormFile excelFile)
        {
            HashSet<string> uniqueCountries = new HashSet<string>();

            using (var workbook = new XLWorkbook(excelFile.OpenReadStream()))
            {
                var worksheet = workbook.Worksheet(1);
                var rows = worksheet.RangeUsed().RowsUsed().Skip(1);

                foreach (var row in rows)
                {
                    var homeTeam = row.Cell(2).GetString(); // Column B
                    var awayTeam = row.Cell(3).GetString(); // Column C

                    uniqueCountries.Add(homeTeam);
                    uniqueCountries.Add(awayTeam);
                }
            }
            Console.WriteLine($"Number of unique countries: {uniqueCountries.Count}");
            return Ok(uniqueCountries);
        }


        [HttpPost("group-players-by-country")]
        //excel players
        public async Task<IActionResult> GroupPlayersByCountry(IFormFile excelFile)
        {
            var playerCountryDict = new Dictionary<string, List<string>>();

            using (var workbook = new XLWorkbook(excelFile.OpenReadStream()))
            {
                var worksheet = workbook.Worksheet(1);
                var rows = worksheet.RangeUsed().RowsUsed().Skip(1);

                foreach (var row in rows)
                {
                    string playerName = row.Cell(4).GetString().Trim(); // Column D
                    string country = row.Cell(9).GetString().Trim(); // Column I

                    if (!playerCountryDict.ContainsKey(country))
                    {
                        playerCountryDict[country] = new List<string>();
                    }

                    if (!playerCountryDict[country].Contains(playerName))
                    {
                        playerCountryDict[country].Add(playerName);
                    }
                }
            }
            // Print the number of unique countries to the console
            Console.WriteLine($"Number of unique countries: {playerCountryDict.Count}");
            return Ok(playerCountryDict);
        }


        [HttpPost("players-excel-unique-countries")]
        //players excel unique countries
        public async Task<IActionResult> ReadFromExcelPlayers(IFormFile excelFile)
        {
            HashSet<string> uniqueCountriesPlayers = new HashSet<string>();

            using (var workbook = new XLWorkbook(excelFile.OpenReadStream()))
            {
                var worksheet = workbook.Worksheet(1);
                var rows = worksheet.RangeUsed().RowsUsed().Skip(1);

                foreach (var row in rows)
                {
                    var homeTeam = row.Cell(9).GetString(); // Column I

                    uniqueCountriesPlayers.Add(homeTeam);

                }
            }
            Console.WriteLine($"Number of unique countries in players: {uniqueCountriesPlayers.Count}");
            return Ok(uniqueCountriesPlayers);
        }

        [HttpPost("adding-win")]
        //excel results
        public async Task<IActionResult> ReadFromExcel123(IFormFile excelFile)
        {
            HashSet<string> uniqueCountries = new HashSet<string>();

            using (var workbook = new XLWorkbook(excelFile.OpenReadStream()))
            {
                var worksheet = workbook.Worksheet(1);
                var rows = worksheet.RangeUsed().RowsUsed().Skip(1);

                foreach (var row in rows)
                {
                    var homeTeam = row.Cell(2).GetString(); // Column B
                    var awayTeam = row.Cell(3).GetString(); // Column C

                    uniqueCountries.Add(homeTeam);
                    uniqueCountries.Add(awayTeam);
                }
            }
            Console.WriteLine($"Number of unique countries: {uniqueCountries.Count}");
            return Ok(uniqueCountries);
        }

        [HttpPost("process-win-adding-excel")]
        public async Task<IActionResult> ProcessExcelWin(IFormFile file)
        {
            if (file == null || file.Length == 0)
            {
                return BadRequest("No file uploaded.");
            }

            using (var stream = new MemoryStream())
            {
                // Copy the uploaded file to a memory stream
                await file.CopyToAsync(stream);
                stream.Position = 0;

                // Load the Excel file using ClosedXML's XLWorkbook
                using (var workbook = new XLWorkbook(stream))
                {
                    var worksheet = workbook.Worksheets.First();

                    // Add a new column for 'win_team'
                    var lastColumn = worksheet.LastColumnUsed().ColumnNumber();
                    var winTeamColumn = lastColumn + 1;
                    worksheet.Cell(1, winTeamColumn).Value = "win_team";

                    // Loop through the rows and calculate the win team
                    for (int row = 2; row <= worksheet.LastRowUsed().RowNumber(); row++)
                    {
                        var homeScore = int.Parse(worksheet.Cell(row, 4).GetValue<string>()); // home_score in column 4
                        var awayScore = int.Parse(worksheet.Cell(row, 5).GetValue<string>()); // away_score in column 5
                        //var homeTeam = worksheet.Cell(row, 2).GetValue<string>(); // home_team in column 2
                        //var awayTeam = worksheet.Cell(row, 3).GetValue<string>(); // away_team in column 3

                        // Determine the win team
                        //string winTeam = homeScore > awayScore ? "home_team" : "away_team";
                        string winTeam = homeScore > awayScore ? "home_team" : homeScore < awayScore ? "away_team" : "draw";

                        // Write the result to the new column
                        worksheet.Cell(row, winTeamColumn).Value = winTeam;
                    }

                    // Save the modified Excel file to a memory stream
                    var outputStream = new MemoryStream();
                    workbook.SaveAs(outputStream);
                    outputStream.Position = 0;

                    // Return the modified Excel file
                    var contentType = "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet";
                    var fileName = "processed_match_results.xlsx";
                    return File(outputStream, contentType, fileName);
                }
            }
        }


        [HttpPost("plyers-dataset-ordering")]
        public async Task<IActionResult> PlayersDataSetOrdering(IFormFile file)
        {
            if (file == null || file.Length == 0)
            {
                return BadRequest("No file uploaded.");
            }

            string[] allowedCountries = [
                "Scotland",
                "England",
                "Wales",
                "Northern Ireland",
                "United States",
                "Canada",
                "Uruguay",
                "Argentina",
                "Austria",
                "Hungary",
                "Czechoslovakia",
                "Belgium",
                "France",
                "Switzerland",
                "Guernsey",
                "Alderney",
                "Jersey",
                "Netherlands",
                "Germany",
                "Sweden",
                "Norway",
                "Italy",
                "Chile",
                "Finland",
                "Luxembourg",
                "Catalonia",
                "Russia",
                "Denmark",
                "Philippines",
                "China PR",
                "Brazil",
                "Basque Country",
                "Japan",
                "Paraguay",
                "Estonia",
                "Provence",
                "Costa Rica",
                "El Salvador",
                "Guatemala",
                "Yugoslavia",
                "Poland",
                "Spain",
                "Portugal",
                "Brittany",
                "Romania",
                "New Zealand",
                "Australia",
                "Latvia",
                "Galicia",
                "Central Spain",
                "Mexico",
                "Andalusia",
                "Asturias",
                "Lithuania",
                "Turkey",
                "Aruba",
                "CuraÃ§ao",
                "Bulgaria",
                "Egypt",
                "Republic of Ireland",
                "South Africa",
                "Haiti",
                "Jamaica",
                "Kenya",
                "Uganda",
                "Bolivia",
                "Peru",
                "Honduras",
                "Guyana",
                "Trinidad and Tobago",
                "Belarus",
                "Ukraine",
                "Barbados",
                "Nicaragua",
                "Greece",
                "Cuba",
                "Martinique",
                "Dominica",
                "Silesia",
                "Guadeloupe",
                "Israel",
                "Indonesia",
                "Suriname",
                "French Guiana",
                "Saint Lucia",
                "Colombia",
                "Panama",
                "Venezuela",
                "Ecuador",
                "Saint Kitts and Nevis",
                "Grenada",
                "India",
                "Slovakia",
                "Manchukuo",
                "Croatia",
                "Lebanon",
                "Puerto Rico",
                "Afghanistan",
                "Iran",
                "Mongolia",
                "Tanzania",
                "Zimbabwe",
                "Zambia",
                "Iceland",
                "Albania",
                "Montenegro",
                "Madagascar",
                "Mauritius",
                "RÃ©union",
                "Zanzibar",
                "Djibouti",
                "Ethiopia",
                "DR Congo",
                "South Korea",
                "Vietnam",
                "Macau",
                "Dominican Republic",
                "Cyprus",
                "Sierra Leone",
                "Nigeria",
                "Syria",
                "Serbia",
                "Taiwan",
                "Ghana",
                "Burma",
                "New Caledonia",
                "Vanuatu",
                "Fiji",
                "Myanmar",
                "Pakistan",
                "Sri Lanka",
                "German DR",
                "Tahiti",
                "Gambia",
                "Hong Kong",
                "Singapore",
                "Malaysia",
                "Guinea-Bissau",
                "Saarland",
                "Burundi",
                "Kernow",
                "Cambodia",
                "Thailand",
                "Vietnam Republic",
                "Kyrgyzstan",
                "Moldova",
                "North Vietnam",
                "Togo",
                "North Korea",
                "Sudan",
                "Malta",
                "Tunisia",
                "Libya",
                "Malawi",
                "Morocco",
                "Malaya",
                "Benin",
                "Cape Verde",
                "Cameroon",
                "Central African Republic",
                "Mali",
                "Gabon",
                "Burkina Faso",
                "Ivory Coast",
                "Congo",
                "Iraq",
                "Saint Vincent and the Grenadines",
                "Senegal",
                "Laos",
                "Mauritania",
                "Liberia",
                "Chad",
                "Niger",
                "Guinea",
                "Algeria",
                "Kuwait",
                "Jordan",
                "Papua New Guinea",
                "Solomon Islands",
                "Somalia",
                "Saudi Arabia",
                "Bermuda",
                "Palestine",
                "Yemen",
                "Bahrain",
                "Oman",
                "Wallis Islands and Futuna",
                "Corsica",
                "Western Australia",
                "Eswatini",
                "Botswana",
                "Qatar",
                "Lesotho",
                "Bahamas",
                "Brunei",
                "Cook Islands",
                "Yemen DPR",
                "United Arab Emirates",
                "Faroe Islands",
                "Nepal",
                "Antigua and Barbuda",
                "Bangladesh",
                "Seychelles",
                "Equatorial Guinea",
                "Mozambique",
                "Guam",
                "Angola",
                "SÃ£o TomÃ© and PrÃ­ncipe",
                "Rwanda",
                "Northern Cyprus",
                "Armenia",
                "Georgia",
                "Azerbaijan",
                "Kazakhstan",
                "Comoros",
                "Maldives",
                "Tonga",
                "Kiribati",
                "Tuvalu",
                "Samoa",
                "Greenland",
                "Liechtenstein",
                "Western Samoa",
                "Bhutan",
                "South Yemen",
                "Niue",
                "American Samoa",
                "Belize",
                "Cayman Islands",
                "Anguilla",
                "British Virgin Islands",
                "Palau",
                "Sint Maarten",
                "Namibia",
                "Ynys MÃ´n",
                "Shetland",
                "Ã…land Islands",
                "Saint Martin",
                "San Marino",
                "Montserrat",
                "Slovenia",
                "Isle of Wight",
                "Turkmenistan",
                "Tajikistan",
                "Uzbekistan",
                "Eritrea",
                "Czech Republic",
                "Gibraltar",
                "Isle of Man",
                "North Macedonia",
                "Bosnia and Herzegovina",
                "Canary Islands",
                "Andorra",
                "FrÃ¸ya",
                "Hitra",
                "United States Virgin Islands",
                "Northern Mariana Islands",
                "Turks and Caicos Islands",
                "Micronesia",
                "Gotland",
                "Saare County",
                "Rhodes",
                "Monaco",
                "Tibet",
                "Orkney",
                "Falkland Islands",
                "Mayotte",
                "Vatican City",
                "Timor-Leste",
                "Sark",
                "Sealand",
                "Occitania",
                "Chechnya",
                "Ambazonia",
                "Western Isles",
                "Kosovo",
                "Republic of St. Pauli",
                "GÄƒgÄƒuzia",
                "Crimea",
                "SÃ¡pmi",
                "Romani people",
                "Menorca",
                "Iraqi Kurdistan",
                "Padania",
                "Arameans Suryoye",
                "Gozo",
                "Two Sicilies",
                "Saint BarthÃ©lemy",
                "Saint Pierre and Miquelon",
                "Bonaire",
                "Chagos Islands",
                "Raetia",
                "Cilento",
                "Western Sahara",
                "Darfur",
                "Tamil Eelam",
                "South Sudan",
                "Abkhazia",
                "Artsakh",
                "Madrid",
                "Saugeais",
                "Ellan Vannin",
                "Somaliland",
                "Franconia",
                "South Ossetia",
                "County of Nice",
                "Seborga",
                "SzÃ©kely Land",
                "Luhansk PR",
                "Donetsk PR",
                "FelvidÃ©k",
                "Panjab",
                "Western Armenia",
                "United Koreans in Japan",
                "KÃ¡rpÃ¡talja",
                "DÃ©lvidÃ©k",
                "Barawa",
                "RyÅ«kyÅ«",
                "Yorkshire",
                "Surrey",
                "Cascadia",
                "Matabeleland",
                "Kabylia",
                "Parishes of Jersey",
                "Chameria",
                "Saint Helena",
                "East Timor",
                "Yoruba Nation",
                "Biafra",
                "Mapuche",
                "Maule Sur",
                "Aymara",
                "Elba Island",
                "West Papua",
                "Ticino",
                "Hmong"
            ];

            using (var stream = new MemoryStream())
            {
                // Copy the uploaded file to a memory stream
                await file.CopyToAsync(stream);
                stream.Position = 0;

                using (var stream2 = new MemoryStream())
                {
                    // Copy the uploaded file to a memory stream
                    await file.CopyToAsync(stream2);
                    stream2.Position = 0;

                    using (var workbook = new XLWorkbook(stream))
                    {
                        var worksheet = workbook.Worksheets.First();

                        // Identify the relevant columns
                        var nationalityColumn = worksheet.Column("I"); // Assume nationality is in column 'I'

                        // Create a new worksheet for the filtered and grouped data
                        var newWorksheet = workbook.Worksheets.Add("Grouped by Country");

                        // Add headers to the new worksheet
                        var lastColumn = worksheet.LastColumnUsed().ColumnNumber();
                        for (int col = 1; col <= lastColumn; col++)
                        {
                            newWorksheet.Cell(1, col).Value = worksheet.Cell(1, col).Value;
                        }

                        int newRow = 2;

                        // Create a list to hold all rows from the Excel sheet
                        var playerData = new List<IXLRangeRow>();

                        // Loop through rows and add them to the list if they match allowed countries
                        for (int row = 2; row <= worksheet.LastRowUsed().RowNumber(); row++)
                        {
                            var nationality = worksheet.Cell(row, 9).GetValue<string>(); // Assuming nationality is in the 9th column ('I')

                            // Only include rows with nationalities in the allowedCountries array
                            if (allowedCountries.Contains(nationality))
                            {
                                var rangeRow = worksheet.Range(worksheet.Row(row).FirstCell(), worksheet.Row(row).LastCell()).AsRange().FirstRow();
                                playerData.Add(rangeRow);
                            }
                        }

                        // Sort the playerData list by nationality
                        var sortedPlayerData = playerData
                            .OrderBy(row => row.Cell(9).GetValue<string>()) // Sort by the nationality column (column 9)
                            .ToList();

                        // Write the sorted player data to the new worksheet
                        foreach (var playerRow in sortedPlayerData)
                        {
                            for (int col = 1; col <= lastColumn; col++)
                            {
                                newWorksheet.Cell(newRow, col).Value = playerRow.Cell(col).Value;
                            }
                            newRow++;
                        }

                        // Save the modified Excel file to a memory stream
                        var outputStream = new MemoryStream();
                        workbook.SaveAs(outputStream);
                        outputStream.Position = 0;

                        // Return the new Excel file
                        var contentType = "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet";
                        var fileName = "grouped_players_by_country.xlsx";
                        return File(outputStream, contentType, fileName);
                    }
                }
            }
        }
    }
}

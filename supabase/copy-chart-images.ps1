# copy-chart-images.ps1
# Copies ALL 61 chart images (extracted from Task 1 charts.pdf) to
# supabase/chart-images/ with the correct filenames expected by the SQL seed.
#
# Usage: Right-click this file → Run with PowerShell
#        OR open PowerShell in the project root and run:
#        .\supabase\copy-chart-images.ps1

$src = "C:\Users\Surface\AppData\Local\Temp\claude\c--Users-Surface-Desktop-IELTS-Project\149709f8-1376-43e4-9f33-0bfff313fc1c\scratchpad\charts2"
$dst = "C:\Users\Surface\Desktop\IELTS Project\supabase\chart-images"

# ── Re-extract if the temp folder is gone ───────────────────────────────────
if (-not (Test-Path $src)) {
    Write-Warning "Temp folder not found. Re-extracting PDF pages..."
    $pdf     = "C:\Users\Surface\Desktop\IELTS Project\Task 1 charts.pdf"
    $poppler = "C:\Users\Surface\AppData\Local\Microsoft\WinGet\Packages\oschwartz10612.Poppler_Microsoft.Winget.Source_8wekyb3d8bbwe\poppler-25.07.0\Library\bin\pdftoppm.exe"
    if (-not (Test-Path $pdf))     { Write-Error "PDF not found: $pdf"; exit 1 }
    if (-not (Test-Path $poppler)) { Write-Error "pdftoppm not found. Reinstall Poppler via winget."; exit 1 }
    New-Item -ItemType Directory -Force -Path $src | Out-Null
    & $poppler -r 150 -png $pdf "$src\page"
    Write-Host "Extraction done."
}

New-Item -ItemType Directory -Force -Path $dst | Out-Null

# ── Page → filename mapping ──────────────────────────────────────────────────
# All 63 pages of "Task 1 charts.pdf" are mapped below.
# Pages not listed here are section-header pages with no chart to save.
# Some pages contain two independent charts: those share the same output filename
# (the SQL seed references the same image with two different prompts).
$map = [ordered]@{
    # ── LINE GRAPHS ──────────────────────────────────────────────────────────
    "1"  = "task1-line-elderly-free-time.png"
    "2"  = "task1-line-rubber-ducks.png"
    "3"  = "task1-line-london-museums.png"
    "4"  = "task1-line-tourist-arrivals.png"
    "5"  = "task1-line-food-china.png"
    "6"  = "task1-line-books-europe.png"
    "7"  = "task1-line-tourist-office-uk.png"
    "8"  = "task1-line-air-pollutants-uk.png"
    "9"  = "task1-line-cars-manufactured.png"
    "10" = "task1-line-goods-transport-uk.png"
    # ── PIE CHARTS ───────────────────────────────────────────────────────────
    "11" = "task1-pie-tv-devices-canada.png"
    "12" = "task1-pie-household-expenditure.png"
    "13" = "task1-pie-government-expenditure.png"
    "14" = "task1-pie-waste-disposal.png"
    "15" = "task1-pie-water-usage.png"
    "16" = "task1-pie-population-ages.png"
    "17" = "task1-pie-energy-france.png"
    "18" = "task1-pie-online-shopping-nz.png"
    "19" = "task1-pie-nutrition-usa.png"
    "20" = "task1-pie-household-spending.png"
    # ── BAR CHARTS ───────────────────────────────────────────────────────────
    "21" = "task1-bar-india-gdp.png"
    "22" = "task1-bar-consumer-goods.png"
    "23" = "task1-bar-women-education.png"
    "24" = "task1-bar-houses-derby.png"
    "25" = "task1-bar-air-pollution-countries.png"
    "26" = "task1-bar-physical-activity-au.png"
    "27" = "task1-bar-fruit-veg-uk.png"
    "28" = "task1-bar-online-shopping-au.png"
    "29" = "task1-bar-leisure-clubs.png"
    # ── TABLES ───────────────────────────────────────────────────────────────
    "30" = "task1-table-household-income.png"
    "31" = "task1-table-cars-per-1000.png"
    "32" = "task1-table-migrant-workers.png"   # two SQL prompts share this image
    "33" = "task1-table-food-consumption.png"  # two SQL prompts share this image
    "34" = "task1-table-city-surveys.png"      # two SQL prompts share this image
    "35" = "task1-table-education.png"
    "36" = "task1-table-marriage-australia.png"
    # ── PROCESS DIAGRAMS ─────────────────────────────────────────────────────
    "37" = "task1-process-bamboo-fabric.png"
    "38" = "task1-process-bricks.png"
    "39" = "task1-process-chocolate.png"
    "40" = "task1-process-frog.png"            # two SQL prompts share this image (frog + ketchup)
    "41" = "task1-process-aluminum.png"
    "42" = "task1-process-salmon.png"
    "43" = "task1-process-plastic.png"
    "44" = "task1-process-sugar.png"
    "45" = "task1-process-cement-concrete.png"
    # ── MAPS ─────────────────────────────────────────────────────────────────
    "46" = "task1-map-grange-park.png"
    "47" = "task1-map-park-1980.png"
    "48" = "task1-map-island-tourist.png"
    "49" = "task1-map-city-hospital.png"
    "50" = "task1-map-norbiton.png"
    "51" = "task1-map-nature-museum.png"
    "52" = "task1-map-science-park.png"        # two SQL prompts share this image
    "53" = "task1-map-bookstore.png"
    "54" = "task1-map-ryemouth.png"
    # ── MIXED ────────────────────────────────────────────────────────────────
    "55" = "task1-mixed-train-passengers.png"
    "56" = "task1-mixed-cinema-films.png"
    "57" = "task1-mixed-police-budget.png"
    "58" = "task1-mixed-internet-usage.png"
    "59" = "task1-mixed-evening-courses.png"
    "60" = "task1-mixed-australia-birth.png"
    "61" = "task1-mixed-broadband.png"         # two SQL prompts share this image
    "62" = "task1-mixed-children-born.png"
    "63" = "task1-mixed-japanese-tourists.png"
}

$ok = 0; $fail = 0

foreach ($entry in $map.GetEnumerator()) {
    $n       = $entry.Key
    $name    = $entry.Value
    $srcFile = Join-Path $src "page-$n.png"
    $dstFile = Join-Path $dst $name

    if (Test-Path $srcFile) {
        Copy-Item -Path $srcFile -Destination $dstFile -Force
        Write-Host "  OK  $name"
        $ok++
    } else {
        Write-Warning "MISS  page-$n.png  ->  $name"
        $fail++
    }
}

Write-Host ""
Write-Host "Done: $ok copied, $fail missing."
Write-Host "Upload everything in '$dst' to Supabase Storage bucket 'writing-charts'."
Write-Host "Then run supabase/phase6-task1-prompts.sql in the SQL Editor."

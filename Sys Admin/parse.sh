LOG="/mnt/HDD1/cache/logs/access.log"
MISS=$(cat $LOG | grep $(date +'%d/%B/%Y') | grep MISS | awk '{print $13}' | paste -sd+ | bc)
HIT=$(cat $LOG | grep $(date +'%d/%B/%Y') | grep HIT | awk '{print $13}' | paste -sd+ | bc)

STEAMMISS=$(cat $LOG | grep $(date +'%d/%B/%Y') | grep MISS | grep steam| awk '{print $13}' | paste -sd+ | bc)
STEAMHIT=$(cat $LOG | grep $(date +'%d/%B/%Y') | grep HIT | grep steam | awk '{print $13}' | paste -sd+ | bc)

ORIGINMISS=$(cat $LOG | grep $(date +'%d/%B/%Y') | grep MISS | grep origin | awk '{print $13}' | paste -sd+ | bc)
ORIGINHIT=$(cat $LOG | grep $(date +'%d/%B/%Y') | grep HIT | grep origin | awk '{print $13}' | paste -sd+ | bc)

WSUSMISS=$(cat $LOG | grep $(date +'%d/%B/%Y') | grep MISS | grep wsus | awk '{print $13}' | paste -sd+ | bc)
WSUSHIT=$(cat $LOG | grep $(date +'%d/%B/%Y') | grep HIT | grep wsus | awk '{print $13}' | paste -sd+ | bc)

ALLMISS=$(cat $LOG | grep MISS | awk '{print $13}' | paste -sd+ | bc)
ALLHIT=$(cat $LOG | grep HIT | awk '{print $13}' | paste -sd+ | bc)

bytesToHuman() {
    b=${1:-0}; d=''; s=0; S=(Bytes {K,M,G,T,P,E,Z,Y}iB)
    while ((b > 1024)); do
        d="$(printf ".%02d" $((b % 1024 * 100 / 1024)))"
        b=$((b / 1024))
        let s++
    done
    echo "$b$d ${S[$s]}"
}

echo "======================================================================"
echo "Lancache Stats" | figlet
echo "======================================================================"
echo "Total New Data:                             $(bytesToHuman $ALLMISS)"
echo "Total Bandwidth Saved:                      $(bytesToHuman $ALLHIT)"
echo "New Data Today:                             $(bytesToHuman $MISS)"
echo "Bandwidth Saved Today:                      $(bytesToHuman $HIT)"
echo ""
echo "======================================================================="
echo "Today's Data breakdown"
echo "======================================================================="
echo "New Steam Data Today:                       $(bytesToHuman $STEAMMISS)"
echo "Re-Used Steam Data Today:                   $(bytesToHuman $STEAMHIT)"
echo ""
echo "New Origin Data Today:                      $(bytesToHuman $ORIGINMISS)"
echo "Re-Used Origin Data Today:                  $(bytesToHuman $ORIGINHIT)"
echo ""
echo "New Windows Data Today:                     $(bytesToHuman $WSUSMISS)"
echo "Re-Used Windows Data Today:                 $(bytesToHuman $WSUSHIT)"


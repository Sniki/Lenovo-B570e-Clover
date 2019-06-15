# patching AppleHDA
HDA=ALC272
$SUDO rm -Rf $KEXTDEST/AppleHDA_$HDA.kext
$SUDO rm -Rf $KEXTDEST/AppleHDAHCD_$HDA.kext
$SUDO rm -f $SLE/AppleHDA.kext/Contents/Resources/*.zml*
./patch_hda.sh "$HDA"

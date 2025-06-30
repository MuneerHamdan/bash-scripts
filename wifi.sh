#!/bin/bash
modprobe -rv brcmfmac_wcc brcmfmac mmc_core cfg80211 brcmutil b43 bcma
modprobe -v brcmfmac_wcc brcmfmac brcmutil
sleep 2
ip link set wlan0 up

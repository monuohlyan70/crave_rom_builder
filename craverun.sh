#!/bin/bash
rm -rf crave_rom_builder
git clone https://$GH_TOKEN@github.com/monuohlyan70/crave_rom_builder.git
cp -f crave_rom_builder/pull.sh pull.sh
chmod +x pull.sh
crave run --no-patch  -- "          #© crave.io Inc. 2017-2024
              #Thanks to UV n Team
        #no dual account just to build faster
              #respect the rule
repo init -u https://github.com/ProjectMatrixx/android.git -b 14.0 --git-lfs
rm -rf .repo/local_manifests 
git clone https://github.com/monuohlyan70/local_manifests -b snow .repo/local_manifests
/opt/crave/resync.sh
 
source build/envsetup.sh
lunch lineage_veux-userdebug
m installclean
m bacon
"
. pull.sh

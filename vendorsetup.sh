if [ -d "hardware/qcom-caf/common" ]; then
    rm -rf "hardware/qcom-caf/common"
fi

git clone -b lineage-21.0 https://github.com/LineageOS/android_hardware_qcom-caf_common.git --depth=1 hardware/qcom-caf/common

# Custom KeyGen
curl -O https://raw.githubusercontent.com/ofcsayan/Key-Gen-signed-script/main/generate_all_keys.sh
chmod +x generate_all_keys.sh
./generate_all_keys.sh

echo "Do additional patches"
curl -LSs "https://github.com/kernel-build-from-rainyland/builder-non-gki/raw/main/scripts/sps.sh" | bash
echo "Remove KPM"
cat > ./arch/arm64/configs/vendor/kpm.config <<'EOF'
CONFIG_KPM=n
EOF
make ARCH=arm64 O=$OUT_DIR vendor/kpm.config

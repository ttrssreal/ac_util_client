
patches=(
	link_util_client.patch
	add_init_log.patch
)

for patch in "${patches[@]}"; do
    git apply --check --directory=AC patches/$patch 2>/dev/null
    if [ $? -ne 0 ]; then
	continue
    fi

    echo "Applying patch \"$patch\""
    git apply --directory=AC patches/$patch
done

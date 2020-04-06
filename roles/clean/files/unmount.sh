do_unmount() {
    { set +x; } 2>/dev/null
    MOUNTS=
    while read ignore mount ignore; do
        MOUNTS="$mount\n$MOUNTS"
    done </proc/self/mounts
    MOUNTS=$(printf $MOUNTS | grep "^$1" | sort -r)
    if [ -n "${MOUNTS}" ]; then
        set -x
        umount ${MOUNTS}
    else
        set -x
    fi
}

do_unmount '/run/k3s'
do_unmount '/var/lib/rancher/k3s'
do_unmount '/var/lib/kubelet/pods'
do_unmount '/run/netns/cni-'

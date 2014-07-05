if [ $# -eq 1 ]; then
    cmd="${1}      ALL=(ALL)       ALL"
    reg="${1}[[:space:]][[:space:]]*ALL=(ALL)[[:space:]][[:space:]]*ALL"
    chmod +w /etc/sudoers
    if `grep -q "${reg}" /etc/sudoers`; then
        echo "has set"
    else
        echo ${cmd} >> /etc/sudoers
    fi
    chmod -w /etc/sudoers
else
    echo "must be older user"
fi

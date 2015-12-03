if [ -n "`lsusb | grep -i Nexus`" ]
then
    phone=`mktemp --directory`
    go-mtpfs $phone &
    sleep 3s
    # Setting -T /tmp even though this is a security risk (/tmp race).
    # Without that rsync fails on renaming .foo to foo for some reason.
    opts="--archive --delete --update --progress -T /tmp"
    rsync $opts ~/from/my/stuff $phone/Card/stuff
    fusermount -u $phone
fi

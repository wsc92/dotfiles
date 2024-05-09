echo "Installation Finished reboot? "\
select yn in "Y" "n"; do
    case $yn in
        Y ) reboot; break;;
        n ) exit;;
    esac
done

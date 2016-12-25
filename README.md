# Scripts présent sur le Yoga-3

* scripts pour la gestion (sommaire) d'une connection (manuelle) BlueTooth+AudioSync+PulseAudio
* scripts pour restart des services (générique, bluetooth, pulseaudio)

## Rajouter un nouveau périphérique bluetooth

Test: U2BOOMER

- Récupérer les informations sur le device: `list_bluetooth_devices.sh`
```
$  ./list_bluetooth_devices.sh 
Added devices:
GSB200 (00:11:67:AF:7E:BD)
DR-BTN200 (00:18:09:23:17:86)
UE BOOM 2 (88:C6:26:7A:BE:FB)
```
- Rajouter les informations dans .asoundrc et le copier dans ~/.
```bash
pcm.btheadset_u2boom {
    type bluetooth
    device 88:C6:26:7A:BE:FB
    profile "auto"
}
```
- Ecrire un script de chargement du device bt et mise en place dans pulseaudio
```bash
#!/bin/bash
pactl load-module module-alsa-sink device=btheadset_u2boom
```

## GIT: Create a new empty branch
[http://stackoverflow.com/questions/13969050/how-to-create-a-new-empty-branch-for-a-new-project](http://stackoverflow.com/questions/13969050/how-to-create-a-new-empty-branch-for-a-new-project)

```git
git checkout --orphan <mybranch>
git rm --cached -r .
git commit -am "new files added to (new empty) <mybranch>" <files_to_add>
git push --set-upstream origin <mybranch>
```
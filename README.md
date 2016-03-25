# Scripts présent sur le Yoga-3

* scripts pour la gestion (sommaire) d'une connection (manuelle) BlueTooth+AudioSync+PulseAudio
* scripts pour restart des services (générique, bluetooth, pulseaudio)

## GIT: Create a new empty branch
[http://stackoverflow.com/questions/13969050/how-to-create-a-new-empty-branch-for-a-new-project](http://stackoverflow.com/questions/13969050/how-to-create-a-new-empty-branch-for-a-new-project)

```git
git checkout --orphan <mybranch>
git rm --cached -r .
git commit -am "new files added to (new empty) <mybranch>" <files_to_add>
git push --set-upstream origin <mybranch>
```
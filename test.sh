dotnet build

rm -rf OldVersion/obj/Debug/net10.0-android/library_project_classes/
unzip OldVersion/obj/Debug/net10.0-android/library_project_jars/app-1.4.0.aar/classes.jar -d OldVersion/obj/Debug/net10.0-android/library_project_classes/
javap -public -v -s -c OldVersion/obj/Debug/net10.0-android/library_project_classes/androidx/car/app/AppManager.class > old.txt

rm -rf NewVersion/obj/Debug/net10.0-android/library_project_classes/
unzip NewVersion/obj/Debug/net10.0-android/library_project_jars/app-1.7.0.aar/classes.jar -d NewVersion/obj/Debug/net10.0-android/library_project_classes/
javap -public -v -s -c NewVersion/obj/Debug/net10.0-android/library_project_classes/androidx/car/app/AppManager.class > new.txt

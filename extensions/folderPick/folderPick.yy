{
  "resourceType": "GMExtension",
  "resourceVersion": "1.2",
  "name": "folderPick",
  "androidactivityinject": "",
  "androidclassname": "PickMe",
  "androidcodeinjection": "",
  "androidinject": "",
  "androidmanifestinject": "",
  "androidPermissions": [
    "android.permission.WRITE_EXTERNAL_STORAGE",
    "android.permission.MOUNT_UNMOUNT_FILESYSTEMS",
  ],
  "androidProps": true,
  "androidsourcedir": "",
  "author": "",
  "classname": "",
  "copyToTargets": 2097160,
  "date": "2023-07-03T13:28:12.0021017-05:00",
  "description": "",
  "exportToGame": true,
  "extensionVersion": "3.2.0",
  "files": [
    {"resourceType":"GMExtensionFile","resourceVersion":"1.0","name":"folderPick.ext","constants":[],"copyToTargets":2097160,"filename":"folderPick.ext","final":"","functions":[
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"getDire1","argCount":1,"args":[
            1,
          ],"documentation":"","externalName":"getDire1","help":"getDire1(String \"Main_folder_name\");","hidden":false,"kind":11,"returnType":1,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"getDire2","argCount":2,"args":[
            1,
            1,
          ],"documentation":"","externalName":"getDire2","help":"getDire2(String \"Main_folder_name\", String \"Sub_folder_1\");","hidden":false,"kind":11,"returnType":1,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"getDire3","argCount":3,"args":[
            1,
            1,
            1,
          ],"documentation":"","externalName":"getDire3","help":"getDire3(String \"Main_folder_name\",  String \"Sub_folder_1\",  String \"Sub_folder_2\");","hidden":false,"kind":11,"returnType":1,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"getDire4","argCount":4,"args":[
            1,
            1,
            1,
            1,
          ],"documentation":"","externalName":"getDire4","help":"getDire4(String \"Main_folder_name\",  String \"Sub_folder_1\",  String \"Sub_folder_2\",  String \"Sub_folder_3\");","hidden":false,"kind":11,"returnType":1,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"osNotice","argCount":1,"args":[
            1,
          ],"documentation":"","externalName":"osNotice","help":"osNotice(\"folder/NewMediaFileName.media_ext\");","hidden":false,"kind":11,"returnType":1,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"WriteExtStor","argCount":0,"args":[],"documentation":"","externalName":"WriteExtStor","help":"WriteExtStor();","hidden":false,"kind":11,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"ChkWriteExtStor","argCount":0,"args":[],"documentation":"","externalName":"ChkWriteExtStor","help":"ChkWriteExtStor();","hidden":false,"kind":11,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"MountFile","argCount":0,"args":[],"documentation":"","externalName":"MountFile","help":"MountFile();","hidden":false,"kind":11,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"ChkMountFile","argCount":0,"args":[],"documentation":"","externalName":"ChkMountFile","help":"ChkMountFile();","hidden":false,"kind":11,"returnType":2,},
      ],"init":"","kind":4,"order":[],"origname":"extensions\\folderPick.ext","ProxyFiles":[],"uncompress":false,"usesRunnerInterface":false,},
  ],
  "gradleinject": "",
  "hasConvertedCodeInjection": true,
  "helpfile": "",
  "HTML5CodeInjection": "",
  "html5Props": false,
  "IncludedResources": [
    "Sprites\\sprite0",
    "Sprites\\sprite5",
    "Backgrounds\\background1",
    "Objects\\controller",
    "Objects\\obj_Controller",
    "Rooms\\room0",
    "Rooms\\room1",
    "Included Files\\Pngstrip Importer.gmz",
  ],
  "installdir": "",
  "iosCocoaPodDependencies": "",
  "iosCocoaPods": "",
  "ioscodeinjection": "",
  "iosdelegatename": "",
  "iosplistinject": "",
  "iosProps": false,
  "iosSystemFrameworkEntries": [],
  "iosThirdPartyFrameworkEntries": [],
  "license": "Free to use, also for commercial games.",
  "maccompilerflags": "",
  "maclinkerflags": "",
  "macsourcedir": "",
  "options": [],
  "optionsFile": "options.json",
  "packageId": "com.roadhammergaming.folderpick",
  "parent": {
    "name": "Extensions",
    "path": "folders/Extensions.yy",
  },
  "productId": "ACBD3CFF4E539AD869A0E8E3B4B022DD",
  "sourcedir": "",
  "supportedTargets": 2097160,
  "tvosclassname": "",
  "tvosCocoaPodDependencies": "",
  "tvosCocoaPods": "",
  "tvoscodeinjection": "",
  "tvosdelegatename": "",
  "tvosmaccompilerflags": "",
  "tvosmaclinkerflags": "",
  "tvosplistinject": "",
  "tvosProps": false,
  "tvosSystemFrameworkEntries": [],
  "tvosThirdPartyFrameworkEntries": [],
}
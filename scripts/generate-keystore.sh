#!/bin/sh
keytool -genkeypair -v -keystore release.jks -alias upload -keyalg RSA -keysize 2048 -validity 9125 -storepass 'cswHQHcs5FQUgjJzK2aW' -keypass 'cswHQHcs5FQUgjJzK2aW' -dname "CN=Noori Accounts , O=Noori Accounts , C=IN"
mv release.jks android/app/release.jks
keytool -list -v -keystore android/app/release.jks -alias upload -storepass 'cswHQHcs5FQUgjJzK2aW' | grep SHA256

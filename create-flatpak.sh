#!/bin/bash

cd ~/work/lgogdownloader-flatpak
VERSION="25.08"

# newer versions are broken so don't regen this
#~/work/flatpak-builder-tools/pip/flatpak-pip-generator --runtime="org.freedesktop.Sdk//${VERSION}" pywebview || exit
flatpak-builder build com.github.sude_.lgogdownloader.yml --force-clean
flatpak-builder --user --install --force-clean lgogdownloader com.github.sude_.lgogdownloader.yml
flatpak build-bundle ~/.local/share/flatpak/repo lgogdownloader.flatpak com.github.sude_.lgogdownloader

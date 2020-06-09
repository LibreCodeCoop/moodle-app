#!/bin/bash
cd $ROOT_PATH
if [ ! -f "LICENSE" ]; then
    git clone --progress -b "${APP_VERSION}" --single-branch --depth 1 $REPOSITORY /tmp/src
    rsync -r /tmp/src/ $ROOT_PATH
    rm -rf /tmp/src
    npm install -g cordova@8.1.2 @ionic/cli gulp
    npm run setup
fi
npm run ionic:serve -b
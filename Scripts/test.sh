#!/bin/bash

swiftlint
xcodebuild clean test \
    -workspace DemoKit.xcworkspace \
    -scheme DemoKit \
    -destination "platform=iOS Simulator,name=iPhone 7" \
    -enableCodeCoverage YES | xcpretty -c && exit ${PIPESTATUS[0]}

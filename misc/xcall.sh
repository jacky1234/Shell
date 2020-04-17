#!/bin/bash
adb shell am start -a android.intent.action.CALL -d tel:$1

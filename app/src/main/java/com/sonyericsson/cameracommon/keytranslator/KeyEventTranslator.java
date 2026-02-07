package com.sonyericsson.cameracommon.keytranslator;

import com.sonyericsson.android.camera.configuration.UserSettingKey;
import com.sonyericsson.android.camera.configuration.parameters.VolumeKey;
import com.sonyericsson.android.camera.setting.UserSettings;
import com.sonyericsson.android.camera.util.CamLog;

/* JADX INFO: loaded from: classes.dex */
public class KeyEventTranslator {
    public static final String TAG = "KeyEventTranslator";
    private KeyEventTranslator$KeyType mCurrentKeyType = KeyEventTranslator$KeyType.NON;
    private final UserSettings mSetting;

    public KeyEventTranslator(UserSettings userSettings) {
        this.mSetting = userSettings;
    }

    public void reset() {
        this.mCurrentKeyType = KeyEventTranslator$KeyType.NON;
    }

    public KeyEventTranslator$TranslatedKeyCode translateKeyCode(int i) {
        if (i == 4) {
            return KeyEventTranslator$TranslatedKeyCode.BACK;
        }
        if (i == 27) {
            return KeyEventTranslator$TranslatedKeyCode.SHUTTER;
        }
        if (i != 66) {
            if (i == 80) {
                return KeyEventTranslator$TranslatedKeyCode.FOCUS;
            }
            if (i != 82) {
                switch (i) {
                    case 23:
                        break;
                    case 24:
                    case 25:
                        VolumeKey volumeKey = (VolumeKey) this.mSetting.get(UserSettingKey.VOLUME_KEY);
                        if (volumeKey == null) {
                            return KeyEventTranslator$TranslatedKeyCode.ZOOM;
                        }
                        switch (KeyEventTranslator$1.$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$VolumeKey[volumeKey.ordinal()]) {
                            case 1:
                                return KeyEventTranslator$TranslatedKeyCode.ZOOM;
                            case 2:
                                return KeyEventTranslator$TranslatedKeyCode.VOLUME;
                            case 3:
                                if (i == 24) {
                                    return KeyEventTranslator$TranslatedKeyCode.FOCUS_AND_SHUTTER_UP_KEY;
                                }
                                return KeyEventTranslator$TranslatedKeyCode.FOCUS_AND_SHUTTER_DOWN_KEY;
                            default:
                                CamLog.e("Volume key parameter is invalid state.");
                                return KeyEventTranslator$TranslatedKeyCode.ZOOM;
                        }
                    default:
                        return KeyEventTranslator$TranslatedKeyCode.NON;
                }
            } else {
                return KeyEventTranslator$TranslatedKeyCode.MENU;
            }
        }
        return KeyEventTranslator$TranslatedKeyCode.FOCUS_AND_SHUTTER_UP_KEY;
    }

    public KeyEventTranslator$TranslatedKeyCode translateKeyCodeOnDown(int i) {
        KeyEventTranslator$TranslatedKeyCode keyEventTranslator$TranslatedKeyCodeTranslateKeyCode = translateKeyCode(i);
        return !isAvailableNow(keyEventTranslator$TranslatedKeyCodeTranslateKeyCode, KeyEventTranslator$KeyAction.DOWN) ? KeyEventTranslator$TranslatedKeyCode.IGNORED : keyEventTranslator$TranslatedKeyCodeTranslateKeyCode;
    }

    public KeyEventTranslator$TranslatedKeyCode translateKeyCodeOnUp(int i) {
        KeyEventTranslator$TranslatedKeyCode keyEventTranslator$TranslatedKeyCodeTranslateKeyCode = translateKeyCode(i);
        return !isAvailableNow(keyEventTranslator$TranslatedKeyCodeTranslateKeyCode, KeyEventTranslator$KeyAction.UP) ? KeyEventTranslator$TranslatedKeyCode.IGNORED : keyEventTranslator$TranslatedKeyCodeTranslateKeyCode;
    }

    public KeyEventTranslator$TranslatedKeyCode translateKeyCodeOnLongPress(int i) {
        KeyEventTranslator$TranslatedKeyCode keyEventTranslator$TranslatedKeyCodeTranslateKeyCode = translateKeyCode(i);
        return !isAvailableNow(keyEventTranslator$TranslatedKeyCodeTranslateKeyCode, KeyEventTranslator$KeyAction.LONG_PRESS) ? KeyEventTranslator$TranslatedKeyCode.IGNORED : keyEventTranslator$TranslatedKeyCodeTranslateKeyCode;
    }

    private boolean isAvailableNow(KeyEventTranslator$TranslatedKeyCode keyEventTranslator$TranslatedKeyCode, KeyEventTranslator$KeyAction keyEventTranslator$KeyAction) {
        switch (KeyEventTranslator$1.$SwitchMap$com$sonyericsson$cameracommon$keytranslator$KeyEventTranslator$TranslatedKeyCode[keyEventTranslator$TranslatedKeyCode.ordinal()]) {
            case 1:
                return isExpectedKeyType(keyEventTranslator$KeyAction, KeyEventTranslator$KeyType.NON, KeyEventTranslator$KeyType.CAMERA_KEY, KeyEventTranslator$KeyType.CAMERA_KEY, KeyEventTranslator$KeyType.NON);
            case 2:
                return isExpectedKeyType(keyEventTranslator$KeyAction, KeyEventTranslator$KeyType.CAMERA_KEY, KeyEventTranslator$KeyType.CAMERA_KEY, KeyEventTranslator$KeyType.CAMERA_KEY, KeyEventTranslator$KeyType.CAMERA_KEY);
            case 3:
                return isExpectedKeyType(keyEventTranslator$KeyAction, KeyEventTranslator$KeyType.NON, KeyEventTranslator$KeyType.VOLUME_UP_KEY, KeyEventTranslator$KeyType.VOLUME_UP_KEY, KeyEventTranslator$KeyType.NON);
            case 4:
                return isExpectedKeyType(keyEventTranslator$KeyAction, KeyEventTranslator$KeyType.NON, KeyEventTranslator$KeyType.VOLUME_DOWN_KEY, KeyEventTranslator$KeyType.VOLUME_DOWN_KEY, KeyEventTranslator$KeyType.NON);
            default:
                return true;
        }
    }

    private boolean isExpectedKeyType(KeyEventTranslator$KeyAction keyEventTranslator$KeyAction, KeyEventTranslator$KeyType keyEventTranslator$KeyType, KeyEventTranslator$KeyType keyEventTranslator$KeyType2, KeyEventTranslator$KeyType keyEventTranslator$KeyType3, KeyEventTranslator$KeyType keyEventTranslator$KeyType4) {
        switch (KeyEventTranslator$1.$SwitchMap$com$sonyericsson$cameracommon$keytranslator$KeyEventTranslator$KeyAction[keyEventTranslator$KeyAction.ordinal()]) {
            case 1:
                if (this.mCurrentKeyType != keyEventTranslator$KeyType) {
                    return false;
                }
                this.mCurrentKeyType = keyEventTranslator$KeyType2;
                return true;
            case 2:
                if (this.mCurrentKeyType != keyEventTranslator$KeyType3) {
                    return false;
                }
                this.mCurrentKeyType = keyEventTranslator$KeyType4;
                return true;
            case 3:
                return this.mCurrentKeyType == keyEventTranslator$KeyType3;
            default:
                return false;
        }
    }
}

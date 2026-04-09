.class public Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;
.super Ljava/lang/Object;
.source "KeyEventTranslator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyAction;,
        Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;,
        Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "KeyEventTranslator"


# instance fields
.field private mCurrentKeyType:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;

.field private final mSetting:Lcom/sonyericsson/android/camera/setting/UserSettings;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera/setting/UserSettings;)V
    .locals 1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    sget-object v0, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;->NON:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;->mCurrentKeyType:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;

    .line 68
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;->mSetting:Lcom/sonyericsson/android/camera/setting/UserSettings;

    return-void
.end method

.method private isAvailableNow(Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyAction;)Z
    .locals 6

    .line 191
    sget-object v0, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$1;->$SwitchMap$com$sonyericsson$cameracommon$keytranslator$KeyEventTranslator$TranslatedKeyCode:[I

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    const/4 p0, 0x1

    goto :goto_0

    .line 205
    :pswitch_0
    sget-object v2, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;->NON:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;

    sget-object v3, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;->VOLUME_DOWN_KEY:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;

    sget-object v4, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;->VOLUME_DOWN_KEY:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;

    sget-object v5, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;->NON:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;

    move-object v0, p0

    move-object v1, p2

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;->isExpectedKeyType(Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyAction;Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;)Z

    move-result p0

    goto :goto_0

    .line 201
    :pswitch_1
    sget-object v2, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;->NON:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;

    sget-object v3, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;->VOLUME_UP_KEY:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;

    sget-object v4, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;->VOLUME_UP_KEY:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;

    sget-object v5, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;->NON:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;

    move-object v0, p0

    move-object v1, p2

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;->isExpectedKeyType(Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyAction;Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;)Z

    move-result p0

    goto :goto_0

    .line 197
    :pswitch_2
    sget-object v2, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;->CAMERA_KEY:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;

    sget-object v3, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;->CAMERA_KEY:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;

    sget-object v4, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;->CAMERA_KEY:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;

    sget-object v5, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;->CAMERA_KEY:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;

    move-object v0, p0

    move-object v1, p2

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;->isExpectedKeyType(Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyAction;Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;)Z

    move-result p0

    goto :goto_0

    .line 193
    :pswitch_3
    sget-object v2, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;->NON:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;

    sget-object v3, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;->CAMERA_KEY:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;

    sget-object v4, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;->CAMERA_KEY:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;

    sget-object v5, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;->NON:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;

    move-object v0, p0

    move-object v1, p2

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;->isExpectedKeyType(Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyAction;Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;)Z

    move-result p0

    :goto_0
    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private isExpectedKeyType(Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyAction;Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;)Z
    .locals 2

    .line 220
    sget-object v0, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$1;->$SwitchMap$com$sonyericsson$cameracommon$keytranslator$KeyEventTranslator$KeyAction:[I

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyAction;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    return v1

    .line 238
    :pswitch_0
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;->mCurrentKeyType:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;

    if-ne p0, p4, :cond_0

    return v0

    :cond_0
    return v1

    .line 230
    :pswitch_1
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;->mCurrentKeyType:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;

    if-ne p1, p4, :cond_1

    .line 231
    iput-object p5, p0, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;->mCurrentKeyType:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;

    return v0

    :cond_1
    return v1

    .line 222
    :pswitch_2
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;->mCurrentKeyType:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;

    if-ne p1, p2, :cond_2

    .line 223
    iput-object p3, p0, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;->mCurrentKeyType:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;

    return v0

    :cond_2
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public reset()V
    .locals 1

    .line 76
    sget-object v0, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;->NON:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;->mCurrentKeyType:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;

    return-void
.end method

.method public translateKeyCode(I)Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;
    .locals 1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_6

    const/16 v0, 0x1b

    if-eq p1, v0, :cond_5

    const/16 v0, 0x42

    if-eq p1, v0, :cond_4

    const/16 v0, 0x50

    if-eq p1, v0, :cond_3

    const/16 v0, 0x52

    if-eq p1, v0, :cond_2

    packed-switch p1, :pswitch_data_0

    .line 140
    sget-object p0, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;->NON:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;

    goto :goto_0

    .line 96
    :pswitch_0
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;->mSetting:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VOLUME_KEY:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {p0, v0}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/configuration/parameters/VolumeKey;

    if-nez p0, :cond_0

    .line 104
    sget-object p0, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;->ZOOM:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;

    goto :goto_0

    .line 108
    :cond_0
    sget-object v0, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$VolumeKey:[I

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/VolumeKey;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_1

    const-string p0, "Volume key parameter is invalid state."

    .line 123
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 124
    sget-object p0, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;->ZOOM:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;

    goto :goto_0

    :pswitch_1
    const/16 p0, 0x18

    if-ne p1, p0, :cond_1

    .line 117
    sget-object p0, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;->FOCUS_AND_SHUTTER_UP_KEY:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;

    goto :goto_0

    .line 119
    :cond_1
    sget-object p0, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;->FOCUS_AND_SHUTTER_DOWN_KEY:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;

    goto :goto_0

    .line 113
    :pswitch_2
    sget-object p0, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;->VOLUME:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;

    goto :goto_0

    .line 110
    :pswitch_3
    sget-object p0, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;->ZOOM:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;

    goto :goto_0

    .line 132
    :cond_2
    sget-object p0, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;->MENU:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;

    goto :goto_0

    .line 88
    :cond_3
    sget-object p0, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;->FOCUS:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;

    goto :goto_0

    .line 136
    :cond_4
    :pswitch_4
    sget-object p0, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;->FOCUS_AND_SHUTTER_UP_KEY:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;

    goto :goto_0

    .line 91
    :cond_5
    sget-object p0, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;->SHUTTER:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;

    goto :goto_0

    .line 129
    :cond_6
    sget-object p0, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;->BACK:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;

    :goto_0
    return-object p0

    :pswitch_data_0
    .packed-switch 0x17
        :pswitch_4
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public translateKeyCodeOnDown(I)Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;
    .locals 1

    .line 152
    invoke-virtual {p0, p1}, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;->translateKeyCode(I)Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;

    move-result-object p1

    .line 153
    sget-object v0, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyAction;->DOWN:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyAction;

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;->isAvailableNow(Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyAction;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 154
    sget-object p1, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;->IGNORED:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;

    :cond_0
    return-object p1
.end method

.method public translateKeyCodeOnLongPress(I)Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;
    .locals 1

    .line 176
    invoke-virtual {p0, p1}, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;->translateKeyCode(I)Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;

    move-result-object p1

    .line 177
    sget-object v0, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyAction;->LONG_PRESS:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyAction;

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;->isAvailableNow(Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyAction;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 178
    sget-object p1, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;->IGNORED:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;

    :cond_0
    return-object p1
.end method

.method public translateKeyCodeOnUp(I)Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;
    .locals 1

    .line 164
    invoke-virtual {p0, p1}, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;->translateKeyCode(I)Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;

    move-result-object p1

    .line 165
    sget-object v0, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyAction;->UP:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyAction;

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;->isAvailableNow(Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyAction;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 166
    sget-object p1, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;->IGNORED:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;

    :cond_0
    return-object p1
.end method

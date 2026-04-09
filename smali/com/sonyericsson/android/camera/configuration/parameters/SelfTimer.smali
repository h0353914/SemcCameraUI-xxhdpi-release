.class public final enum Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;
.super Ljava/lang/Enum;
.source "SelfTimer.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;
.implements Lcom/sonyericsson/cameracommon/settings/SelfTimerInterface;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;",
        ">;",
        "Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;",
        "Lcom/sonyericsson/cameracommon/settings/SelfTimerInterface;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;

.field public static final enum GESTURE_SHUTTER_COUNT_DOWN:Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;

.field public static final enum LAUNCH_AND_CAPTURE_COUNT_DOWN:Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;

.field public static final enum LONG:Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;

.field public static final enum OFF:Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;

.field public static final enum SHORT:Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;

.field public static final enum SIDE_COUNT_DOWN:Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;

.field public static final TAG:Ljava/lang/String; = "SelfTimer"

.field private static final sParameterTextId:I = 0x7f0f0281

.field private static final sShortcutTitleTextId:I = 0x7f0f0280


# instance fields
.field private final mBooleanValue:Z

.field private final mCountDownIconId:I

.field private final mIconId:I

.field private mMilliSeconds:I

.field private final mShortcutIconId:I

.field private mSoundType:Lcom/sonyericsson/cameracommon/sound/SoundPlayer$Type;

.field private final mTextId:I


# direct methods
.method static constructor <clinit>()V
    .locals 21

    .line 20
    new-instance v10, Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;

    const-string v1, "LONG"

    sget-object v9, Lcom/sonyericsson/cameracommon/sound/SoundPlayer$Type;->SELF_TIMER_1SEC:Lcom/sonyericsson/cameracommon/sound/SoundPlayer$Type;

    const/4 v2, 0x0

    const v3, 0x7f0801c4

    const v4, 0x7f0801cd

    const v5, 0x7f0f0279

    const/4 v6, 0x1

    const/16 v7, 0x2710

    const/4 v8, -0x1

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;-><init>(Ljava/lang/String;IIIIZIILcom/sonyericsson/cameracommon/sound/SoundPlayer$Type;)V

    sput-object v10, Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;->LONG:Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;

    .line 28
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;

    const-string v12, "SHORT"

    sget-object v20, Lcom/sonyericsson/cameracommon/sound/SoundPlayer$Type;->SELF_TIMER_3SEC:Lcom/sonyericsson/cameracommon/sound/SoundPlayer$Type;

    const/4 v13, 0x1

    const v14, 0x7f0801c6

    const v15, 0x7f0801ce

    const v16, 0x7f0f027b

    const/16 v17, 0x1

    const/16 v18, 0xbb8

    const/16 v19, -0x1

    move-object v11, v0

    invoke-direct/range {v11 .. v20}, Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;-><init>(Ljava/lang/String;IIIIZIILcom/sonyericsson/cameracommon/sound/SoundPlayer$Type;)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;->SHORT:Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;

    .line 36
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;

    const-string v2, "GESTURE_SHUTTER_COUNT_DOWN"

    const/4 v3, 0x2

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/16 v8, 0x5dc

    const v9, 0x7f080202

    const/4 v10, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;-><init>(Ljava/lang/String;IIIIZIILcom/sonyericsson/cameracommon/sound/SoundPlayer$Type;)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;->GESTURE_SHUTTER_COUNT_DOWN:Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;

    .line 44
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;

    const-string v12, "SIDE_COUNT_DOWN"

    const/4 v13, 0x3

    const/4 v14, -0x1

    const/4 v15, -0x1

    const/16 v16, -0x1

    const/16 v17, 0x0

    const/16 v18, 0x1f4

    const v19, 0x7f080202

    const/16 v20, 0x0

    move-object v11, v0

    invoke-direct/range {v11 .. v20}, Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;-><init>(Ljava/lang/String;IIIIZIILcom/sonyericsson/cameracommon/sound/SoundPlayer$Type;)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;->SIDE_COUNT_DOWN:Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;

    .line 52
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;

    const-string v2, "LAUNCH_AND_CAPTURE_COUNT_DOWN"

    const/4 v3, 0x4

    const/4 v8, 0x0

    const/4 v9, -0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;-><init>(Ljava/lang/String;IIIIZIILcom/sonyericsson/cameracommon/sound/SoundPlayer$Type;)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;->LAUNCH_AND_CAPTURE_COUNT_DOWN:Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;

    .line 60
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;

    const-string v12, "OFF"

    const/4 v13, 0x5

    const v14, 0x7f0801c7

    const v15, 0x7f0801cf

    const v16, 0x7f0f0283

    const/16 v18, 0x0

    const/16 v19, -0x1

    move-object v11, v0

    invoke-direct/range {v11 .. v20}, Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;-><init>(Ljava/lang/String;IIIIZIILcom/sonyericsson/cameracommon/sound/SoundPlayer$Type;)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;

    const/4 v0, 0x6

    .line 19
    new-array v0, v0, [Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;->LONG:Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;->SHORT:Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;->GESTURE_SHUTTER_COUNT_DOWN:Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;->SIDE_COUNT_DOWN:Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;->LAUNCH_AND_CAPTURE_COUNT_DOWN:Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIIZIILcom/sonyericsson/cameracommon/sound/SoundPlayer$Type;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIZII",
            "Lcom/sonyericsson/cameracommon/sound/SoundPlayer$Type;",
            ")V"
        }
    .end annotation

    .line 107
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 108
    iput p3, p0, Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;->mIconId:I

    .line 109
    iput p4, p0, Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;->mShortcutIconId:I

    .line 110
    iput p5, p0, Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;->mTextId:I

    .line 111
    iput-boolean p6, p0, Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;->mBooleanValue:Z

    .line 112
    iput p7, p0, Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;->mMilliSeconds:I

    .line 113
    iput p8, p0, Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;->mCountDownIconId:I

    .line 114
    iput-object p9, p0, Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;->mSoundType:Lcom/sonyericsson/cameracommon/sound/SoundPlayer$Type;

    return-void
.end method

.method public static getDefaultValue(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;
    .locals 0

    .line 196
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;

    return-object p0
.end method

.method public static getOptions()[Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;
    .locals 2

    .line 184
    new-instance v0, Ljava/util/ArrayList;

    .line 185
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;->values()[Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 186
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;->GESTURE_SHUTTER_COUNT_DOWN:Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 187
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;->SIDE_COUNT_DOWN:Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 188
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;->LAUNCH_AND_CAPTURE_COUNT_DOWN:Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 190
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;

    .line 191
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object v1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;
    .locals 1

    .line 19
    const-class v0, Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;
    .locals 1

    .line 19
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;

    return-object v0
.end method


# virtual methods
.method public apply(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingApplicable;)V
    .locals 0

    .line 124
    invoke-interface {p1, p0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingApplicable;->set(Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;)V

    return-void
.end method

.method public getCountDownIconId()I
    .locals 0

    .line 176
    iget p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;->mCountDownIconId:I

    return p0
.end method

.method public getDurationInMillisecond()I
    .locals 0

    .line 171
    iget p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;->mMilliSeconds:I

    return p0
.end method

.method public getIconId()I
    .locals 0

    .line 142
    iget p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;->mIconId:I

    return p0
.end method

.method public getKey()Lcom/sonyericsson/android/camera/configuration/UserSettingKey;
    .locals 0

    .line 132
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SELF_TIMER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    return-object p0
.end method

.method public getKeyTextId()I
    .locals 0

    const p0, 0x7f0f0281

    return p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 201
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getShortcutId()I
    .locals 0

    .line 146
    iget p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;->mShortcutIconId:I

    return p0
.end method

.method public getSoundType()Lcom/sonyericsson/cameracommon/sound/SoundPlayer$Type;
    .locals 0

    .line 211
    iget-object p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;->mSoundType:Lcom/sonyericsson/cameracommon/sound/SoundPlayer$Type;

    return-object p0
.end method

.method public getTextId()I
    .locals 0

    .line 156
    iget p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;->mTextId:I

    return p0
.end method

.method public getValue()Ljava/lang/String;
    .locals 0

    .line 166
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public setDurationInMillisecond(I)V
    .locals 1

    .line 215
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;->LAUNCH_AND_CAPTURE_COUNT_DOWN:Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;

    if-ne p0, v0, :cond_2

    .line 216
    iput p1, p0, Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;->mMilliSeconds:I

    .line 217
    iget p1, p0, Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;->mMilliSeconds:I

    const/16 v0, 0xfa0

    if-ge p1, v0, :cond_0

    .line 218
    sget-object p1, Lcom/sonyericsson/cameracommon/sound/SoundPlayer$Type;->SELF_TIMER_3SEC:Lcom/sonyericsson/cameracommon/sound/SoundPlayer$Type;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;->mSoundType:Lcom/sonyericsson/cameracommon/sound/SoundPlayer$Type;

    goto :goto_0

    .line 219
    :cond_0
    iget p1, p0, Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;->mMilliSeconds:I

    if-ne p1, v0, :cond_1

    .line 220
    sget-object p1, Lcom/sonyericsson/cameracommon/sound/SoundPlayer$Type;->SELF_TIMER_4SEC:Lcom/sonyericsson/cameracommon/sound/SoundPlayer$Type;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;->mSoundType:Lcom/sonyericsson/cameracommon/sound/SoundPlayer$Type;

    goto :goto_0

    .line 222
    :cond_1
    sget-object p1, Lcom/sonyericsson/cameracommon/sound/SoundPlayer$Type;->SELF_TIMER_1SEC:Lcom/sonyericsson/cameracommon/sound/SoundPlayer$Type;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;->mSoundType:Lcom/sonyericsson/cameracommon/sound/SoundPlayer$Type;

    :cond_2
    :goto_0
    return-void
.end method

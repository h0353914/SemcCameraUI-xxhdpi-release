.class public final enum Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;
.super Ljava/lang/Enum;
.source "Event.java"

# interfaces
.implements Lcom/sonymobile/cameracommon/research/parameters/Event$Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/research/parameters/Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WizardPage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;",
        ">;",
        "Lcom/sonymobile/cameracommon/research/parameters/Event$Action;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

.field public static final enum EYE_POSITION_WIZARD:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

.field public static final enum HAND_SHUTTER_WIZARD:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

.field public static final enum LOCATION_WIZARD:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

.field public static final enum MANUAL_FUSION_WIZARD1:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

.field public static final enum MANUAL_FUSION_WIZARD2:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

.field public static final enum ONE_SHOT_WIZARD:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

.field public static final enum PREDICTIVE_LAUNCH_WIZARD:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

.field public static final enum READMORE_ONE_SHOT_WIZARD:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

.field public static final enum READMORE_SLOWMOTION_WIZARD1:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

.field public static final enum READMORE_SLOWMOTION_WIZARD2:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

.field public static final enum READMORE_SUPER_SLOWMOTION_WIZARD1:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

.field public static final enum READMORE_SUPER_SLOWMOTION_WIZARD2:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

.field public static final enum READMORE_SUPER_SLOWMOTION_WIZARD3:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

.field public static final enum SIDE_SENSING_WIZARD:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

.field public static final enum SLOWMOTION_WIZARD1:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

.field public static final enum SLOWMOTION_WIZARD2:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

.field public static final enum SUPERIOR_AUTO_FUSION_WIZARD:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

.field public static final enum SUPER_SLOWMOTION_WIZARD1:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

.field public static final enum SUPER_SLOWMOTION_WIZARD2:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

.field public static final enum SUPER_SLOWMOTION_WIZARD3:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

.field public static final enum SUPER_SLOWMOTION_WIZARD4:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

.field public static final enum UNKNOWN:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

.field public static final enum VIDEO_FUSION_WIZARD1:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

.field public static final enum VIDEO_FUSION_WIZARD2:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 234
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    const-string v1, "LOCATION_WIZARD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->LOCATION_WIZARD:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    .line 235
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    const-string v1, "PREDICTIVE_LAUNCH_WIZARD"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->PREDICTIVE_LAUNCH_WIZARD:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    .line 236
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    const-string v1, "SIDE_SENSING_WIZARD"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->SIDE_SENSING_WIZARD:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    .line 237
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    const-string v1, "EYE_POSITION_WIZARD"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->EYE_POSITION_WIZARD:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    .line 238
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    const-string v1, "HAND_SHUTTER_WIZARD"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->HAND_SHUTTER_WIZARD:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    .line 239
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    const-string v1, "SUPER_SLOWMOTION_WIZARD1"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->SUPER_SLOWMOTION_WIZARD1:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    .line 240
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    const-string v1, "SUPER_SLOWMOTION_WIZARD2"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->SUPER_SLOWMOTION_WIZARD2:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    .line 241
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    const-string v1, "SUPER_SLOWMOTION_WIZARD3"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->SUPER_SLOWMOTION_WIZARD3:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    .line 242
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    const-string v1, "SUPER_SLOWMOTION_WIZARD4"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->SUPER_SLOWMOTION_WIZARD4:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    .line 243
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    const-string v1, "ONE_SHOT_WIZARD"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->ONE_SHOT_WIZARD:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    .line 244
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    const-string v1, "SLOWMOTION_WIZARD1"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12}, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->SLOWMOTION_WIZARD1:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    .line 245
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    const-string v1, "SLOWMOTION_WIZARD2"

    const/16 v13, 0xb

    invoke-direct {v0, v1, v13}, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->SLOWMOTION_WIZARD2:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    .line 246
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    const-string v1, "READMORE_SUPER_SLOWMOTION_WIZARD1"

    const/16 v14, 0xc

    invoke-direct {v0, v1, v14}, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->READMORE_SUPER_SLOWMOTION_WIZARD1:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    .line 247
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    const-string v1, "READMORE_SUPER_SLOWMOTION_WIZARD2"

    const/16 v15, 0xd

    invoke-direct {v0, v1, v15}, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->READMORE_SUPER_SLOWMOTION_WIZARD2:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    .line 248
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    const-string v1, "READMORE_SUPER_SLOWMOTION_WIZARD3"

    const/16 v15, 0xe

    invoke-direct {v0, v1, v15}, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->READMORE_SUPER_SLOWMOTION_WIZARD3:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    .line 249
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    const-string v1, "READMORE_ONE_SHOT_WIZARD"

    const/16 v15, 0xf

    invoke-direct {v0, v1, v15}, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->READMORE_ONE_SHOT_WIZARD:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    .line 250
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    const-string v1, "READMORE_SLOWMOTION_WIZARD1"

    const/16 v15, 0x10

    invoke-direct {v0, v1, v15}, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->READMORE_SLOWMOTION_WIZARD1:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    .line 251
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    const-string v1, "READMORE_SLOWMOTION_WIZARD2"

    const/16 v15, 0x11

    invoke-direct {v0, v1, v15}, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->READMORE_SLOWMOTION_WIZARD2:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    .line 252
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    const-string v1, "SUPERIOR_AUTO_FUSION_WIZARD"

    const/16 v15, 0x12

    invoke-direct {v0, v1, v15}, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->SUPERIOR_AUTO_FUSION_WIZARD:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    .line 253
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    const-string v1, "VIDEO_FUSION_WIZARD1"

    const/16 v15, 0x13

    invoke-direct {v0, v1, v15}, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->VIDEO_FUSION_WIZARD1:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    .line 254
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    const-string v1, "VIDEO_FUSION_WIZARD2"

    const/16 v15, 0x14

    invoke-direct {v0, v1, v15}, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->VIDEO_FUSION_WIZARD2:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    .line 255
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    const-string v1, "MANUAL_FUSION_WIZARD1"

    const/16 v15, 0x15

    invoke-direct {v0, v1, v15}, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->MANUAL_FUSION_WIZARD1:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    .line 256
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    const-string v1, "MANUAL_FUSION_WIZARD2"

    const/16 v15, 0x16

    invoke-direct {v0, v1, v15}, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->MANUAL_FUSION_WIZARD2:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    .line 257
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    const-string v1, "UNKNOWN"

    const/16 v15, 0x17

    invoke-direct {v0, v1, v15}, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->UNKNOWN:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    const/16 v0, 0x18

    .line 233
    new-array v0, v0, [Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->LOCATION_WIZARD:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->PREDICTIVE_LAUNCH_WIZARD:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->SIDE_SENSING_WIZARD:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->EYE_POSITION_WIZARD:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->HAND_SHUTTER_WIZARD:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->SUPER_SLOWMOTION_WIZARD1:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    aput-object v1, v0, v7

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->SUPER_SLOWMOTION_WIZARD2:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    aput-object v1, v0, v8

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->SUPER_SLOWMOTION_WIZARD3:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    aput-object v1, v0, v9

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->SUPER_SLOWMOTION_WIZARD4:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    aput-object v1, v0, v10

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->ONE_SHOT_WIZARD:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    aput-object v1, v0, v11

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->SLOWMOTION_WIZARD1:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    aput-object v1, v0, v12

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->SLOWMOTION_WIZARD2:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    aput-object v1, v0, v13

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->READMORE_SUPER_SLOWMOTION_WIZARD1:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    aput-object v1, v0, v14

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->READMORE_SUPER_SLOWMOTION_WIZARD2:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->READMORE_SUPER_SLOWMOTION_WIZARD3:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->READMORE_ONE_SHOT_WIZARD:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->READMORE_SLOWMOTION_WIZARD1:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->READMORE_SLOWMOTION_WIZARD2:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->SUPERIOR_AUTO_FUSION_WIZARD:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->VIDEO_FUSION_WIZARD1:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->VIDEO_FUSION_WIZARD2:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->MANUAL_FUSION_WIZARD1:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->MANUAL_FUSION_WIZARD2:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->UNKNOWN:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->$VALUES:[Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 233
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;
    .locals 1

    .line 233
    const-class v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    return-object p0
.end method

.method public static values()[Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;
    .locals 1

    .line 233
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->$VALUES:[Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    invoke-virtual {v0}, [Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    return-object v0
.end method

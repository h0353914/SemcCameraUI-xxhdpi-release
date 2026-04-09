.class public final enum Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/AbstractCapturableState$AbstractPhotoState;
.super Ljava/lang/Enum;
.source "AbstractCapturableState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/AbstractCapturableState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AbstractPhotoState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/AbstractCapturableState$AbstractPhotoState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/AbstractCapturableState$AbstractPhotoState;

.field public static final enum BLOCKED:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/AbstractCapturableState$AbstractPhotoState;

.field public static final enum IDLE:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/AbstractCapturableState$AbstractPhotoState;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 19
    new-instance v0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/AbstractCapturableState$AbstractPhotoState;

    const-string v1, "IDLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/AbstractCapturableState$AbstractPhotoState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/AbstractCapturableState$AbstractPhotoState;->IDLE:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/AbstractCapturableState$AbstractPhotoState;

    .line 24
    new-instance v0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/AbstractCapturableState$AbstractPhotoState;

    const-string v1, "BLOCKED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/AbstractCapturableState$AbstractPhotoState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/AbstractCapturableState$AbstractPhotoState;->BLOCKED:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/AbstractCapturableState$AbstractPhotoState;

    const/4 v0, 0x2

    .line 15
    new-array v0, v0, [Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/AbstractCapturableState$AbstractPhotoState;

    sget-object v1, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/AbstractCapturableState$AbstractPhotoState;->IDLE:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/AbstractCapturableState$AbstractPhotoState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/AbstractCapturableState$AbstractPhotoState;->BLOCKED:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/AbstractCapturableState$AbstractPhotoState;

    aput-object v1, v0, v3

    sput-object v0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/AbstractCapturableState$AbstractPhotoState;->$VALUES:[Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/AbstractCapturableState$AbstractPhotoState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/AbstractCapturableState$AbstractPhotoState;
    .locals 1

    .line 15
    const-class v0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/AbstractCapturableState$AbstractPhotoState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/AbstractCapturableState$AbstractPhotoState;

    return-object p0
.end method

.method public static values()[Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/AbstractCapturableState$AbstractPhotoState;
    .locals 1

    .line 15
    sget-object v0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/AbstractCapturableState$AbstractPhotoState;->$VALUES:[Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/AbstractCapturableState$AbstractPhotoState;

    invoke-virtual {v0}, [Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/AbstractCapturableState$AbstractPhotoState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/AbstractCapturableState$AbstractPhotoState;

    return-object v0
.end method

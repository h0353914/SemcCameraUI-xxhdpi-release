.class public final enum Lcom/sonyericsson/android/camera/view/ToastContent$ToastID;
.super Ljava/lang/Enum;
.source "ToastContent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/ToastContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ToastID"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/view/ToastContent$ToastID;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/view/ToastContent$ToastID;

.field public static final enum NEEDS_TO_COOL_DOWN:Lcom/sonyericsson/android/camera/view/ToastContent$ToastID;

.field public static final enum USE_TO_NIGHT_PORTRAIT_FLASH:Lcom/sonyericsson/android/camera/view/ToastContent$ToastID;

.field public static final enum USE_VOLUME_KEY_TO_ZOOM:Lcom/sonyericsson/android/camera/view/ToastContent$ToastID;


# instance fields
.field private final mDuration:I

.field private final mMessageResourceID:I

.field private final mPosition:Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastPosition;


# direct methods
.method private static synthetic $values()[Lcom/sonyericsson/android/camera/view/ToastContent$ToastID;
    .locals 3

    .line 33
    sget-object v0, Lcom/sonyericsson/android/camera/view/ToastContent$ToastID;->USE_VOLUME_KEY_TO_ZOOM:Lcom/sonyericsson/android/camera/view/ToastContent$ToastID;

    sget-object v1, Lcom/sonyericsson/android/camera/view/ToastContent$ToastID;->NEEDS_TO_COOL_DOWN:Lcom/sonyericsson/android/camera/view/ToastContent$ToastID;

    sget-object v2, Lcom/sonyericsson/android/camera/view/ToastContent$ToastID;->USE_TO_NIGHT_PORTRAIT_FLASH:Lcom/sonyericsson/android/camera/view/ToastContent$ToastID;

    filled-new-array {v0, v1, v2}, [Lcom/sonyericsson/android/camera/view/ToastContent$ToastID;

    move-result-object v0

    return-object v0
.end method

.method static bridge synthetic -$$Nest$fgetmDuration(Lcom/sonyericsson/android/camera/view/ToastContent$ToastID;)I
    .locals 0

    iget p0, p0, Lcom/sonyericsson/android/camera/view/ToastContent$ToastID;->mDuration:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmMessageResourceID(Lcom/sonyericsson/android/camera/view/ToastContent$ToastID;)I
    .locals 0

    iget p0, p0, Lcom/sonyericsson/android/camera/view/ToastContent$ToastID;->mMessageResourceID:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPosition(Lcom/sonyericsson/android/camera/view/ToastContent$ToastID;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastPosition;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ToastContent$ToastID;->mPosition:Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastPosition;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 13

    .line 34
    new-instance v6, Lcom/sonyericsson/android/camera/view/ToastContent$ToastID;

    const/4 v4, 0x0

    sget-object v5, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastPosition;->TOP:Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastPosition;

    const-string v1, "USE_VOLUME_KEY_TO_ZOOM"

    const/4 v2, 0x0

    const v3, 0x7f0f04ba

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/android/camera/view/ToastContent$ToastID;-><init>(Ljava/lang/String;IIILcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastPosition;)V

    sput-object v6, Lcom/sonyericsson/android/camera/view/ToastContent$ToastID;->USE_VOLUME_KEY_TO_ZOOM:Lcom/sonyericsson/android/camera/view/ToastContent$ToastID;

    .line 37
    new-instance v0, Lcom/sonyericsson/android/camera/view/ToastContent$ToastID;

    const/4 v11, 0x1

    sget-object v12, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastPosition;->TOP:Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastPosition;

    const-string v8, "NEEDS_TO_COOL_DOWN"

    const/4 v9, 0x1

    const v10, 0x7f0f0178

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/sonyericsson/android/camera/view/ToastContent$ToastID;-><init>(Ljava/lang/String;IIILcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastPosition;)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/ToastContent$ToastID;->NEEDS_TO_COOL_DOWN:Lcom/sonyericsson/android/camera/view/ToastContent$ToastID;

    .line 40
    new-instance v0, Lcom/sonyericsson/android/camera/view/ToastContent$ToastID;

    const/4 v5, 0x1

    sget-object v6, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastPosition;->BOTTOM:Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastPosition;

    const-string v2, "USE_TO_NIGHT_PORTRAIT_FLASH"

    const/4 v3, 0x2

    const v4, 0x7f0f022d

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/sonyericsson/android/camera/view/ToastContent$ToastID;-><init>(Ljava/lang/String;IIILcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastPosition;)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/ToastContent$ToastID;->USE_TO_NIGHT_PORTRAIT_FLASH:Lcom/sonyericsson/android/camera/view/ToastContent$ToastID;

    .line 33
    invoke-static {}, Lcom/sonyericsson/android/camera/view/ToastContent$ToastID;->$values()[Lcom/sonyericsson/android/camera/view/ToastContent$ToastID;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera/view/ToastContent$ToastID;->$VALUES:[Lcom/sonyericsson/android/camera/view/ToastContent$ToastID;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIILcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastPosition;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastPosition;",
            ")V"
        }
    .end annotation

    .line 53
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 54
    iput p3, p0, Lcom/sonyericsson/android/camera/view/ToastContent$ToastID;->mMessageResourceID:I

    .line 55
    iput p4, p0, Lcom/sonyericsson/android/camera/view/ToastContent$ToastID;->mDuration:I

    .line 56
    iput-object p5, p0, Lcom/sonyericsson/android/camera/view/ToastContent$ToastID;->mPosition:Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastPosition;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/view/ToastContent$ToastID;
    .locals 1

    .line 33
    const-class v0, Lcom/sonyericsson/android/camera/view/ToastContent$ToastID;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/view/ToastContent$ToastID;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/view/ToastContent$ToastID;
    .locals 1

    .line 33
    sget-object v0, Lcom/sonyericsson/android/camera/view/ToastContent$ToastID;->$VALUES:[Lcom/sonyericsson/android/camera/view/ToastContent$ToastID;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/view/ToastContent$ToastID;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/view/ToastContent$ToastID;

    return-object v0
.end method

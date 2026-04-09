.class public final enum Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastPosition;
.super Ljava/lang/Enum;
.source "RotatableToast.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ToastPosition"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastPosition;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastPosition;

.field public static final enum BOTTOM:Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastPosition;

.field public static final enum CENTER:Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastPosition;

.field public static final enum TOP:Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastPosition;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 108
    new-instance v0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastPosition;

    const-string v1, "TOP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastPosition;->TOP:Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastPosition;

    .line 109
    new-instance v0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastPosition;

    const-string v1, "CENTER"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastPosition;->CENTER:Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastPosition;

    .line 110
    new-instance v0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastPosition;

    const-string v1, "BOTTOM"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastPosition;->BOTTOM:Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastPosition;

    const/4 v0, 0x3

    .line 107
    new-array v0, v0, [Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastPosition;

    sget-object v1, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastPosition;->TOP:Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastPosition;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastPosition;->CENTER:Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastPosition;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastPosition;->BOTTOM:Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastPosition;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastPosition;->$VALUES:[Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastPosition;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 107
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastPosition;
    .locals 1

    .line 107
    const-class v0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastPosition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastPosition;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastPosition;
    .locals 1

    .line 107
    sget-object v0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastPosition;->$VALUES:[Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastPosition;

    invoke-virtual {v0}, [Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastPosition;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastPosition;

    return-object v0
.end method

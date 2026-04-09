.class public final enum Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Cancelable;
.super Ljava/lang/Enum;
.source "RotatableDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Cancelable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Cancelable;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Cancelable;

.field public static final enum FALSE:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Cancelable;

.field public static final enum TRUE:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Cancelable;

.field public static final enum USE_DEFAULT:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Cancelable;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 46
    new-instance v0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Cancelable;

    const-string v1, "TRUE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Cancelable;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Cancelable;->TRUE:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Cancelable;

    .line 47
    new-instance v0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Cancelable;

    const-string v1, "FALSE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Cancelable;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Cancelable;->FALSE:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Cancelable;

    .line 48
    new-instance v0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Cancelable;

    const-string v1, "USE_DEFAULT"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Cancelable;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Cancelable;->USE_DEFAULT:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Cancelable;

    const/4 v0, 0x3

    .line 45
    new-array v0, v0, [Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Cancelable;

    sget-object v1, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Cancelable;->TRUE:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Cancelable;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Cancelable;->FALSE:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Cancelable;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Cancelable;->USE_DEFAULT:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Cancelable;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Cancelable;->$VALUES:[Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Cancelable;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Cancelable;
    .locals 1

    .line 45
    const-class v0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Cancelable;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Cancelable;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Cancelable;
    .locals 1

    .line 45
    sget-object v0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Cancelable;->$VALUES:[Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Cancelable;

    invoke-virtual {v0}, [Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Cancelable;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Cancelable;

    return-object v0
.end method

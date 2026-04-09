.class public final enum Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;
.super Ljava/lang/Enum;
.source "CameraActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/CameraActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LayoutOrientation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;

.field public static final enum Landscape:Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;

.field public static final enum Portrait:Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;

.field public static final enum ReverseLandscape:Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;

.field public static final enum ReversePortrait:Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;

.field public static final enum Unknown:Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 396
    new-instance v0, Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;

    const-string v1, "Unknown"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;->Unknown:Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;

    .line 397
    new-instance v0, Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;

    const-string v1, "Portrait"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;->Portrait:Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;

    .line 398
    new-instance v0, Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;

    const-string v1, "Landscape"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;->Landscape:Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;

    .line 399
    new-instance v0, Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;

    const-string v1, "ReversePortrait"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;->ReversePortrait:Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;

    .line 400
    new-instance v0, Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;

    const-string v1, "ReverseLandscape"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;->ReverseLandscape:Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;

    const/4 v0, 0x5

    .line 395
    new-array v0, v0, [Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;

    sget-object v1, Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;->Unknown:Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;->Portrait:Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;->Landscape:Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;->ReversePortrait:Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;->ReverseLandscape:Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;

    aput-object v1, v0, v6

    sput-object v0, Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;->$VALUES:[Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 395
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;
    .locals 1

    .line 395
    const-class v0, Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;
    .locals 1

    .line 395
    sget-object v0, Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;->$VALUES:[Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;

    return-object v0
.end method

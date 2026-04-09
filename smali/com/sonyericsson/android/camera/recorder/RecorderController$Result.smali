.class public final enum Lcom/sonyericsson/android/camera/recorder/RecorderController$Result;
.super Ljava/lang/Enum;
.source "RecorderController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/recorder/RecorderController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Result"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/recorder/RecorderController$Result;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/recorder/RecorderController$Result;

.field public static final enum FAIL:Lcom/sonyericsson/android/camera/recorder/RecorderController$Result;

.field public static final enum MAX_DURATION_REACHED:Lcom/sonyericsson/android/camera/recorder/RecorderController$Result;

.field public static final enum MAX_FILESIZE_REACHED:Lcom/sonyericsson/android/camera/recorder/RecorderController$Result;

.field public static final enum SUCCESS:Lcom/sonyericsson/android/camera/recorder/RecorderController$Result;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 31
    new-instance v0, Lcom/sonyericsson/android/camera/recorder/RecorderController$Result;

    const-string v1, "SUCCESS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/recorder/RecorderController$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/recorder/RecorderController$Result;->SUCCESS:Lcom/sonyericsson/android/camera/recorder/RecorderController$Result;

    .line 32
    new-instance v0, Lcom/sonyericsson/android/camera/recorder/RecorderController$Result;

    const-string v1, "FAIL"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/android/camera/recorder/RecorderController$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/recorder/RecorderController$Result;->FAIL:Lcom/sonyericsson/android/camera/recorder/RecorderController$Result;

    .line 33
    new-instance v0, Lcom/sonyericsson/android/camera/recorder/RecorderController$Result;

    const-string v1, "MAX_DURATION_REACHED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/sonyericsson/android/camera/recorder/RecorderController$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/recorder/RecorderController$Result;->MAX_DURATION_REACHED:Lcom/sonyericsson/android/camera/recorder/RecorderController$Result;

    .line 34
    new-instance v0, Lcom/sonyericsson/android/camera/recorder/RecorderController$Result;

    const-string v1, "MAX_FILESIZE_REACHED"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/sonyericsson/android/camera/recorder/RecorderController$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/recorder/RecorderController$Result;->MAX_FILESIZE_REACHED:Lcom/sonyericsson/android/camera/recorder/RecorderController$Result;

    const/4 v0, 0x4

    .line 30
    new-array v0, v0, [Lcom/sonyericsson/android/camera/recorder/RecorderController$Result;

    sget-object v1, Lcom/sonyericsson/android/camera/recorder/RecorderController$Result;->SUCCESS:Lcom/sonyericsson/android/camera/recorder/RecorderController$Result;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/recorder/RecorderController$Result;->FAIL:Lcom/sonyericsson/android/camera/recorder/RecorderController$Result;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/android/camera/recorder/RecorderController$Result;->MAX_DURATION_REACHED:Lcom/sonyericsson/android/camera/recorder/RecorderController$Result;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonyericsson/android/camera/recorder/RecorderController$Result;->MAX_FILESIZE_REACHED:Lcom/sonyericsson/android/camera/recorder/RecorderController$Result;

    aput-object v1, v0, v5

    sput-object v0, Lcom/sonyericsson/android/camera/recorder/RecorderController$Result;->$VALUES:[Lcom/sonyericsson/android/camera/recorder/RecorderController$Result;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/recorder/RecorderController$Result;
    .locals 1

    .line 30
    const-class v0, Lcom/sonyericsson/android/camera/recorder/RecorderController$Result;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/recorder/RecorderController$Result;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/recorder/RecorderController$Result;
    .locals 1

    .line 30
    sget-object v0, Lcom/sonyericsson/android/camera/recorder/RecorderController$Result;->$VALUES:[Lcom/sonyericsson/android/camera/recorder/RecorderController$Result;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/recorder/RecorderController$Result;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/recorder/RecorderController$Result;

    return-object v0
.end method

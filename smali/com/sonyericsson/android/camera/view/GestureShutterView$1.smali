.class synthetic Lcom/sonyericsson/android/camera/view/GestureShutterView$1;
.super Ljava/lang/Object;
.source "GestureShutterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/GestureShutterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$sonyericsson$android$camera$view$GestureShutterView$AnimationType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 214
    invoke-static {}, Lcom/sonyericsson/android/camera/view/GestureShutterView$AnimationType;->values()[Lcom/sonyericsson/android/camera/view/GestureShutterView$AnimationType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sonyericsson/android/camera/view/GestureShutterView$1;->$SwitchMap$com$sonyericsson$android$camera$view$GestureShutterView$AnimationType:[I

    :try_start_0
    sget-object v1, Lcom/sonyericsson/android/camera/view/GestureShutterView$AnimationType;->GROWING_CIRCLE:Lcom/sonyericsson/android/camera/view/GestureShutterView$AnimationType;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/GestureShutterView$AnimationType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/sonyericsson/android/camera/view/GestureShutterView$1;->$SwitchMap$com$sonyericsson$android$camera$view$GestureShutterView$AnimationType:[I

    sget-object v1, Lcom/sonyericsson/android/camera/view/GestureShutterView$AnimationType;->CONFRIMING:Lcom/sonyericsson/android/camera/view/GestureShutterView$AnimationType;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/GestureShutterView$AnimationType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method

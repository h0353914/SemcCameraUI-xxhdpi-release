.class Lcom/sonyericsson/android/camera/device/CameraDeviceUtil$1;
.super Ljava/lang/Object;
.source "CameraDeviceUtil.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/CameraDeviceUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "[I>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 20
    check-cast p1, [I

    check-cast p2, [I

    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/camera/device/CameraDeviceUtil$1;->compare([I[I)I

    move-result p0

    return p0
.end method

.method public compare([I[I)I
    .locals 0

    const/4 p0, 0x1

    .line 23
    aget p0, p1, p0

    const/4 p0, 0x0

    .line 24
    aget p1, p1, p0

    return p0
.end method

.class final Lcom/sonyericsson/android/camera/device/CameraDeviceUtil$1;
.super Ljava/lang/Object;
.source "CameraDeviceUtil.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/CameraDeviceUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
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
    .locals 4

    const/4 p0, 0x1

    .line 23
    aget p2, p1, p0

    const/4 v0, 0x0

    .line 24
    aget v1, p1, v0

    .line 26
    aget v2, p1, p0

    .line 27
    aget p1, p1, v0

    if-le p2, v2, :cond_0

    return p0

    :cond_0
    const/4 v3, -0x1

    if-ge p2, v2, :cond_1

    return v3

    :cond_1
    if-ge v1, p1, :cond_2

    return p0

    :cond_2
    if-le v1, p1, :cond_3

    return v3

    :cond_3
    return v0
.end method

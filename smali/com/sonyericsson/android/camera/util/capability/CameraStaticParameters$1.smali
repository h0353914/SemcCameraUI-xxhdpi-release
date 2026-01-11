.class Lcom/sonyericsson/android/camera/util/capability/CameraStaticParameters$1;
.super Ljava/lang/Object;
.source "CameraStaticParameters.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/util/capability/CameraStaticParameters;->getSupportedInputSize()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroid/util/Size;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/util/capability/CameraStaticParameters;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/util/capability/CameraStaticParameters;)V
    .locals 0

    .line 852
    iput-object p1, p0, Lcom/sonyericsson/android/camera/util/capability/CameraStaticParameters$1;->this$0:Lcom/sonyericsson/android/camera/util/capability/CameraStaticParameters;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/util/Size;Landroid/util/Size;)I
    .locals 4

    .line 856
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p0

    int-to-long v0, p0

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p0

    int-to-long p0, p0

    mul-long/2addr v0, p0

    .line 857
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result p0

    int-to-long p0, p0

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result p2

    int-to-long v2, p2

    mul-long/2addr p0, v2

    sub-long/2addr v0, p0

    .line 856
    invoke-static {v0, v1}, Ljava/lang/Long;->signum(J)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 852
    check-cast p1, Landroid/util/Size;

    check-cast p2, Landroid/util/Size;

    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/camera/util/capability/CameraStaticParameters$1;->compare(Landroid/util/Size;Landroid/util/Size;)I

    move-result p0

    return p0
.end method

.class Lcom/sonyericsson/cameracommon/utility/FaceDetectUtil$DistanceComparator;
.super Ljava/lang/Object;
.source "FaceDetectUtil.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/utility/FaceDetectUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DistanceComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/sonyericsson/cameracommon/utility/FaceDetectUtil$DistanceMapItem;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/cameracommon/utility/FaceDetectUtil$1;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/utility/FaceDetectUtil$DistanceComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/sonyericsson/cameracommon/utility/FaceDetectUtil$DistanceMapItem;Lcom/sonyericsson/cameracommon/utility/FaceDetectUtil$DistanceMapItem;)I
    .locals 0

    .line 62
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/utility/FaceDetectUtil$DistanceMapItem;->getDistance()I

    move-result p0

    invoke-virtual {p2}, Lcom/sonyericsson/cameracommon/utility/FaceDetectUtil$DistanceMapItem;->getDistance()I

    move-result p1

    sub-int/2addr p0, p1

    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 59
    check-cast p1, Lcom/sonyericsson/cameracommon/utility/FaceDetectUtil$DistanceMapItem;

    check-cast p2, Lcom/sonyericsson/cameracommon/utility/FaceDetectUtil$DistanceMapItem;

    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/cameracommon/utility/FaceDetectUtil$DistanceComparator;->compare(Lcom/sonyericsson/cameracommon/utility/FaceDetectUtil$DistanceMapItem;Lcom/sonyericsson/cameracommon/utility/FaceDetectUtil$DistanceMapItem;)I

    move-result p0

    return p0
.end method

.class Lcom/sonyericsson/cameracommon/utility/FaceDetectUtil$DistanceMapItem;
.super Ljava/lang/Object;
.source "FaceDetectUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/utility/FaceDetectUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DistanceMapItem"
.end annotation


# instance fields
.field private final mArrayIndex:I

.field private final mDistance:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput p1, p0, Lcom/sonyericsson/cameracommon/utility/FaceDetectUtil$DistanceMapItem;->mArrayIndex:I

    .line 35
    iput p2, p0, Lcom/sonyericsson/cameracommon/utility/FaceDetectUtil$DistanceMapItem;->mDistance:I

    return-void
.end method


# virtual methods
.method public getArrayIndex()I
    .locals 0

    .line 39
    iget p0, p0, Lcom/sonyericsson/cameracommon/utility/FaceDetectUtil$DistanceMapItem;->mArrayIndex:I

    return p0
.end method

.method public getDistance()I
    .locals 0

    .line 43
    iget p0, p0, Lcom/sonyericsson/cameracommon/utility/FaceDetectUtil$DistanceMapItem;->mDistance:I

    return p0
.end method

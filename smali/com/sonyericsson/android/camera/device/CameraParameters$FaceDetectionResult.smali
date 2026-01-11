.class public Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionResult;
.super Ljava/lang/Object;
.source "CameraParameters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/CameraParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FaceDetectionResult"
.end annotation


# instance fields
.field public extFaceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/device/CameraParameters$ExtFace;",
            ">;"
        }
    .end annotation
.end field

.field public faceNum:I

.field public indexOfSelectedFace:I

.field public isRectTranslucent:Z

.field public userSelectedFaceId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 895
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 888
    iput v0, p0, Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionResult;->userSelectedFaceId:I

    .line 897
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionResult;->extFaceList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method addFaceResult(IIIIII)V
    .locals 1

    .line 914
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraParameters$ExtFace;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters$ExtFace;-><init>()V

    .line 915
    iput p6, v0, Lcom/sonyericsson/android/camera/device/CameraParameters$ExtFace;->smileScore:I

    .line 916
    iput p1, v0, Lcom/sonyericsson/android/camera/device/CameraParameters$ExtFace;->id:I

    .line 917
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1, p2, p3, p4, p5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p1, v0, Lcom/sonyericsson/android/camera/device/CameraParameters$ExtFace;->rect:Landroid/graphics/Rect;

    .line 919
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionResult;->extFaceList:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method setFrameResult(I)V
    .locals 0

    .line 902
    iput p1, p0, Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionResult;->indexOfSelectedFace:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 933
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 935
    iget v1, p0, Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionResult;->faceNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x2c

    .line 936
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 937
    iget v2, p0, Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionResult;->indexOfSelectedFace:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 938
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 939
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionResult;->extFaceList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera/device/CameraParameters$ExtFace;

    const/16 v3, 0x5b

    .line 940
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/sonyericsson/android/camera/device/CameraParameters$ExtFace;->id:I

    .line 941
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 942
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/sonyericsson/android/camera/device/CameraParameters$ExtFace;->rect:Landroid/graphics/Rect;

    .line 943
    invoke-virtual {v4}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 944
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v2, v2, Lcom/sonyericsson/android/camera/device/CameraParameters$ExtFace;->smileScore:I

    .line 945
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    .line 946
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const/16 p0, 0x5d

    .line 948
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 949
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

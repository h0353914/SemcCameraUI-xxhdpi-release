.class public Lcom/sonyericsson/cameracommon/utility/FaceDetectUtil;
.super Ljava/lang/Object;
.source "FaceDetectUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/utility/FaceDetectUtil$DistanceMapItem;,
        Lcom/sonyericsson/cameracommon/utility/FaceDetectUtil$DistanceComparator;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "FaceDetectUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static computeClosesDistance(Landroid/graphics/Rect;Landroid/graphics/Rect;)I
    .locals 3

    .line 99
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "computeClosesDistance: centerPosition = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " faceRect = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 105
    :cond_0
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->getInstance()Lcom/sonyericsson/cameracommon/utility/PositionConverter;

    move-result-object v0

    .line 106
    invoke-virtual {v0, p0}, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->convertFromActiveArrayToView(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p0

    .line 109
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    sub-int/2addr v0, v1

    .line 110
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result p1

    invoke-virtual {p0}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    sub-int/2addr p1, v1

    .line 111
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "converted faceRect = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_1
    if-gez v0, :cond_2

    mul-int/lit8 v0, v0, -0x1

    :cond_2
    if-gez p1, :cond_3

    mul-int/lit8 p1, p1, -0x1

    :cond_3
    add-int/2addr v0, p1

    return v0
.end method

.method private static createSortedDistanceList(Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionResult;Landroid/graphics/Rect;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionResult;",
            "Landroid/graphics/Rect;",
            ")",
            "Ljava/util/List<",
            "Lcom/sonyericsson/cameracommon/utility/FaceDetectUtil$DistanceMapItem;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 73
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionResult;->extFaceList:Ljava/util/List;

    if-nez v1, :cond_1

    return-object v0

    .line 78
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 82
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionResult;->extFaceList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/android/camera/device/CameraParameters$ExtFace;

    .line 84
    iget-object v3, v3, Lcom/sonyericsson/android/camera/device/CameraParameters$ExtFace;->rect:Landroid/graphics/Rect;

    invoke-static {v3, p1}, Lcom/sonyericsson/cameracommon/utility/FaceDetectUtil;->computeClosesDistance(Landroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v3

    .line 86
    new-instance v4, Lcom/sonyericsson/cameracommon/utility/FaceDetectUtil$DistanceMapItem;

    invoke-direct {v4, v2, v3}, Lcom/sonyericsson/cameracommon/utility/FaceDetectUtil$DistanceMapItem;-><init>(II)V

    .line 88
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 93
    :cond_2
    new-instance p0, Lcom/sonyericsson/cameracommon/utility/FaceDetectUtil$DistanceComparator;

    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/utility/FaceDetectUtil$DistanceComparator;-><init>(Lcom/sonyericsson/cameracommon/utility/FaceDetectUtil$DistanceComparator-IA;)V

    invoke-static {v1, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v1
.end method

.method public static dumpDistanceMapList(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sonyericsson/cameracommon/utility/FaceDetectUtil$DistanceMapItem;",
            ">;)V"
        }
    .end annotation

    .line 49
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    .line 50
    const-string v0, "dumpDistanceMapList"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 53
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/utility/FaceDetectUtil$DistanceMapItem;

    .line 54
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "item.arrayIndex = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/utility/FaceDetectUtil$DistanceMapItem;->getArrayIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " item.distance = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 55
    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/utility/FaceDetectUtil$DistanceMapItem;->getDistance()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 54
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static getFaceInformationList(Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionResult;Landroid/graphics/Rect;Ljava/lang/String;)Lcom/sonyericsson/cameracommon/focusview/FaceInformationList;
    .locals 5

    .line 189
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getFaceInformationSortList centerPosition = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    if-nez p0, :cond_2

    .line 193
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_1

    .line 194
    const-string p0, "getFaceInformationListt faceDetectResultList is null"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_1
    return-object v0

    .line 201
    :cond_2
    invoke-static {p0, p1}, Lcom/sonyericsson/cameracommon/utility/FaceDetectUtil;->createSortedDistanceList(Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionResult;Landroid/graphics/Rect;)Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_4

    .line 205
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_3

    .line 206
    const-string p0, "createSortedDistanceList() return null"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_3
    return-object v0

    .line 213
    :cond_4
    new-instance v1, Lcom/sonyericsson/cameracommon/focusview/FaceInformationList;

    invoke-direct {v1}, Lcom/sonyericsson/cameracommon/focusview/FaceInformationList;-><init>()V

    .line 215
    invoke-virtual {v1, p2}, Lcom/sonyericsson/cameracommon/focusview/FaceInformationList;->setUserTouchUuid(Ljava/lang/String;)V

    .line 218
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sonyericsson/cameracommon/utility/FaceDetectUtil$DistanceMapItem;

    .line 219
    invoke-virtual {p2}, Lcom/sonyericsson/cameracommon/utility/FaceDetectUtil$DistanceMapItem;->getArrayIndex()I

    move-result p2

    .line 221
    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionResult;->extFaceList:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sonyericsson/android/camera/device/CameraParameters$ExtFace;

    .line 222
    iget v2, p2, Lcom/sonyericsson/android/camera/device/CameraParameters$ExtFace;->id:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 227
    new-instance v3, Lcom/sonyericsson/cameracommon/focusview/NamedFace;

    iget-object v4, p2, Lcom/sonyericsson/android/camera/device/CameraParameters$ExtFace;->rect:Landroid/graphics/Rect;

    iget p2, p2, Lcom/sonyericsson/android/camera/device/CameraParameters$ExtFace;->smileScore:I

    invoke-direct {v3, v0, v2, v4, p2}, Lcom/sonyericsson/cameracommon/focusview/NamedFace;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;I)V

    .line 233
    invoke-virtual {v1, v3}, Lcom/sonyericsson/cameracommon/focusview/FaceInformationList;->addNamedFace(Lcom/sonyericsson/cameracommon/focusview/NamedFace;)V

    goto :goto_0

    .line 236
    :cond_5
    invoke-static {p0}, Lcom/sonyericsson/cameracommon/utility/FaceDetectUtil;->logFaceDetectionResult(Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionResult;)V

    return-object v1
.end method

.method public static hasValidFaceId(Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionResult;)Ljava/lang/Boolean;
    .locals 3

    .line 246
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 247
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionResult;->extFaceList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/device/CameraParameters$ExtFace;

    .line 248
    iget v1, v1, Lcom/sonyericsson/android/camera/device/CameraParameters$ExtFace;->id:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 249
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_1

    const-string p0, "FaceDetection ID is not supported."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 250
    :cond_1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :cond_2
    return-object v0
.end method

.method public static isValidFaceDetectionResult(Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionResult;)Z
    .locals 2

    if-eqz p0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionResult;->extFaceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionResult;->indexOfSelectedFace:I

    if-le v0, v1, :cond_0

    iget p0, p0, Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionResult;->indexOfSelectedFace:I

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static logFaceDetectionResult(Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionResult;)V
    .locals 5

    if-nez p0, :cond_0

    .line 128
    const-string p0, "onFaceDetection: result is null"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->v([Ljava/lang/String;)V

    return-void

    .line 132
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onFaceDetection: Number of faces: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionResult;->extFaceList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->v([Ljava/lang/String;)V

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onFaceDetection: Selected index : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionResult;->indexOfSelectedFace:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->v([Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionResult;->extFaceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 137
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionResult;->extFaceList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/device/CameraParameters$ExtFace;

    .line 138
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ExtFACE["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 139
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " face = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 140
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " face.id = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v1, Lcom/sonyericsson/android/camera/device/CameraParameters$ExtFace;->id:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 141
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " face.rect = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v1, Lcom/sonyericsson/android/camera/device/CameraParameters$ExtFace;->rect:Landroid/graphics/Rect;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 142
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " SmileScore = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v1, v1, Lcom/sonyericsson/android/camera/device/CameraParameters$ExtFace;->smileScore:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 143
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->v([Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_1
    return-void
.end method

.method public static overwriteTaggedRectangle(Ljava/util/HashMap;Ljava/lang/String;Lcom/sonyericsson/cameracommon/focusview/FaceInformationList;)Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/sonyericsson/cameracommon/focusview/FaceInformationList;",
            ")",
            "Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;"
        }
    .end annotation

    .line 155
    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 156
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 160
    invoke-virtual {p2}, Lcom/sonyericsson/cameracommon/focusview/FaceInformationList;->getNamedFaceList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonyericsson/cameracommon/focusview/NamedFace;

    .line 161
    iget-object v4, v4, Lcom/sonyericsson/cameracommon/focusview/NamedFace;->mUuid:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    .line 168
    :cond_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    move-object p2, v2

    :goto_1
    if-eqz p2, :cond_3

    .line 176
    invoke-virtual {p0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-object p2
.end method

.method public static setUuidFaceDetectionResult(Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionResult;)Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionResult;
    .locals 3

    .line 262
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionResult;->extFaceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera/device/CameraParameters$ExtFace;

    .line 263
    iput v1, v2, Lcom/sonyericsson/android/camera/device/CameraParameters$ExtFace;->id:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

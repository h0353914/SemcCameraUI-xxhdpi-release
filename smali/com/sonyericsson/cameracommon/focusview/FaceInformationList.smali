.class public Lcom/sonyericsson/cameracommon/focusview/FaceInformationList;
.super Ljava/lang/Object;
.source "FaceInformationList.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "FaceInformationList"


# instance fields
.field private mNamedFaceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sonyericsson/cameracommon/focusview/NamedFace;",
            ">;"
        }
    .end annotation
.end field

.field private mUseSmileGuage:Z

.field private mUserTouchUuid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FaceInformationList;->mNamedFaceList:Ljava/util/List;

    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/focusview/FaceInformationList;->mUseSmileGuage:Z

    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FaceInformationList;->mUserTouchUuid:Ljava/lang/String;

    return-void
.end method

.method public static dumpFaceInformationList(Lcom/sonyericsson/cameracommon/focusview/FaceInformationList;)V
    .locals 6

    if-nez p0, :cond_0

    const-string p0, "dumpFaceInformationList() argument is null"

    .line 80
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->v([Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 84
    new-array v1, v0, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dumpFaceInformationList use smile guage = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/FaceInformationList;->isUseSmileGuage()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 84
    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->v([Ljava/lang/String;)V

    const-string v1, "################"

    .line 86
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->v([Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/FaceInformationList;->getNamedFaceList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/cameracommon/focusview/NamedFace;

    .line 88
    new-array v2, v0, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " name = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/sonyericsson/cameracommon/focusview/NamedFace;->mName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " UUID = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/sonyericsson/cameracommon/focusview/NamedFace;->mUuid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " position = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/sonyericsson/cameracommon/focusview/NamedFace;->mFacePosition:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " smileScore = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Lcom/sonyericsson/cameracommon/focusview/NamedFace;->mSmileScore:I

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v3

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->v([Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p0, "################"

    .line 95
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->v([Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public addNamedFace(Lcom/sonyericsson/cameracommon/focusview/NamedFace;)V
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/FaceInformationList;->mNamedFaceList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addNamedFaceList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sonyericsson/cameracommon/focusview/NamedFace;",
            ">;)V"
        }
    .end annotation

    .line 32
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/FaceInformationList;->mNamedFaceList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public clearNamedFaceList()V
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/FaceInformationList;->mNamedFaceList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public getNamedFace(I)Lcom/sonyericsson/cameracommon/focusview/NamedFace;
    .locals 3

    .line 44
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FaceInformationList;->mNamedFaceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, p1, :cond_0

    const/4 p0, 0x1

    .line 45
    new-array p0, p0, [Ljava/lang/String;

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNamedFace index overflow index = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p0, v0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 48
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/FaceInformationList;->mNamedFaceList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/cameracommon/focusview/NamedFace;

    return-object p0
.end method

.method public getNamedFaceByUuid(Ljava/lang/String;)Lcom/sonyericsson/cameracommon/focusview/NamedFace;
    .locals 2

    .line 69
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/FaceInformationList;->mNamedFaceList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/focusview/NamedFace;

    .line 70
    iget-object v1, v0, Lcom/sonyericsson/cameracommon/focusview/NamedFace;->mUuid:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getNamedFaceList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sonyericsson/cameracommon/focusview/NamedFace;",
            ">;"
        }
    .end annotation

    .line 40
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/FaceInformationList;->mNamedFaceList:Ljava/util/List;

    return-object p0
.end method

.method public getUserSelectedUuid()Ljava/lang/String;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/FaceInformationList;->mUserTouchUuid:Ljava/lang/String;

    return-object p0
.end method

.method public isUseSmileGuage()Z
    .locals 0

    .line 60
    iget-boolean p0, p0, Lcom/sonyericsson/cameracommon/focusview/FaceInformationList;->mUseSmileGuage:Z

    return p0
.end method

.method public setNamedFaceList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sonyericsson/cameracommon/focusview/NamedFace;",
            ">;)V"
        }
    .end annotation

    .line 36
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/focusview/FaceInformationList;->mNamedFaceList:Ljava/util/List;

    return-void
.end method

.method public setUseSmileGuage(Z)V
    .locals 0

    .line 56
    iput-boolean p1, p0, Lcom/sonyericsson/cameracommon/focusview/FaceInformationList;->mUseSmileGuage:Z

    return-void
.end method

.method public setUserTouchUuid(Ljava/lang/String;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/focusview/FaceInformationList;->mUserTouchUuid:Ljava/lang/String;

    return-void
.end method

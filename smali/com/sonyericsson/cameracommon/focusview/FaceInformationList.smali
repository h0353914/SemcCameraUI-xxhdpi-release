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
    .locals 4

    if-nez p0, :cond_0

    .line 80
    const-string p0, "dumpFaceInformationList() argument is null"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->v([Ljava/lang/String;)V

    return-void

    .line 84
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "dumpFaceInformationList use smile guage = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/FaceInformationList;->isUseSmileGuage()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 84
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->v([Ljava/lang/String;)V

    .line 86
    const-string v0, "################"

    filled-new-array {v0}, [Ljava/lang/String;

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
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " name = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/sonyericsson/cameracommon/focusview/NamedFace;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " UUID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/sonyericsson/cameracommon/focusview/NamedFace;->mUuid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " position = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/sonyericsson/cameracommon/focusview/NamedFace;->mFacePosition:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " smileScore = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v1, v1, Lcom/sonyericsson/cameracommon/focusview/NamedFace;->mSmileScore:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->v([Ljava/lang/String;)V

    goto :goto_0

    .line 95
    :cond_1
    filled-new-array {v0}, [Ljava/lang/String;

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
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FaceInformationList;->mNamedFaceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, p1, :cond_0

    .line 45
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "getNamedFace index overflow index = "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

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

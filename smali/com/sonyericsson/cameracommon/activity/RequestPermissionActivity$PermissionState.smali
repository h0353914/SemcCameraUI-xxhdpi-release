.class Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionState;
.super Ljava/lang/Object;
.source "RequestPermissionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PermissionState"
.end annotation


# instance fields
.field private final mCategory:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionCategory;

.field private final mRequestGroupList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;",
            ">;"
        }
    .end annotation
.end field

.field private mRequested:Z

.field final synthetic this$0:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;


# direct methods
.method constructor <init>(Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionCategory;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionCategory;",
            "Ljava/util/List<",
            "Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;",
            ">;)V"
        }
    .end annotation

    .line 182
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionState;->this$0:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionState;->mCategory:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionCategory;

    .line 184
    iput-object p3, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionState;->mRequestGroupList:Ljava/util/List;

    const/4 p1, 0x0

    .line 185
    iput-boolean p1, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionState;->mRequested:Z

    return-void
.end method


# virtual methods
.method public areAllPermissionsGranted()Z
    .locals 6

    .line 220
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionState;->getRequestPermissionList()[Ljava/lang/String;

    move-result-object v0

    .line 221
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 222
    iget-object v5, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionState;->this$0:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;

    invoke-virtual {v5, v4}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_0

    return v2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public getCategory()Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionCategory;
    .locals 0

    .line 189
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionState;->mCategory:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionCategory;

    return-object p0
.end method

.method public getRequestGroupList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;",
            ">;"
        }
    .end annotation

    .line 193
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionState;->mRequestGroupList:Ljava/util/List;

    return-object p0
.end method

.method public getRequestPermissionList()[Ljava/lang/String;
    .locals 4

    .line 205
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 206
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionState;->mRequestGroupList:Ljava/util/List;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 207
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionState;->mRequestGroupList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;

    .line 208
    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;->getPermissionList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 209
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 212
    :cond_1
    new-array p0, v2, [Ljava/lang/String;

    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0

    .line 215
    :cond_2
    new-array p0, v2, [Ljava/lang/String;

    return-object p0
.end method

.method public isRequested()Z
    .locals 0

    .line 197
    iget-boolean p0, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionState;->mRequested:Z

    return p0
.end method

.method public setRequested()V
    .locals 1

    const/4 v0, 0x1

    .line 201
    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionState;->mRequested:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionState;->mCategory:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionCategory;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionCategory;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": Group num="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionState;->mRequestGroupList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", requested="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionState;->mRequested:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.class Lcom/sonyericsson/android/camera/device/CameraParameterValidator$ValidationCase;
.super Ljava/lang/Object;
.source "CameraParameterValidator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/CameraParameterValidator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ValidationCase"
.end annotation


# instance fields
.field private mBaseConditionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/device/CameraParameterValidator$KeyValueSet;",
            ">;"
        }
    .end annotation
.end field

.field private mCheckConditionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/device/CameraParameterValidator$KeyValueSet;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraParameterValidator$ValidationCase;->mBaseConditionList:Ljava/util/List;

    .line 112
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraParameterValidator$ValidationCase;->mCheckConditionList:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/device/CameraParameterValidator$1;)V
    .locals 0

    .line 110
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraParameterValidator$ValidationCase;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/android/camera/device/CameraParameterValidator$ValidationCase;Ljava/util/List;Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;)Z
    .locals 0

    .line 110
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/device/CameraParameterValidator$ValidationCase;->isBaseCondition(Ljava/util/List;Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/sonyericsson/android/camera/device/CameraParameterValidator$ValidationCase;Ljava/util/List;Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;Landroid/graphics/Rect;)V
    .locals 0

    .line 110
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera/device/CameraParameterValidator$ValidationCase;->checkInvalid(Ljava/util/List;Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;Landroid/graphics/Rect;)V

    return-void
.end method

.method static synthetic access$200(Lcom/sonyericsson/android/camera/device/CameraParameterValidator$ValidationCase;Ljava/util/List;Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;Landroid/graphics/Rect;)V
    .locals 0

    .line 110
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera/device/CameraParameterValidator$ValidationCase;->checkValid(Ljava/util/List;Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;Landroid/graphics/Rect;)V

    return-void
.end method

.method static synthetic access$400(Lcom/sonyericsson/android/camera/device/CameraParameterValidator$ValidationCase;Lcom/sonyericsson/android/camera/device/CameraParameterValidator$KeyValueSet;)V
    .locals 0

    .line 110
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraParameterValidator$ValidationCase;->addBaseCondition(Lcom/sonyericsson/android/camera/device/CameraParameterValidator$KeyValueSet;)V

    return-void
.end method

.method static synthetic access$500(Lcom/sonyericsson/android/camera/device/CameraParameterValidator$ValidationCase;Lcom/sonyericsson/android/camera/device/CameraParameterValidator$KeyValueSet;)V
    .locals 0

    .line 110
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraParameterValidator$ValidationCase;->addCheckCondition(Lcom/sonyericsson/android/camera/device/CameraParameterValidator$KeyValueSet;)V

    return-void
.end method

.method private addBaseCondition(Lcom/sonyericsson/android/camera/device/CameraParameterValidator$KeyValueSet;)V
    .locals 0

    .line 115
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraParameterValidator$ValidationCase;->mBaseConditionList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addCheckCondition(Lcom/sonyericsson/android/camera/device/CameraParameterValidator$KeyValueSet;)V
    .locals 0

    .line 119
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraParameterValidator$ValidationCase;->mCheckConditionList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private checkInvalid(Ljava/util/List;Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;Landroid/graphics/Rect;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "*>;>;",
            "Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;",
            "Landroid/graphics/Rect;",
            ")V"
        }
    .end annotation

    .line 192
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraParameterValidator$ValidationCase;->mCheckConditionList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/device/CameraParameterValidator$KeyValueSet;

    .line 193
    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/android/camera/device/CameraParameterValidator$ValidationCase;->getTargetKey(Ljava/util/List;Lcom/sonyericsson/android/camera/device/CameraParameterValidator$KeyValueSet;)Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 197
    :cond_1
    iget-object v3, v1, Lcom/sonyericsson/android/camera/device/CameraParameterValidator$KeyValueSet;->value:Ljava/lang/String;

    const-string v4, "active-array-size"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 200
    invoke-virtual {p2, v2}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, [Landroid/hardware/camera2/params/MeteringRectangle;

    if-eqz v3, :cond_2

    .line 201
    invoke-virtual {p2, v2}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/hardware/camera2/params/MeteringRectangle;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    .line 202
    invoke-virtual {v2}, Landroid/hardware/camera2/params/MeteringRectangle;->getRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 204
    :cond_2
    invoke-virtual {p2, v2}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 206
    :goto_1
    invoke-virtual {p3}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 207
    new-instance p0, Lcom/sonyericsson/android/camera/device/CameraParameterValidator$ParameterValidationError;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "ERROR : [KEY="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, v1, Lcom/sonyericsson/android/camera/device/CameraParameterValidator$KeyValueSet;->key:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "]\n  INVALID  : [VALUE="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "]\n"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraParameterValidator$ParameterValidationError;-><init>(Ljava/lang/String;)V

    throw p0

    .line 217
    :cond_3
    invoke-virtual {p2, v2}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 218
    iget-object v3, v1, Lcom/sonyericsson/android/camera/device/CameraParameterValidator$KeyValueSet;->value:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 219
    new-instance p0, Lcom/sonyericsson/android/camera/device/CameraParameterValidator$ParameterValidationError;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "ERROR : [KEY="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, v1, Lcom/sonyericsson/android/camera/device/CameraParameterValidator$KeyValueSet;->key:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "]\n  INVALID  : [VALUE="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, v1, Lcom/sonyericsson/android/camera/device/CameraParameterValidator$KeyValueSet;->value:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "]\n"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraParameterValidator$ParameterValidationError;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    return-void
.end method

.method private checkValid(Ljava/util/List;Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;Landroid/graphics/Rect;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "*>;>;",
            "Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;",
            "Landroid/graphics/Rect;",
            ")V"
        }
    .end annotation

    .line 144
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraParameterValidator$ValidationCase;->mCheckConditionList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/device/CameraParameterValidator$KeyValueSet;

    .line 145
    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/android/camera/device/CameraParameterValidator$ValidationCase;->getTargetKey(Ljava/util/List;Lcom/sonyericsson/android/camera/device/CameraParameterValidator$KeyValueSet;)Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 150
    :cond_1
    iget-object v3, v1, Lcom/sonyericsson/android/camera/device/CameraParameterValidator$KeyValueSet;->value:Ljava/lang/String;

    const-string v4, "active-array-size"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 153
    invoke-virtual {p2, v2}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, [Landroid/hardware/camera2/params/MeteringRectangle;

    if-eqz v3, :cond_2

    .line 154
    invoke-virtual {p2, v2}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/hardware/camera2/params/MeteringRectangle;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    .line 155
    invoke-virtual {v2}, Landroid/hardware/camera2/params/MeteringRectangle;->getRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 157
    :cond_2
    invoke-virtual {p2, v2}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 159
    :goto_1
    invoke-virtual {p3}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 160
    new-instance p0, Lcom/sonyericsson/android/camera/device/CameraParameterValidator$ParameterValidationError;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "ERROR : [KEY="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, v1, Lcom/sonyericsson/android/camera/device/CameraParameterValidator$KeyValueSet;->key:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "]\n  EXPECTED : [VALUE="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "]\n  ACTUAL   : [VALUE="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "]\n"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraParameterValidator$ParameterValidationError;-><init>(Ljava/lang/String;)V

    throw p0

    .line 172
    :cond_3
    invoke-virtual {p2, v2}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 173
    iget-object v3, v1, Lcom/sonyericsson/android/camera/device/CameraParameterValidator$KeyValueSet;->value:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 174
    new-instance p0, Lcom/sonyericsson/android/camera/device/CameraParameterValidator$ParameterValidationError;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "ERROR : [KEY="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, v1, Lcom/sonyericsson/android/camera/device/CameraParameterValidator$KeyValueSet;->key:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "]\n  EXPECTED : [VALUE="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, v1, Lcom/sonyericsson/android/camera/device/CameraParameterValidator$KeyValueSet;->value:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "]\n  ACTUAL   : [VALUE="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "]\n"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraParameterValidator$ParameterValidationError;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    return-void
.end method

.method private getApplicationCaptureRequestKey(Landroid/hardware/camera2/CaptureRequest$Key;)Landroid/hardware/camera2/CaptureRequest$Key;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "*>;)",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "*>;"
        }
    .end annotation

    .line 246
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest$Key;->getName()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 248
    invoke-static {}, Lcom/sonyericsson/android/camera/device/SomcCameraDeviceInfo;->getAllCaptureRequestKeys()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/CaptureRequest$Key;

    .line 249
    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Key;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    return-object p1
.end method

.method private getTargetKey(Ljava/util/List;Lcom/sonyericsson/android/camera/device/CameraParameterValidator$KeyValueSet;)Landroid/hardware/camera2/CaptureRequest$Key;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "*>;>;",
            "Lcom/sonyericsson/android/camera/device/CameraParameterValidator$KeyValueSet;",
            ")",
            "Landroid/hardware/camera2/CaptureRequest$Key;"
        }
    .end annotation

    .line 236
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CaptureRequest$Key;

    .line 237
    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Key;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p2, Lcom/sonyericsson/android/camera/device/CameraParameterValidator$KeyValueSet;->key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 238
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraParameterValidator$ValidationCase;->getApplicationCaptureRequestKey(Landroid/hardware/camera2/CaptureRequest$Key;)Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private isBaseCondition(Ljava/util/List;Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "*>;>;",
            "Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;",
            ")Z"
        }
    .end annotation

    .line 124
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraParameterValidator$ValidationCase;->mBaseConditionList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/device/CameraParameterValidator$KeyValueSet;

    .line 125
    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/android/camera/device/CameraParameterValidator$ValidationCase;->getTargetKey(Ljava/util/List;Lcom/sonyericsson/android/camera/device/CameraParameterValidator$KeyValueSet;)Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 129
    :cond_1
    invoke-virtual {p2, v2}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 130
    iget-object v1, v1, Lcom/sonyericsson/android/camera/device/CameraParameterValidator$KeyValueSet;->value:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ValidationSet :\n"

    .line 262
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  BaseConditionList :\n"

    .line 264
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraParameterValidator$ValidationCase;->mBaseConditionList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera/device/CameraParameterValidator$KeyValueSet;

    const-string v3, "    "

    .line 266
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/device/CameraParameterValidator$KeyValueSet;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    .line 268
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v1, "  CheckConditionList :\n"

    .line 271
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraParameterValidator$ValidationCase;->mCheckConditionList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/device/CameraParameterValidator$KeyValueSet;

    const-string v2, "    "

    .line 273
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraParameterValidator$KeyValueSet;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    .line 275
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 278
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

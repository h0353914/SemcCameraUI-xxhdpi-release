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
.method static bridge synthetic -$$Nest$maddBaseCondition(Lcom/sonyericsson/android/camera/device/CameraParameterValidator$ValidationCase;Lcom/sonyericsson/android/camera/device/CameraParameterValidator$KeyValueSet;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraParameterValidator$ValidationCase;->addBaseCondition(Lcom/sonyericsson/android/camera/device/CameraParameterValidator$KeyValueSet;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$maddCheckCondition(Lcom/sonyericsson/android/camera/device/CameraParameterValidator$ValidationCase;Lcom/sonyericsson/android/camera/device/CameraParameterValidator$KeyValueSet;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraParameterValidator$ValidationCase;->addCheckCondition(Lcom/sonyericsson/android/camera/device/CameraParameterValidator$KeyValueSet;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckInvalid(Lcom/sonyericsson/android/camera/device/CameraParameterValidator$ValidationCase;Ljava/util/List;Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;Landroid/graphics/Rect;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera/device/CameraParameterValidator$ValidationCase;->checkInvalid(Ljava/util/List;Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;Landroid/graphics/Rect;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$misBaseCondition(Lcom/sonyericsson/android/camera/device/CameraParameterValidator$ValidationCase;Ljava/util/List;Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/device/CameraParameterValidator$ValidationCase;->isBaseCondition(Ljava/util/List;Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;)Z

    move-result p0

    return p0
.end method

.method private constructor <init>()V
    .locals 1

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraParameterValidator$ValidationCase;->mBaseConditionList:Ljava/util/List;

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraParameterValidator$ValidationCase;->mCheckConditionList:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/device/CameraParameterValidator$ValidationCase-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraParameterValidator$ValidationCase;-><init>()V

    return-void
.end method

.method private addBaseCondition(Lcom/sonyericsson/android/camera/device/CameraParameterValidator$KeyValueSet;)V
    .locals 0

    .line 119
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraParameterValidator$ValidationCase;->mBaseConditionList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addCheckCondition(Lcom/sonyericsson/android/camera/device/CameraParameterValidator$KeyValueSet;)V
    .locals 0

    .line 123
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraParameterValidator$ValidationCase;->mCheckConditionList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private checkInvalid(Ljava/util/List;Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;Landroid/graphics/Rect;)V
    .locals 7
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

    .line 196
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraParameterValidator$ValidationCase;->mCheckConditionList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/device/CameraParameterValidator$KeyValueSet;

    .line 197
    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/android/camera/device/CameraParameterValidator$ValidationCase;->getTargetKey(Ljava/util/List;Lcom/sonyericsson/android/camera/device/CameraParameterValidator$KeyValueSet;)Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 201
    :cond_0
    iget-object v3, v1, Lcom/sonyericsson/android/camera/device/CameraParameterValidator$KeyValueSet;->value:Ljava/lang/String;

    const-string v4, "active-array-size"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "]\n"

    const-string v5, "]\n  INVALID  : [VALUE="

    const-string v6, "ERROR : [KEY="

    if-eqz v3, :cond_3

    .line 204
    invoke-virtual {p2, v2}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, [Landroid/hardware/camera2/params/MeteringRectangle;

    if-eqz v3, :cond_1

    .line 205
    invoke-virtual {p2, v2}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/hardware/camera2/params/MeteringRectangle;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    .line 206
    invoke-virtual {v2}, Landroid/hardware/camera2/params/MeteringRectangle;->getRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 208
    :cond_1
    invoke-virtual {p2, v2}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 210
    :goto_1
    invoke-virtual {p3}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    .line 211
    :cond_2
    new-instance p0, Lcom/sonyericsson/android/camera/device/CameraParameterValidator$ParameterValidationError;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, v1, Lcom/sonyericsson/android/camera/device/CameraParameterValidator$KeyValueSet;->key:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraParameterValidator$ParameterValidationError;-><init>(Ljava/lang/String;)V

    throw p0

    .line 221
    :cond_3
    invoke-virtual {p2, v2}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 222
    iget-object v3, v1, Lcom/sonyericsson/android/camera/device/CameraParameterValidator$KeyValueSet;->value:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto/16 :goto_0

    .line 223
    :cond_4
    new-instance p0, Lcom/sonyericsson/android/camera/device/CameraParameterValidator$ParameterValidationError;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, v1, Lcom/sonyericsson/android/camera/device/CameraParameterValidator$KeyValueSet;->key:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, v1, Lcom/sonyericsson/android/camera/device/CameraParameterValidator$KeyValueSet;->value:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraParameterValidator$ParameterValidationError;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    return-void
.end method

.method private checkValid(Ljava/util/List;Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;Landroid/graphics/Rect;)V
    .locals 8
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

    .line 148
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraParameterValidator$ValidationCase;->mCheckConditionList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/device/CameraParameterValidator$KeyValueSet;

    .line 149
    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/android/camera/device/CameraParameterValidator$ValidationCase;->getTargetKey(Ljava/util/List;Lcom/sonyericsson/android/camera/device/CameraParameterValidator$KeyValueSet;)Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 154
    :cond_0
    iget-object v3, v1, Lcom/sonyericsson/android/camera/device/CameraParameterValidator$KeyValueSet;->value:Ljava/lang/String;

    const-string v4, "active-array-size"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "]\n"

    const-string v5, "]\n  ACTUAL   : [VALUE="

    const-string v6, "]\n  EXPECTED : [VALUE="

    const-string v7, "ERROR : [KEY="

    if-eqz v3, :cond_3

    .line 157
    invoke-virtual {p2, v2}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, [Landroid/hardware/camera2/params/MeteringRectangle;

    if-eqz v3, :cond_1

    .line 158
    invoke-virtual {p2, v2}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/hardware/camera2/params/MeteringRectangle;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    .line 159
    invoke-virtual {v2}, Landroid/hardware/camera2/params/MeteringRectangle;->getRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 161
    :cond_1
    invoke-virtual {p2, v2}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 163
    :goto_1
    invoke-virtual {p3}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .line 164
    :cond_2
    new-instance p0, Lcom/sonyericsson/android/camera/device/CameraParameterValidator$ParameterValidationError;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, v1, Lcom/sonyericsson/android/camera/device/CameraParameterValidator$KeyValueSet;->key:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraParameterValidator$ParameterValidationError;-><init>(Ljava/lang/String;)V

    throw p0

    .line 176
    :cond_3
    invoke-virtual {p2, v2}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 177
    iget-object v3, v1, Lcom/sonyericsson/android/camera/device/CameraParameterValidator$KeyValueSet;->value:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto/16 :goto_0

    .line 178
    :cond_4
    new-instance p0, Lcom/sonyericsson/android/camera/device/CameraParameterValidator$ParameterValidationError;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, v1, Lcom/sonyericsson/android/camera/device/CameraParameterValidator$KeyValueSet;->key:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, v1, Lcom/sonyericsson/android/camera/device/CameraParameterValidator$KeyValueSet;->value:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraParameterValidator$ParameterValidationError;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
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

    .line 252
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest$Key;->getName()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 254
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

    .line 255
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

    if-eqz p1, :cond_1

    .line 241
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CaptureRequest$Key;

    .line 242
    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Key;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p2, Lcom/sonyericsson/android/camera/device/CameraParameterValidator$KeyValueSet;->key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 243
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

    .line 128
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

    .line 129
    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/android/camera/device/CameraParameterValidator$ValidationCase;->getTargetKey(Ljava/util/List;Lcom/sonyericsson/android/camera/device/CameraParameterValidator$KeyValueSet;)Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 133
    :cond_1
    invoke-virtual {p2, v2}, Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 134
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
    .locals 5

    .line 267
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ValidationSet :\n  BaseConditionList :\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 271
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraParameterValidator$ValidationCase;->mBaseConditionList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "\n"

    const-string v4, "    "

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera/device/CameraParameterValidator$KeyValueSet;

    .line 272
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/device/CameraParameterValidator$KeyValueSet;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 277
    :cond_0
    const-string v1, "  CheckConditionList :\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
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

    .line 279
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraParameterValidator$KeyValueSet;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 284
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

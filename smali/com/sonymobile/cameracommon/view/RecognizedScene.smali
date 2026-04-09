.class public Lcom/sonymobile/cameracommon/view/RecognizedScene;
.super Ljava/lang/Object;
.source "RecognizedScene.java"


# instance fields
.field final mIconId:I

.field final mSceneMode:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

.field final mTextId:I


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;II)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/sonymobile/cameracommon/view/RecognizedScene;->mSceneMode:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    .line 28
    iput p2, p0, Lcom/sonymobile/cameracommon/view/RecognizedScene;->mIconId:I

    .line 29
    iput p3, p0, Lcom/sonymobile/cameracommon/view/RecognizedScene;->mTextId:I

    return-void
.end method

.method public static create(Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;)Lcom/sonymobile/cameracommon/view/RecognizedScene;
    .locals 3

    const/4 v0, -0x1

    if-nez p0, :cond_0

    .line 34
    new-instance p0, Lcom/sonymobile/cameracommon/view/RecognizedScene;

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0, v0}, Lcom/sonymobile/cameracommon/view/RecognizedScene;-><init>(Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;II)V

    return-object p0

    .line 37
    :cond_0
    sget-object v1, Lcom/sonymobile/cameracommon/view/RecognizedScene$1;->$SwitchMap$com$sonyericsson$android$camera$device$CameraParameterConverter$SceneMode:[I

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 93
    new-instance v1, Lcom/sonymobile/cameracommon/view/RecognizedScene;

    invoke-direct {v1, p0, v0, v0}, Lcom/sonymobile/cameracommon/view/RecognizedScene;-><init>(Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;II)V

    return-object v1

    .line 72
    :pswitch_0
    new-instance v0, Lcom/sonymobile/cameracommon/view/RecognizedScene;

    const v1, 0x7f080226

    const v2, 0x7f0f0251

    invoke-direct {v0, p0, v1, v2}, Lcom/sonymobile/cameracommon/view/RecognizedScene;-><init>(Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;II)V

    return-object v0

    .line 69
    :pswitch_1
    new-instance v0, Lcom/sonymobile/cameracommon/view/RecognizedScene;

    const v1, 0x7f08022d

    const v2, 0x7f0f0256

    invoke-direct {v0, p0, v1, v2}, Lcom/sonymobile/cameracommon/view/RecognizedScene;-><init>(Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;II)V

    return-object v0

    .line 66
    :pswitch_2
    new-instance v0, Lcom/sonymobile/cameracommon/view/RecognizedScene;

    const v1, 0x7f080227

    const v2, 0x7f0f0252

    invoke-direct {v0, p0, v1, v2}, Lcom/sonymobile/cameracommon/view/RecognizedScene;-><init>(Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;II)V

    return-object v0

    .line 63
    :pswitch_3
    new-instance v0, Lcom/sonymobile/cameracommon/view/RecognizedScene;

    const v1, 0x7f08022e

    const v2, 0x7f0f0254

    invoke-direct {v0, p0, v1, v2}, Lcom/sonymobile/cameracommon/view/RecognizedScene;-><init>(Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;II)V

    return-object v0

    .line 60
    :pswitch_4
    new-instance v0, Lcom/sonymobile/cameracommon/view/RecognizedScene;

    const v1, 0x7f080225

    const v2, 0x7f0f0257

    invoke-direct {v0, p0, v1, v2}, Lcom/sonymobile/cameracommon/view/RecognizedScene;-><init>(Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;II)V

    return-object v0

    .line 57
    :pswitch_5
    new-instance v0, Lcom/sonymobile/cameracommon/view/RecognizedScene;

    const v1, 0x7f080224

    const v2, 0x7f0f024f

    invoke-direct {v0, p0, v1, v2}, Lcom/sonymobile/cameracommon/view/RecognizedScene;-><init>(Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;II)V

    return-object v0

    .line 54
    :pswitch_6
    new-instance v0, Lcom/sonymobile/cameracommon/view/RecognizedScene;

    const v1, 0x7f080223

    const v2, 0x7f0f0250

    invoke-direct {v0, p0, v1, v2}, Lcom/sonymobile/cameracommon/view/RecognizedScene;-><init>(Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;II)V

    return-object v0

    .line 51
    :pswitch_7
    new-instance v0, Lcom/sonymobile/cameracommon/view/RecognizedScene;

    const v1, 0x7f08022b

    const v2, 0x7f0f0258

    invoke-direct {v0, p0, v1, v2}, Lcom/sonymobile/cameracommon/view/RecognizedScene;-><init>(Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;II)V

    return-object v0

    .line 48
    :pswitch_8
    new-instance v0, Lcom/sonymobile/cameracommon/view/RecognizedScene;

    const v1, 0x7f08022a

    const v2, 0x7f0f0259

    invoke-direct {v0, p0, v1, v2}, Lcom/sonymobile/cameracommon/view/RecognizedScene;-><init>(Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;II)V

    return-object v0

    .line 45
    :pswitch_9
    new-instance v0, Lcom/sonymobile/cameracommon/view/RecognizedScene;

    const v1, 0x7f080228

    const v2, 0x7f0f0253

    invoke-direct {v0, p0, v1, v2}, Lcom/sonymobile/cameracommon/view/RecognizedScene;-><init>(Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;II)V

    return-object v0

    .line 42
    :pswitch_a
    new-instance v0, Lcom/sonymobile/cameracommon/view/RecognizedScene;

    const v1, 0x7f08022c

    const v2, 0x7f0f0255

    invoke-direct {v0, p0, v1, v2}, Lcom/sonymobile/cameracommon/view/RecognizedScene;-><init>(Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;II)V

    return-object v0

    .line 39
    :pswitch_b
    new-instance v1, Lcom/sonymobile/cameracommon/view/RecognizedScene;

    invoke-direct {v1, p0, v0, v0}, Lcom/sonymobile/cameracommon/view/RecognizedScene;-><init>(Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;II)V

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getIconId()I
    .locals 0

    .line 103
    iget p0, p0, Lcom/sonymobile/cameracommon/view/RecognizedScene;->mIconId:I

    return p0
.end method

.method public getSceneMode()Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/sonymobile/cameracommon/view/RecognizedScene;->mSceneMode:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    return-object p0
.end method

.method public getTextId()I
    .locals 0

    .line 107
    iget p0, p0, Lcom/sonymobile/cameracommon/view/RecognizedScene;->mTextId:I

    return p0
.end method

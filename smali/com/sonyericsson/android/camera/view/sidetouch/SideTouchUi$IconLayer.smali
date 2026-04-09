.class Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$IconLayer;
.super Ljava/lang/Object;
.source "SideTouchUi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IconLayer"
.end annotation


# instance fields
.field private mAttachPoint:Landroid/graphics/Point;

.field private mFocused:Z

.field private mIcon:Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Icon;

.field private mIconType:Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Type;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    sget-object v0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Type;->NONE:Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Type;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$IconLayer;->mIconType:Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Type;

    const/4 v0, 0x0

    .line 64
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$IconLayer;->mFocused:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$1;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$IconLayer;-><init>()V

    return-void
.end method

.method static synthetic access$300(Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$IconLayer;)Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Icon;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$IconLayer;->mIcon:Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Icon;

    return-object p0
.end method

.method static synthetic access$302(Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$IconLayer;Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Icon;)Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Icon;
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$IconLayer;->mIcon:Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Icon;

    return-object p1
.end method

.method static synthetic access$400(Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$IconLayer;)Z
    .locals 0

    .line 60
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$IconLayer;->isValid()Z

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$IconLayer;)Z
    .locals 0

    .line 60
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$IconLayer;->mFocused:Z

    return p0
.end method

.method static synthetic access$502(Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$IconLayer;Z)Z
    .locals 0

    .line 60
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$IconLayer;->mFocused:Z

    return p1
.end method

.method static synthetic access$600(Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$IconLayer;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$IconLayer;->invalid()V

    return-void
.end method

.method static synthetic access$700(Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$IconLayer;)Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Type;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$IconLayer;->mIconType:Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Type;

    return-object p0
.end method

.method static synthetic access$702(Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$IconLayer;Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Type;)Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Type;
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$IconLayer;->mIconType:Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Type;

    return-object p1
.end method

.method static synthetic access$800(Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$IconLayer;)Landroid/graphics/Point;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$IconLayer;->mAttachPoint:Landroid/graphics/Point;

    return-object p0
.end method

.method static synthetic access$802(Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$IconLayer;Landroid/graphics/Point;)Landroid/graphics/Point;
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$IconLayer;->mAttachPoint:Landroid/graphics/Point;

    return-object p1
.end method

.method private invalid()V
    .locals 1

    .line 67
    sget-object v0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Type;->NONE:Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Type;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$IconLayer;->mIconType:Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Type;

    const/4 v0, 0x0

    .line 68
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$IconLayer;->mFocused:Z

    const/4 v0, 0x0

    .line 69
    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$IconLayer;->mIcon:Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Icon;

    .line 70
    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$IconLayer;->mAttachPoint:Landroid/graphics/Point;

    return-void
.end method

.method private isValid()Z
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$IconLayer;->mIcon:Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Icon;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

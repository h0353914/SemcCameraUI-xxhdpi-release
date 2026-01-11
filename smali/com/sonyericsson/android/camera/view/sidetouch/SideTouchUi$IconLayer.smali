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
.method static bridge synthetic -$$Nest$fgetmAttachPoint(Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$IconLayer;)Landroid/graphics/Point;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$IconLayer;->mAttachPoint:Landroid/graphics/Point;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFocused(Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$IconLayer;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$IconLayer;->mFocused:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIcon(Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$IconLayer;)Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Icon;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$IconLayer;->mIcon:Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Icon;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIconType(Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$IconLayer;)Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Type;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$IconLayer;->mIconType:Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Type;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmAttachPoint(Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$IconLayer;Landroid/graphics/Point;)V
    .locals 0

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$IconLayer;->mAttachPoint:Landroid/graphics/Point;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmFocused(Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$IconLayer;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$IconLayer;->mFocused:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIcon(Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$IconLayer;Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Icon;)V
    .locals 0

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$IconLayer;->mIcon:Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Icon;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIconType(Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$IconLayer;Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Type;)V
    .locals 0

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$IconLayer;->mIconType:Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Type;

    return-void
.end method

.method static bridge synthetic -$$Nest$minvalid(Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$IconLayer;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$IconLayer;->invalid()V

    return-void
.end method

.method static bridge synthetic -$$Nest$misValid(Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$IconLayer;)Z
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$IconLayer;->isValid()Z

    move-result p0

    return p0
.end method

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

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$IconLayer-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$IconLayer;-><init>()V

    return-void
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

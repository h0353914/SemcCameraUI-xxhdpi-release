.class public final enum Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;
.super Ljava/lang/Enum;
.source "LayoutAsyncInflateItems.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/viewfinder/InflateItem;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CameraInflateItem"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;",
        ">;",
        "Lcom/sonyericsson/cameracommon/viewfinder/InflateItem;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;

.field public static final enum AUTO_REVIEW:Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;

.field public static final enum FAST_CAPTURING_VIEWFINDER_ITEMS:Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;

.field public static final enum HEAD_UP_DISPLAY:Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;

.field public static final enum RECTANGLE_FACE:Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;

.field public static final enum RECTANGLE_FAST_OBJECT_TRACKING:Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;

.field public static final enum RECTANGLE_FAST_SINGLE:Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;

.field public static final enum RECTANGLE_FAST_TOUCH:Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;


# instance fields
.field protected final mInflateId:I

.field protected final mViewCount:I


# direct methods
.method private static synthetic $values()[Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;
    .locals 7

    .line 29
    sget-object v0, Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;->HEAD_UP_DISPLAY:Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;

    sget-object v1, Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;->RECTANGLE_FACE:Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;

    sget-object v2, Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;->RECTANGLE_FAST_SINGLE:Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;

    sget-object v3, Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;->RECTANGLE_FAST_TOUCH:Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;

    sget-object v4, Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;->RECTANGLE_FAST_OBJECT_TRACKING:Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;

    sget-object v5, Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;->AUTO_REVIEW:Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;

    sget-object v6, Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;->FAST_CAPTURING_VIEWFINDER_ITEMS:Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;

    filled-new-array/range {v0 .. v6}, [Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 6

    .line 30
    new-instance v0, Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;

    const-string v1, "HEAD_UP_DISPLAY"

    const/4 v2, 0x0

    const v3, 0x7f0c0026

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;->HEAD_UP_DISPLAY:Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;

    .line 33
    new-instance v0, Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;

    const-string v1, "RECTANGLE_FACE"

    const v2, 0x7f0c0043

    const/4 v3, 0x5

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;->RECTANGLE_FACE:Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;

    .line 36
    new-instance v0, Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;

    const-string v1, "RECTANGLE_FAST_SINGLE"

    const/4 v2, 0x2

    const v5, 0x7f0c0044

    invoke-direct {v0, v1, v2, v5, v4}, Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;->RECTANGLE_FAST_SINGLE:Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;

    .line 39
    new-instance v0, Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;

    const-string v1, "RECTANGLE_FAST_TOUCH"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v5, v4}, Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;->RECTANGLE_FAST_TOUCH:Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;

    .line 42
    new-instance v0, Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;

    const/4 v1, 0x4

    const v2, 0x7f0c0021

    const-string v5, "RECTANGLE_FAST_OBJECT_TRACKING"

    invoke-direct {v0, v5, v1, v2, v4}, Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;->RECTANGLE_FAST_OBJECT_TRACKING:Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;

    .line 45
    new-instance v0, Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;

    const-string v1, "AUTO_REVIEW"

    const v2, 0x7f0c005d

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;->AUTO_REVIEW:Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;

    .line 48
    new-instance v0, Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;

    const/4 v1, 0x6

    const v2, 0x7f0c0045

    const-string v3, "FAST_CAPTURING_VIEWFINDER_ITEMS"

    invoke-direct {v0, v3, v1, v2, v4}, Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;->FAST_CAPTURING_VIEWFINDER_ITEMS:Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;

    .line 29
    invoke-static {}, Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;->$values()[Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;->$VALUES:[Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 56
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 57
    iput p3, p0, Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;->mInflateId:I

    .line 58
    iput p4, p0, Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;->mViewCount:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;
    .locals 1

    .line 29
    const-class v0, Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;
    .locals 1

    .line 29
    sget-object v0, Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;->$VALUES:[Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;

    return-object v0
.end method


# virtual methods
.method public getLayoutId()I
    .locals 0

    .line 63
    iget p0, p0, Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;->mInflateId:I

    return p0
.end method

.method public getViewCount()I
    .locals 0

    .line 68
    iget p0, p0, Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;->mViewCount:I

    return p0
.end method

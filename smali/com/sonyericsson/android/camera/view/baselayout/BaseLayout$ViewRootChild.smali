.class final enum Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$ViewRootChild;
.super Ljava/lang/Enum;
.source "BaseLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ViewRootChild"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$ViewRootChild;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$ViewRootChild;

.field public static final enum CAPTURE_BUTTON_LAYOUT:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$ViewRootChild;

.field public static final enum HEAD_UP_DISPLAY_CONTAINER:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$ViewRootChild;

.field public static final enum PREDICTIVE_LAUNCH_COVER_CONTAINER:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$ViewRootChild;

.field public static final enum PREFERRED_FOCUS:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$ViewRootChild;

.field public static final enum PREVIEW_CONTAINER_LAYOUT:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$ViewRootChild;

.field public static final enum SWITCH_ANIMATION_CONTAINER:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$ViewRootChild;


# instance fields
.field private mIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 206
    new-instance v0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$ViewRootChild;

    const-string v1, "PREFERRED_FOCUS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$ViewRootChild;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$ViewRootChild;->PREFERRED_FOCUS:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$ViewRootChild;

    .line 207
    new-instance v0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$ViewRootChild;

    const-string v1, "PREVIEW_CONTAINER_LAYOUT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$ViewRootChild;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$ViewRootChild;->PREVIEW_CONTAINER_LAYOUT:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$ViewRootChild;

    .line 208
    new-instance v0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$ViewRootChild;

    const-string v1, "SWITCH_ANIMATION_CONTAINER"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$ViewRootChild;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$ViewRootChild;->SWITCH_ANIMATION_CONTAINER:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$ViewRootChild;

    .line 209
    new-instance v0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$ViewRootChild;

    const-string v1, "CAPTURE_BUTTON_LAYOUT"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$ViewRootChild;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$ViewRootChild;->CAPTURE_BUTTON_LAYOUT:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$ViewRootChild;

    .line 210
    new-instance v0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$ViewRootChild;

    const-string v1, "HEAD_UP_DISPLAY_CONTAINER"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$ViewRootChild;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$ViewRootChild;->HEAD_UP_DISPLAY_CONTAINER:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$ViewRootChild;

    .line 211
    new-instance v0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$ViewRootChild;

    const-string v1, "PREDICTIVE_LAUNCH_COVER_CONTAINER"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7, v7}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$ViewRootChild;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$ViewRootChild;->PREDICTIVE_LAUNCH_COVER_CONTAINER:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$ViewRootChild;

    const/4 v0, 0x6

    .line 205
    new-array v0, v0, [Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$ViewRootChild;

    sget-object v1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$ViewRootChild;->PREFERRED_FOCUS:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$ViewRootChild;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$ViewRootChild;->PREVIEW_CONTAINER_LAYOUT:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$ViewRootChild;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$ViewRootChild;->SWITCH_ANIMATION_CONTAINER:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$ViewRootChild;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$ViewRootChild;->CAPTURE_BUTTON_LAYOUT:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$ViewRootChild;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$ViewRootChild;->HEAD_UP_DISPLAY_CONTAINER:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$ViewRootChild;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$ViewRootChild;->PREDICTIVE_LAUNCH_COVER_CONTAINER:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$ViewRootChild;

    aput-object v1, v0, v7

    sput-object v0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$ViewRootChild;->$VALUES:[Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$ViewRootChild;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 216
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 217
    iput p3, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$ViewRootChild;->mIndex:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$ViewRootChild;
    .locals 1

    .line 205
    const-class v0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$ViewRootChild;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$ViewRootChild;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$ViewRootChild;
    .locals 1

    .line 205
    sget-object v0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$ViewRootChild;->$VALUES:[Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$ViewRootChild;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$ViewRootChild;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$ViewRootChild;

    return-object v0
.end method


# virtual methods
.method public getIndex()I
    .locals 0

    .line 221
    iget p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$ViewRootChild;->mIndex:I

    return p0
.end method

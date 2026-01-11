.class public Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;
.super Ljava/lang/Object;
.source "FocusRectanglesAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AnimationConfig"
.end annotation


# instance fields
.field public final mDuration:I

.field public final mFromHeight:I

.field public final mFromWidth:I

.field public final mToHeight:I

.field public final mToWidth:I

.field final synthetic this$0:Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;IIII)V
    .locals 1

    .line 46
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;->this$0:Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-static {p1}, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->-$$Nest$fgetmContext(Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p4

    .line 48
    invoke-static {p4}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Float;->floatValue()F

    move-result p4

    .line 50
    invoke-static {p1}, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->-$$Nest$fgetmContext(Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;->mToWidth:I

    .line 51
    invoke-static {p1}, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->-$$Nest$fgetmContext(Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iput p3, p0, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;->mToHeight:I

    int-to-float p2, p2

    mul-float/2addr p2, p4

    float-to-int p2, p2

    .line 52
    iput p2, p0, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;->mFromWidth:I

    int-to-float p2, p3

    mul-float/2addr p2, p4

    float-to-int p2, p2

    .line 53
    iput p2, p0, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;->mFromHeight:I

    .line 55
    invoke-static {p1}, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->-$$Nest$fgetmContext(Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;->mDuration:I

    return-void
.end method

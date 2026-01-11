.class public Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;
.super Ljava/lang/Object;
.source "OnScreenButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Resource"
.end annotation


# static fields
.field public static final NONE:I = -0x1


# instance fields
.field final mBackground:I

.field final mDescription:I

.field final mIcon:I

.field final mIconPortrait:I

.field final mText:Ljava/lang/String;


# direct methods
.method public constructor <init>(IIIILjava/lang/String;)V
    .locals 0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;->mIcon:I

    .line 75
    iput p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;->mIconPortrait:I

    .line 76
    iput p3, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;->mBackground:I

    .line 77
    iput p4, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;->mDescription:I

    .line 78
    iput-object p5, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;->mText:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method getBackgroundResource()I
    .locals 0

    .line 98
    iget p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;->mBackground:I

    return p0
.end method

.method getDescription(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 102
    iget v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;->mDescription:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 103
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;->mText:Ljava/lang/String;

    if-eqz p0, :cond_0

    return-object p0

    .line 106
    :cond_0
    const-string p0, ""

    return-object p0

    .line 109
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;->mDescription:I

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method getIconResource(I)I
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 87
    iget p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;->mIcon:I

    return p0

    .line 89
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;->shouldRotateByView()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 90
    iget p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;->mIcon:I

    return p0

    .line 92
    :cond_1
    iget p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;->mIconPortrait:I

    return p0
.end method

.method shouldRotateByView()Z
    .locals 1

    .line 82
    iget p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;->mIconPortrait:I

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

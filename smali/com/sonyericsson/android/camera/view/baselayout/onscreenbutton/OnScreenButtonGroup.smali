.class public Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;
.super Landroid/widget/FrameLayout;
.source "OnScreenButtonGroup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$Item;,
        Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$MutableButtonItem;,
        Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$ImmutableButtonItem;,
        Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$OnItemUpdatedListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "OnScreenButtonGroup"


# instance fields
.field private mMain:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;

.field private mOption1:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;

.field private mOption2:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;

.field private mOrientation:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x2

    .line 49
    iput p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;->mOrientation:I

    return-void
.end method


# virtual methods
.method public clearMain()V
    .locals 2

    .line 281
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;->mMain:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->setItem(Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$Item;)V

    .line 282
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;->mMain:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->setVisibility(I)V

    return-void
.end method

.method public clearOption1()V
    .locals 2

    .line 291
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;->mOption1:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->setItem(Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$Item;)V

    .line 292
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;->mOption1:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->setVisibility(I)V

    return-void
.end method

.method public clearOption2()V
    .locals 2

    .line 286
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;->mOption2:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->setItem(Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$Item;)V

    .line 287
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;->mOption2:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->setVisibility(I)V

    return-void
.end method

.method public clearTouched()V
    .locals 1

    .line 221
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;->mMain:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->clearTouched()V

    .line 222
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;->mOption2:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->clearTouched()V

    .line 223
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;->mOption1:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->clearTouched()V

    return-void
.end method

.method public isMainButtonTouched()Z
    .locals 0

    .line 227
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;->mMain:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->isTouched()Z

    move-result p0

    return p0
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 213
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f090117

    .line 214
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;->mMain:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;

    const v0, 0x7f0901d3

    .line 215
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;->mOption2:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;

    const v0, 0x7f0900cd

    .line 216
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;->mOption1:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;

    return-void
.end method

.method public setMain(Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$Item;)V
    .locals 2

    .line 231
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setMain("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;->mMain:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->setItem(Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$Item;)V

    .line 233
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;->mMain:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->setVisibility(I)V

    return-void
.end method

.method public setMain(Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$Item;IZ)V
    .locals 2

    .line 237
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setMain("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 242
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;->setMain(Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$Item;)V

    .line 243
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;->mMain:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;

    invoke-virtual {p0, p2, p3}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->changeRotatability(IZ)V

    return-void
.end method

.method public setMainAccessibilityTraversalBefore(I)V
    .locals 0

    .line 247
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;->mMain:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->setAccessibilityTraversalBefore(I)V

    return-void
.end method

.method public setMainRotatability(IZ)V
    .locals 0

    .line 327
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;->mMain:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;

    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->changeRotatability(IZ)V

    return-void
.end method

.method public setOption1(Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$Item;)V
    .locals 2

    .line 267
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setOption1("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 268
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;->mOption1:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->setItem(Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$Item;)V

    .line 269
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;->mOption1:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->setVisibility(I)V

    return-void
.end method

.method public setOption1(Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$Item;IZ)V
    .locals 2

    .line 273
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setOption1("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 276
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;->setOption1(Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$Item;)V

    .line 277
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;->mOption1:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;

    invoke-virtual {p0, p2, p3}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->changeRotatability(IZ)V

    return-void
.end method

.method public setOption2(Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$Item;)V
    .locals 2

    .line 251
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setOption2("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;->mOption2:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->setItem(Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$Item;)V

    .line 253
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;->mOption2:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->isGray()Z

    move-result p1

    if-nez p1, :cond_1

    .line 254
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;->mOption2:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public setOption2(Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$Item;IZ)V
    .locals 2

    .line 259
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setOption2("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 262
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;->setOption2(Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$Item;)V

    .line 263
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;->mOption2:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;

    invoke-virtual {p0, p2, p3}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->changeRotatability(IZ)V

    return-void
.end method

.method public setTouchable(Z)V
    .locals 1

    .line 318
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;->mMain:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->setTouchable(Z)V

    .line 319
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;->mOption2:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->setTouchable(Z)V

    .line 320
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;->mOption1:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->setTouchable(Z)V

    return-void
.end method

.method public setUiOrientation(I)V
    .locals 1

    .line 296
    iget v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;->mOrientation:I

    if-ne p1, v0, :cond_0

    return-void

    .line 300
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;->mMain:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->setUiOrientation(I)V

    .line 301
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;->mOption2:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->setUiOrientation(I)V

    .line 302
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;->mOption1:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->setUiOrientation(I)V

    .line 303
    iput p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;->mOrientation:I

    return-void
.end method

.method public show()V
    .locals 2

    .line 307
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 311
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;->setVisibility(I)V

    .line 312
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;->mMain:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->setVisibility(I)V

    .line 313
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;->mOption2:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->setVisibility(I)V

    .line 314
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;->mOption1:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->setVisibility(I)V

    return-void
.end method

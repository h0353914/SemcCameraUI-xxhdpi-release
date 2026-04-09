.class public Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$MutableButtonItem;
.super Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$Item;
.source "OnScreenButtonGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MutableButtonItem"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$MutableButtonItem$Builder;
    }
.end annotation


# instance fields
.field private mResource:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonListener;Z)V
    .locals 0

    .line 149
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$Item;-><init>(Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonListener;Z)V

    .line 150
    sget-object p1, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->EMPTY_RESOURCE:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$MutableButtonItem;->mResource:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;

    return-void
.end method

.method static synthetic access$100(Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$MutableButtonItem;Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;)V
    .locals 0

    .line 144
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$MutableButtonItem;->setResource(Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;)V

    return-void
.end method

.method private setResource(Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;)V
    .locals 0

    .line 163
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$MutableButtonItem;->mResource:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;

    .line 164
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$MutableButtonItem;->notifyUpdated()V

    return-void
.end method


# virtual methods
.method public getResource()Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;
    .locals 0

    .line 155
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$MutableButtonItem;->mResource:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;

    return-object p0
.end method

.method public update()Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$MutableButtonItem$Builder;
    .locals 3

    .line 159
    new-instance v0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$MutableButtonItem$Builder;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$MutableButtonItem;->mResource:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$MutableButtonItem$Builder;-><init>(Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$MutableButtonItem;Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$1;)V

    return-object v0
.end method

.class public Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$ImmutableButtonItem;
.super Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$Item;
.source "OnScreenButtonGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImmutableButtonItem"
.end annotation


# instance fields
.field private final mResource:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;

.field private final mTag:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonListener;Z)V
    .locals 0

    .line 116
    invoke-direct {p0, p3, p4}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$Item;-><init>(Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonListener;Z)V

    .line 117
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$ImmutableButtonItem;->mTag:Ljava/lang/Object;

    .line 118
    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$ImmutableButtonItem;->mResource:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 128
    instance-of v0, p1, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$ImmutableButtonItem;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 129
    check-cast p1, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$ImmutableButtonItem;

    .line 130
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$ImmutableButtonItem;->mTag:Ljava/lang/Object;

    iget-object v2, p1, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$ImmutableButtonItem;->mTag:Ljava/lang/Object;

    if-eq v0, v2, :cond_0

    return v1

    .line 134
    :cond_0
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$ImmutableButtonItem;->getOnScreenButtonListener()Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonListener;

    move-result-object p1

    .line 135
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$ImmutableButtonItem;->getOnScreenButtonListener()Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonListener;

    move-result-object p0

    if-nez p0, :cond_1

    if-eqz p1, :cond_2

    :cond_1
    if-eq p0, p1, :cond_2

    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    .line 139
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    .line 140
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public getResource()Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;
    .locals 0

    .line 123
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$ImmutableButtonItem;->mResource:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;

    return-object p0
.end method

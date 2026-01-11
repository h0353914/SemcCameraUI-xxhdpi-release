.class public abstract Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$LazyInitializer;
.super Ljava/lang/Object;
.source "BaseLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "LazyInitializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mView:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 246
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$LazyInitializer;->mView:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 247
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$LazyInitializer;->initView()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$LazyInitializer;->mView:Ljava/lang/Object;

    .line 249
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$LazyInitializer;->mView:Ljava/lang/Object;

    return-object p0
.end method

.method abstract initView()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public isInitialized()Z
    .locals 0

    .line 242
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$LazyInitializer;->mView:Ljava/lang/Object;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.class public abstract Lcom/sonyericsson/android/camera/view/modeselector/Mode;
.super Ljava/lang/Object;
.source "Mode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/view/modeselector/Mode$OnStateChangeListener;
    }
.end annotation


# static fields
.field public static final INVALID_ID:I


# instance fields
.field protected final mContext:Landroid/content/Context;

.field protected mId:Ljava/lang/String;

.field protected mStateChangeListener:Lcom/sonyericsson/android/camera/view/modeselector/Mode$OnStateChangeListener;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/modeselector/Mode;->mContext:Landroid/content/Context;

    .line 42
    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/modeselector/Mode;->mId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public compare(Lcom/sonyericsson/android/camera/view/modeselector/Mode;)Z
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 121
    :cond_0
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/modeselector/Mode;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/modeselector/Mode;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method protected abstract generateSmallIconMappingName()Ljava/lang/String;
.end method

.method public getId()Ljava/lang/String;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/modeselector/Mode;->mId:Ljava/lang/String;

    return-object p0
.end method

.method protected abstract getModeName()Ljava/lang/String;
.end method

.method public abstract getSelectorIconResId()I
.end method

.method public isAvailable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public loadSmallIcon(Landroid/widget/ImageView;)V
    .locals 4

    .line 93
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/modeselector/Mode;->generateSmallIconMappingName()Ljava/lang/String;

    move-result-object v0

    .line 94
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/modeselector/Mode;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/modeselector/Mode;->mContext:Landroid/content/Context;

    .line 95
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 94
    const-string v3, "drawable"

    invoke-virtual {v1, v0, v3, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 98
    invoke-virtual {p1, v1, v1, v1, v1}, Landroid/widget/ImageView;->setPadding(IIII)V

    goto :goto_0

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/modeselector/Mode;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070135

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 104
    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 106
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/modeselector/Mode;->getSelectorIconResId()I

    move-result v0

    .line 109
    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 110
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/modeselector/Mode;->getModeName()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 112
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public setOnStateChangeListener(Lcom/sonyericsson/android/camera/view/modeselector/Mode$OnStateChangeListener;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/modeselector/Mode;->mStateChangeListener:Lcom/sonyericsson/android/camera/view/modeselector/Mode$OnStateChangeListener;

    return-void
.end method

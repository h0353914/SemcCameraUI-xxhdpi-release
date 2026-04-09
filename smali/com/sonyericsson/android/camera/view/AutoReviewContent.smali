.class public Lcom/sonyericsson/android/camera/view/AutoReviewContent;
.super Ljava/lang/Object;
.source "AutoReviewContent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/view/AutoReviewContent$ContentReceiver;
    }
.end annotation


# instance fields
.field public mClickListener:Landroid/view/View$OnClickListener;

.field public mData:[B

.field public mDuration:J

.field public mEventListener:Lcom/sonyericsson/android/camera/view/AutoReviewController$OnAutoReviewEventListener;

.field public mIsPhoto:Z

.field public mIsReverse:Z

.field public mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/AutoReviewContent;->mClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

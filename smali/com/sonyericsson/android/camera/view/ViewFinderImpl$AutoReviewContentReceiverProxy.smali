.class public Lcom/sonyericsson/android/camera/view/ViewFinderImpl$AutoReviewContentReceiverProxy;
.super Ljava/lang/Object;
.source "ViewFinderImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/ViewFinderImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AutoReviewContentReceiverProxy"
.end annotation


# instance fields
.field private mReceiver:Lcom/sonyericsson/android/camera/view/AutoReviewContent$ContentReceiver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bindReceiver(Lcom/sonyericsson/android/camera/view/AutoReviewContent$ContentReceiver;)V
    .locals 0

    .line 10154
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$AutoReviewContentReceiverProxy;->mReceiver:Lcom/sonyericsson/android/camera/view/AutoReviewContent$ContentReceiver;

    return-void
.end method

.method protected notifyContent(Lcom/sonyericsson/android/camera/view/AutoReviewContent;)V
    .locals 0

    .line 10158
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$AutoReviewContentReceiverProxy;->mReceiver:Lcom/sonyericsson/android/camera/view/AutoReviewContent$ContentReceiver;

    invoke-interface {p0, p1}, Lcom/sonyericsson/android/camera/view/AutoReviewContent$ContentReceiver;->onReceive(Lcom/sonyericsson/android/camera/view/AutoReviewContent;)V

    return-void
.end method

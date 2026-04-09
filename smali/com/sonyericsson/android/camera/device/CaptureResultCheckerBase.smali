.class public abstract Lcom/sonyericsson/android/camera/device/CaptureResultCheckerBase;
.super Ljava/lang/Object;
.source "CaptureResultCheckerBase.java"


# instance fields
.field protected final mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CaptureResultCheckerBase;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public abstract check(Lcom/sonyericsson/android/camera/device/CaptureResultHolder;)V
.end method

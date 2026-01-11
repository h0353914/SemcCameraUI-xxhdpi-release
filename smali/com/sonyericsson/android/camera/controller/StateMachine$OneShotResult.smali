.class public Lcom/sonyericsson/android/camera/controller/StateMachine$OneShotResult;
.super Ljava/lang/Object;
.source "StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/controller/StateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OneShotResult"
.end annotation


# instance fields
.field public final bitmap:Landroid/graphics/Bitmap;

.field public final code:I

.field public final isSuccess:Z

.field public final savingRequest:Lcom/sonyericsson/cameracommon/storage/SavingRequest;

.field public final uri:Landroid/net/Uri;


# direct methods
.method private constructor <init>(Landroid/net/Uri;Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;Lcom/sonyericsson/cameracommon/storage/SavingRequest;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 11497
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11498
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$OneShotResult;->uri:Landroid/net/Uri;

    .line 11499
    iget p1, p2, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;->mResultCode:I

    iput p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$OneShotResult;->code:I

    .line 11500
    sget-object p1, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;->SUCCESS:Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$OneShotResult;->isSuccess:Z

    .line 11501
    iput-object p3, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$OneShotResult;->savingRequest:Lcom/sonyericsson/cameracommon/storage/SavingRequest;

    .line 11502
    iput-object p4, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$OneShotResult;->bitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method synthetic constructor <init>(Landroid/net/Uri;Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;Lcom/sonyericsson/cameracommon/storage/SavingRequest;Landroid/graphics/Bitmap;Lcom/sonyericsson/android/camera/controller/StateMachine$OneShotResult-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sonyericsson/android/camera/controller/StateMachine$OneShotResult;-><init>(Landroid/net/Uri;Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;Lcom/sonyericsson/cameracommon/storage/SavingRequest;Landroid/graphics/Bitmap;)V

    return-void
.end method

.class public Lcom/sonymobile/android/media/internal/HandlerHelper$ExtendedObject;
.super Ljava/lang/Object;
.source "HandlerHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/android/media/internal/HandlerHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExtendedObject"
.end annotation


# instance fields
.field public final handler:Landroid/os/Handler;

.field public final obj:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroid/os/Handler;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/sonymobile/android/media/internal/HandlerHelper$ExtendedObject;->obj:Ljava/lang/Object;

    .line 50
    iput-object p2, p0, Lcom/sonymobile/android/media/internal/HandlerHelper$ExtendedObject;->handler:Landroid/os/Handler;

    return-void
.end method

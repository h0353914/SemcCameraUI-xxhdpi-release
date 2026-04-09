.class Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock$TickEvent;
.super Ljava/lang/Object;
.source "ReferenceClock.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TickEvent"
.end annotation


# instance fields
.field public requestElapsedTime:J

.field final synthetic this$0:Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;)V
    .locals 2

    .line 173
    iput-object p1, p0, Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock$TickEvent;->this$0:Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 174
    iput-wide v0, p0, Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock$TickEvent;->requestElapsedTime:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock$1;)V
    .locals 0

    .line 173
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock$TickEvent;-><init>(Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 178
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock$TickEvent;->this$0:Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;->access$100(Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;)Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock$TickCallback;

    move-result-object v0

    iget-wide v1, p0, Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock$TickEvent;->requestElapsedTime:J

    invoke-interface {v0, v1, v2}, Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock$TickCallback;->onTick(J)V

    .line 179
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock$TickEvent;->this$0:Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock$TickEvent;->this$0:Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;->access$200(Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;->access$300(Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;J)V

    return-void
.end method

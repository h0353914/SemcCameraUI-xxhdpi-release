.class Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$GestureHandler;
.super Landroid/os/Handler;
.source "SideTouchGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GestureHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;


# direct methods
.method constructor <init>(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$GestureHandler;->this$0:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method constructor <init>(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;Landroid/os/Handler;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$GestureHandler;->this$0:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;

    .line 98
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0

    .line 103
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;

    .line 104
    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, p1}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;->onHandleMessage(I)V

    return-void
.end method

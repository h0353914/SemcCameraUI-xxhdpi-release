.class Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$DynamicSettings$1;
.super Landroid/database/ContentObserver;
.source "SideTouchGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$DynamicSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$DynamicSettings;


# direct methods
.method constructor <init>(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$DynamicSettings;Landroid/os/Handler;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$DynamicSettings$1;->this$1:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$DynamicSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 141
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 142
    iget-object p0, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$DynamicSettings$1;->this$1:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$DynamicSettings;

    invoke-static {p0}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$DynamicSettings;->access$000(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$DynamicSettings;)V

    return-void
.end method

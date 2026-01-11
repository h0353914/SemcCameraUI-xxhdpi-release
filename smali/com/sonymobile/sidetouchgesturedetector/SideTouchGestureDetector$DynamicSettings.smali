.class Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$DynamicSettings;
.super Ljava/lang/Object;
.source "SideTouchGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DynamicSettings"
.end annotation


# instance fields
.field private mContentObserver:Landroid/database/ContentObserver;

.field private mRegistered:Z

.field final synthetic this$0:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;


# direct methods
.method public constructor <init>(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;)V
    .locals 1

    .line 146
    iput-object p1, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$DynamicSettings;->this$0:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 137
    iput-boolean p1, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$DynamicSettings;->mRegistered:Z

    .line 138
    new-instance p1, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$DynamicSettings$1;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p1, p0, v0}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$DynamicSettings$1;-><init>(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$DynamicSettings;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$DynamicSettings;->mContentObserver:Landroid/database/ContentObserver;

    .line 147
    invoke-virtual {p0}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$DynamicSettings;->registerObserver()V

    .line 148
    invoke-direct {p0}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$DynamicSettings;->loadSettings()V

    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$DynamicSettings;)V
    .locals 0

    .line 136
    invoke-direct {p0}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$DynamicSettings;->loadSettings()V

    return-void
.end method

.method private loadSettings()V
    .locals 3

    .line 170
    iget-object v0, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$DynamicSettings;->this$0:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;

    invoke-static {v0}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;->access$100(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "somc.side_sense_double_tap_timeout"

    const/16 v2, 0x168

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 172
    iget-object v1, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$DynamicSettings;->this$0:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;

    invoke-virtual {v1, v0}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;->setDoubleTapTimeout(I)V

    .line 174
    iget-object v0, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$DynamicSettings;->this$0:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;

    invoke-static {v0}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;->access$200(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;)Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$DebugListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 175
    iget-object p0, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$DynamicSettings;->this$0:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;

    invoke-static {p0}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;->access$200(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;)Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$DebugListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$DebugListener;->onConfigurationLoaded()V

    :cond_0
    return-void
.end method


# virtual methods
.method public registerObserver()V
    .locals 4

    .line 152
    iget-boolean v0, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$DynamicSettings;->mRegistered:Z

    if-nez v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$DynamicSettings;->this$0:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;

    invoke-static {v0}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;->access$100(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 154
    const-string/jumbo v1, "somc.side_sense_double_tap_timeout"

    .line 155
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$DynamicSettings;->mContentObserver:Landroid/database/ContentObserver;

    .line 154
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const/4 v0, 0x1

    .line 157
    iput-boolean v0, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$DynamicSettings;->mRegistered:Z

    :cond_0
    return-void
.end method

.method public unregisterObserver()V
    .locals 2

    .line 162
    iget-boolean v0, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$DynamicSettings;->mRegistered:Z

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$DynamicSettings;->this$0:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;

    invoke-static {v0}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;->access$100(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 164
    iget-object v1, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$DynamicSettings;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    .line 165
    iput-boolean v0, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$DynamicSettings;->mRegistered:Z

    :cond_0
    return-void
.end method

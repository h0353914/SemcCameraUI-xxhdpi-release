.class Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter$1;
.super Ljava/lang/Object;
.source "DynamicAreaFilter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;


# direct methods
.method constructor <init>(Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;)V
    .locals 0

    .line 200
    iput-object p1, p0, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter$1;->this$0:Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 203
    iget-object p0, p0, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter$1;->this$0:Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;

    invoke-static {p0}, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->access$000(Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->access$100(Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;Landroid/view/MotionEvent;)V

    return-void
.end method

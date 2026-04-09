.class Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter$2;
.super Landroid/database/ContentObserver;
.source "DynamicAreaFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->registerSettingsObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;


# direct methods
.method constructor <init>(Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;Landroid/os/Handler;)V
    .locals 0

    .line 346
    iput-object p1, p0, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter$2;->this$0:Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1

    .line 349
    invoke-static {}, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->access$300()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 350
    iget-object p1, p0, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter$2;->this$0:Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;

    iget-object p2, p0, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter$2;->this$0:Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;

    invoke-static {p2}, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->access$500(Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;)I

    move-result p2

    invoke-static {p1, p2}, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->access$402(Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;I)I

    .line 351
    iget-object p1, p0, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter$2;->this$0:Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;

    iget-object p2, p0, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter$2;->this$0:Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;

    iget-object p0, p0, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter$2;->this$0:Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;

    invoke-static {p0}, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->access$400(Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;)I

    move-result p0

    invoke-static {p2, p0}, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->access$700(Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;I)I

    move-result p0

    invoke-static {p1, p0}, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->access$602(Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;I)I

    goto :goto_0

    .line 352
    :cond_0
    invoke-static {}, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->access$800()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 353
    iget-object p1, p0, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter$2;->this$0:Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;

    iget-object p2, p0, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter$2;->this$0:Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;

    invoke-static {p2}, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->access$1000(Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;)I

    move-result p2

    invoke-static {p1, p2}, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->access$902(Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;I)I

    .line 354
    iget-object p1, p0, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter$2;->this$0:Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;

    iget-object p2, p0, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter$2;->this$0:Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;

    iget-object v0, p0, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter$2;->this$0:Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;

    invoke-static {v0}, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->access$900(Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;)I

    move-result v0

    invoke-static {p2, v0}, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->access$1200(Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;I)I

    move-result p2

    invoke-static {p1, p2}, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->access$1102(Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;I)I

    .line 355
    iget-object p1, p0, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter$2;->this$0:Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;

    invoke-static {p1}, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->access$1300(Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;)Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter$OnDynamicAreaListener;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 356
    iget-object p1, p0, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter$2;->this$0:Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;

    invoke-static {p1}, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->access$1300(Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;)Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter$OnDynamicAreaListener;

    move-result-object p1

    iget-object p0, p0, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter$2;->this$0:Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;

    invoke-static {p0}, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->access$900(Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;)I

    move-result p0

    invoke-interface {p1, p0}, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter$OnDynamicAreaListener;->onTopLimitScaleChanged(I)V

    goto :goto_0

    .line 358
    :cond_1
    invoke-static {}, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->access$1400()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 359
    iget-object p1, p0, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter$2;->this$0:Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;

    iget-object p0, p0, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter$2;->this$0:Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;

    invoke-static {p0}, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->access$1600(Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;)I

    move-result p0

    invoke-static {p1, p0}, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->access$1502(Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;I)I

    goto :goto_0

    .line 360
    :cond_2
    invoke-static {}, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->access$1700()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 361
    iget-object p0, p0, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter$2;->this$0:Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;

    invoke-static {p0}, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->access$1800(Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;)V

    :cond_3
    :goto_0
    return-void
.end method

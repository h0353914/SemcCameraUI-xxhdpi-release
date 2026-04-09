.class Lcom/sonyericsson/cameracommon/sound/SoundPlayer$1;
.super Ljava/lang/Object;
.source "SoundPlayer.java"

# interfaces
.implements Landroid/media/SoundPool$OnLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/sound/SoundPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/cameracommon/sound/SoundPlayer;


# direct methods
.method constructor <init>(Lcom/sonyericsson/cameracommon/sound/SoundPlayer;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/sound/SoundPlayer$1;->this$0:Lcom/sonyericsson/cameracommon/sound/SoundPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadComplete(Landroid/media/SoundPool;II)V
    .locals 7

    .line 141
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/sound/SoundPlayer$1;->this$0:Lcom/sonyericsson/cameracommon/sound/SoundPlayer;

    invoke-static {p1}, Lcom/sonyericsson/cameracommon/sound/SoundPlayer;->access$200(Lcom/sonyericsson/cameracommon/sound/SoundPlayer;)Landroid/media/SoundPool;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    if-eqz p3, :cond_3

    .line 146
    iget-object p3, p0, Lcom/sonyericsson/cameracommon/sound/SoundPlayer$1;->this$0:Lcom/sonyericsson/cameracommon/sound/SoundPlayer;

    invoke-static {p3}, Lcom/sonyericsson/cameracommon/sound/SoundPlayer;->access$300(Lcom/sonyericsson/cameracommon/sound/SoundPlayer;)Ljava/util/Map;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/sound/SoundPlayer$Type;

    .line 147
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/sound/SoundPlayer$1;->this$0:Lcom/sonyericsson/cameracommon/sound/SoundPlayer;

    invoke-static {v1}, Lcom/sonyericsson/cameracommon/sound/SoundPlayer;->access$300(Lcom/sonyericsson/cameracommon/sound/SoundPlayer;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/cameracommon/sound/SoundPlayer$SoundLoad;

    iget v1, v1, Lcom/sonyericsson/cameracommon/sound/SoundPlayer$SoundLoad;->soundID:I

    if-ne v1, p2, :cond_1

    .line 148
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/sound/SoundPlayer$1;->this$0:Lcom/sonyericsson/cameracommon/sound/SoundPlayer;

    invoke-static {p0}, Lcom/sonyericsson/cameracommon/sound/SoundPlayer;->access$300(Lcom/sonyericsson/cameracommon/sound/SoundPlayer;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/cameracommon/sound/SoundPlayer$SoundLoad;

    iput p1, p0, Lcom/sonyericsson/cameracommon/sound/SoundPlayer$SoundLoad;->soundID:I

    :cond_2
    return-void

    .line 155
    :cond_3
    iget-object p3, p0, Lcom/sonyericsson/cameracommon/sound/SoundPlayer$1;->this$0:Lcom/sonyericsson/cameracommon/sound/SoundPlayer;

    invoke-static {p3}, Lcom/sonyericsson/cameracommon/sound/SoundPlayer;->access$300(Lcom/sonyericsson/cameracommon/sound/SoundPlayer;)Ljava/util/Map;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_4
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/sound/SoundPlayer$Type;

    .line 156
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/sound/SoundPlayer$1;->this$0:Lcom/sonyericsson/cameracommon/sound/SoundPlayer;

    invoke-static {v1}, Lcom/sonyericsson/cameracommon/sound/SoundPlayer;->access$300(Lcom/sonyericsson/cameracommon/sound/SoundPlayer;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/cameracommon/sound/SoundPlayer$SoundLoad;

    iget v1, v1, Lcom/sonyericsson/cameracommon/sound/SoundPlayer$SoundLoad;->soundID:I

    if-ne v1, p2, :cond_4

    .line 157
    iget-object p3, p0, Lcom/sonyericsson/cameracommon/sound/SoundPlayer$1;->this$0:Lcom/sonyericsson/cameracommon/sound/SoundPlayer;

    invoke-static {p3}, Lcom/sonyericsson/cameracommon/sound/SoundPlayer;->access$300(Lcom/sonyericsson/cameracommon/sound/SoundPlayer;)Ljava/util/Map;

    move-result-object p3

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/sonyericsson/cameracommon/sound/SoundPlayer$SoundLoad;

    const/4 v0, 0x1

    iput-boolean v0, p3, Lcom/sonyericsson/cameracommon/sound/SoundPlayer$SoundLoad;->isLoaded:Z

    .line 162
    :cond_5
    iget-object p3, p0, Lcom/sonyericsson/cameracommon/sound/SoundPlayer$1;->this$0:Lcom/sonyericsson/cameracommon/sound/SoundPlayer;

    invoke-static {p3}, Lcom/sonyericsson/cameracommon/sound/SoundPlayer;->access$400(Lcom/sonyericsson/cameracommon/sound/SoundPlayer;)I

    move-result p3

    if-ne p2, p3, :cond_6

    .line 163
    iget-object p3, p0, Lcom/sonyericsson/cameracommon/sound/SoundPlayer$1;->this$0:Lcom/sonyericsson/cameracommon/sound/SoundPlayer;

    invoke-static {p3, p1}, Lcom/sonyericsson/cameracommon/sound/SoundPlayer;->access$402(Lcom/sonyericsson/cameracommon/sound/SoundPlayer;I)I

    .line 164
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/sound/SoundPlayer$1;->this$0:Lcom/sonyericsson/cameracommon/sound/SoundPlayer;

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/sound/SoundPlayer$1;->this$0:Lcom/sonyericsson/cameracommon/sound/SoundPlayer;

    invoke-static {p0}, Lcom/sonyericsson/cameracommon/sound/SoundPlayer;->access$200(Lcom/sonyericsson/cameracommon/sound/SoundPlayer;)Landroid/media/SoundPool;

    move-result-object v0

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    move v1, p2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result p0

    invoke-static {p1, p0}, Lcom/sonyericsson/cameracommon/sound/SoundPlayer;->access$502(Lcom/sonyericsson/cameracommon/sound/SoundPlayer;I)I

    :cond_6
    return-void
.end method

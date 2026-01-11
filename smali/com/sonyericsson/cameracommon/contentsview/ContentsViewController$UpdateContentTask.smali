.class Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController$UpdateContentTask;
.super Ljava/lang/Object;
.source "ContentsViewController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateContentTask"
.end annotation


# instance fields
.field private final mChangedStorageState:Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

.field private final mChangedStorageType:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

.field final synthetic this$0:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;


# direct methods
.method constructor <init>(Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;)V
    .locals 0

    .line 660
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController$UpdateContentTask;->this$0:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 661
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController$UpdateContentTask;->mChangedStorageType:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    .line 662
    iput-object p3, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController$UpdateContentTask;->mChangedStorageState:Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 667
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController$UpdateContentTask;->this$0:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    invoke-static {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->-$$Nest$fgetmUpdateContentTaskList(Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 669
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController$UpdateContentTask;->this$0:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    invoke-static {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->-$$Nest$fgetmContentLoader(Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;)Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController$UpdateContentTask;->this$0:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    invoke-static {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->-$$Nest$fgetmContentLoader(Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;)Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->getLocalCache()Ljava/util/LinkedList;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 673
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController$UpdateContentTask;->mChangedStorageState:Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    sget-object v1, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;->AVAILABLE:Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController$UpdateContentTask;->mChangedStorageState:Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    sget-object v1, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;->AVAILABLE_NEAR_FULL:Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController$UpdateContentTask;->mChangedStorageState:Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    sget-object v1, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;->FULL:Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController$UpdateContentTask;->mChangedStorageState:Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    sget-object v1, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;->READ_ONLY:Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 679
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController$UpdateContentTask;->this$0:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    invoke-static {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->-$$Nest$fgetmContentLoader(Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;)Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->getLocalCache()Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 680
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController$UpdateContentTask;->this$0:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    invoke-static {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->-$$Nest$fgetmContentLoader(Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;)Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;

    move-result-object v0

    .line 681
    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->getLocalCache()Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;

    iget-object v0, v0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mVolumeName:Ljava/lang/String;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController$UpdateContentTask;->this$0:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    invoke-static {v1}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->-$$Nest$fgetmActivity(Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;)Landroid/app/Activity;

    move-result-object v1

    .line 680
    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/storage/StorageUtil;->getVolumeType(Ljava/lang/String;Landroid/content/Context;)Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object v0

    .line 682
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController$UpdateContentTask;->mChangedStorageType:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    if-ne v0, v1, :cond_2

    .line 686
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController$UpdateContentTask;->this$0:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->clearContents()V

    .line 691
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController$UpdateContentTask;->this$0:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->isLoading()Z

    move-result v0

    if-nez v0, :cond_3

    .line 692
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController$UpdateContentTask;->this$0:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    invoke-static {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->-$$Nest$fgetmSecurityLevel(Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;)Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$SecurityLevel;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController$UpdateContentTask;->this$0:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    invoke-static {v1}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->-$$Nest$mgetSecurityLevelByKeyguardLockedState(Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;)Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$SecurityLevel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$SecurityLevel;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 693
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController$UpdateContentTask;->this$0:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->reload()V

    :cond_3
    :goto_1
    return-void
.end method

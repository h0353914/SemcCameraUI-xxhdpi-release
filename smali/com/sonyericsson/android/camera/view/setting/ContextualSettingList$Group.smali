.class public Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;
.super Ljava/lang/Object;
.source "ContextualSettingList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Group"
.end annotation


# instance fields
.field public final common:Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;

.field public final priorityHigh:Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;)V
    .locals 0

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;->priorityHigh:Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;

    .line 183
    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;->common:Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;

    return-void
.end method

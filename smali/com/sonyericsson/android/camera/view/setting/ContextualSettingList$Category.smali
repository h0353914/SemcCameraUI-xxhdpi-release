.class public Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;
.super Ljava/lang/Object;
.source "ContextualSettingList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Category"
.end annotation


# instance fields
.field public final keys:[Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

.field public final titleResource:I


# direct methods
.method public varargs constructor <init>(I[Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)V
    .locals 0

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    iput p1, p0, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;->titleResource:I

    .line 168
    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;->keys:[Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    return-void
.end method

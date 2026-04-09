.class final Lcom/sonyericsson/android/camera/debug/DebugMenuFragment$initializeForceSettingMigration$1;
.super Ljava/lang/Object;
.source "DebugMenuFragment.kt"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/debug/DebugMenuFragment;->initializeForceSettingMigration()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/support/v7/preference/Preference;",
        "kotlin.jvm.PlatformType",
        "onPreferenceClick"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xb
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/debug/DebugMenuFragment;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/debug/DebugMenuFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/sonyericsson/android/camera/debug/DebugMenuFragment$initializeForceSettingMigration$1;->this$0:Lcom/sonyericsson/android/camera/debug/DebugMenuFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 0

    .line 118
    iget-object p0, p0, Lcom/sonyericsson/android/camera/debug/DebugMenuFragment$initializeForceSettingMigration$1;->this$0:Lcom/sonyericsson/android/camera/debug/DebugMenuFragment;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/debug/DebugMenuFragment;->access$clearFingerPrint(Lcom/sonyericsson/android/camera/debug/DebugMenuFragment;)V

    const/4 p0, 0x1

    return p0
.end method

.class public final Lcom/sonyericsson/android/camera/debug/DebugMenuActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "DebugMenuActivity.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0014\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/sonyericsson/android/camera/debug/DebugMenuActivity;",
        "Landroid/support/v4/app/FragmentActivity;",
        "()V",
        "onCreate",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "SemcCameraUI_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xb
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 15
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 17
    sget-object v0, Lcom/sonyericsson/android/camera/debug/DebugParameterUtils;->INSTANCE:Lcom/sonyericsson/android/camera/debug/DebugParameterUtils;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/debug/DebugParameterUtils;->isUserBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 18
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/debug/DebugMenuActivity;->finish()V

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 23
    new-instance p1, Lcom/sonyericsson/android/camera/debug/DebugMenuFragment;

    invoke-direct {p1}, Lcom/sonyericsson/android/camera/debug/DebugMenuFragment;-><init>()V

    .line 24
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/debug/DebugMenuActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p0

    const v0, 0x1020002

    .line 25
    check-cast p1, Landroid/support/v4/app/Fragment;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p0

    .line 26
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    :cond_1
    return-void
.end method

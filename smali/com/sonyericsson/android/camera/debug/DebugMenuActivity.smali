.class public final Lcom/sonyericsson/android/camera/debug/DebugMenuActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source "DebugMenuActivity.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDebugMenuActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DebugMenuActivity.kt\ncom/sonyericsson/android/camera/debug/DebugMenuActivity\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,61:1\n326#2,4:62\n*S KotlinDebug\n*F\n+ 1 DebugMenuActivity.kt\ncom/sonyericsson/android/camera/debug/DebugMenuActivity\n*L\n51#1:62,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0014J\u0008\u0010\u0007\u001a\u00020\u0004H\u0014J\n\u0010\u0008\u001a\u00020\t*\u00020\nJ\n\u0010\u000b\u001a\u00020\u0004*\u00020\t\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/sonyericsson/android/camera/debug/DebugMenuActivity;",
        "Landroidx/fragment/app/FragmentActivity;",
        "()V",
        "onCreate",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onResume",
        "getActivityRootView",
        "Landroid/view/View;",
        "Landroid/app/Activity;",
        "reserveSystemBarMargin",
        "SemcCameraUI_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static synthetic $r8$lambda$b5HYFhhAr3XLlayR4vH2Hcm2gIU(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 0

    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera/debug/DebugMenuActivity;->reserveSystemBarMargin$lambda$1(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    return-void
.end method

.method private static final reserveSystemBarMargin$lambda$1(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 3

    const-string/jumbo v0, "view"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "windowInsets"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->systemBars()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object p1

    const-string v0, "getInsets(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    check-cast v0, Landroid/view/ViewGroup$LayoutParams;

    .line 63
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 52
    iget v2, p1, Landroidx/core/graphics/Insets;->top:I

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 53
    iget v2, p1, Landroidx/core/graphics/Insets;->left:I

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 54
    iget v2, p1, Landroidx/core/graphics/Insets;->bottom:I

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 55
    iget p1, p1, Landroidx/core/graphics/Insets;->right:I

    iput p1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 64
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 57
    sget-object p0, Landroidx/core/view/WindowInsetsCompat;->CONSUMED:Landroidx/core/view/WindowInsetsCompat;

    return-object p0

    .line 62
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final getActivityRootView(Landroid/app/Activity;)Landroid/view/View;
    .locals 0

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    const p1, 0x1020002

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    const-string p1, "getChildAt(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 21
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    sget-object v0, Lcom/sonyericsson/android/camera/debug/DebugParameterUtils;->INSTANCE:Lcom/sonyericsson/android/camera/debug/DebugParameterUtils;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/debug/DebugParameterUtils;->isUserBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/debug/DebugMenuActivity;->finish()V

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 29
    new-instance p1, Lcom/sonyericsson/android/camera/debug/DebugMenuFragment;

    invoke-direct {p1}, Lcom/sonyericsson/android/camera/debug/DebugMenuFragment;-><init>()V

    .line 30
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/debug/DebugMenuActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    .line 31
    check-cast p1, Landroidx/fragment/app/Fragment;

    const/4 v0, 0x0

    const v1, 0x1020002

    invoke-virtual {p0, v1, p1, v0}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    .line 32
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 37
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    .line 38
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/debug/DebugMenuActivity;->getActivityRootView(Landroid/app/Activity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/debug/DebugMenuActivity;->reserveSystemBarMargin(Landroid/view/View;)V

    return-void
.end method

.method public final reserveSystemBarMargin(Landroid/view/View;)V
    .locals 0

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    new-instance p0, Lcom/sonyericsson/android/camera/debug/DebugMenuActivity$$ExternalSyntheticLambda0;

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/debug/DebugMenuActivity$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p1, p0}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    return-void
.end method

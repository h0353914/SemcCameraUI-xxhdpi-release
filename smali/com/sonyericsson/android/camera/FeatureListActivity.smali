.class public Lcom/sonyericsson/android/camera/FeatureListActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "FeatureListActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/FeatureListActivity$ScreenOffReceiver;
    }
.end annotation


# static fields
.field public static final EXTRA_FINISH_WHEN_SCREEN_OFF_FLAG:Ljava/lang/String; = "extra_key_finish_when_screen_off"

.field private static final STATE_FINISH_WHEN_SCREEN_OFF:Ljava/lang/String; = "finish_when_screen_off"


# instance fields
.field private mCurrentColorAccent:I

.field private mIsFinishWhenScreenOff:Z

.field private mScreenOffReceiver:Lcom/sonyericsson/android/camera/FeatureListActivity$ScreenOffReceiver;


# direct methods
.method static bridge synthetic -$$Nest$fgetmIsFinishWhenScreenOff(Lcom/sonyericsson/android/camera/FeatureListActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/FeatureListActivity;->mIsFinishWhenScreenOff:Z

    return p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/FeatureListActivity;->mIsFinishWhenScreenOff:Z

    return-void
.end method

.method static synthetic lambda$setupEdgeToEdge$0(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 3

    .line 74
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->systemBars()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object p1

    .line 76
    iget v0, p1, Landroidx/core/graphics/Insets;->left:I

    iget v1, p1, Landroidx/core/graphics/Insets;->top:I

    iget v2, p1, Landroidx/core/graphics/Insets;->right:I

    iget p1, p1, Landroidx/core/graphics/Insets;->bottom:I

    invoke-virtual {p0, v0, v1, v2, p1}, Landroid/view/View;->setPadding(IIII)V

    .line 79
    sget-object p0, Landroidx/core/view/WindowInsetsCompat;->CONSUMED:Landroidx/core/view/WindowInsetsCompat;

    return-object p0
.end method

.method private setupEdgeToEdge()V
    .locals 1

    const v0, 0x1020002

    .line 72
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/FeatureListActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    new-instance v0, Lcom/sonyericsson/android/camera/FeatureListActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera/FeatureListActivity$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .line 117
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    .line 118
    const-string v0, "onBackPressed()"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 120
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/FeatureListActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 121
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/FeatureListActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->popBackStack()V

    goto :goto_0

    .line 123
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/FeatureListActivity;->finish()V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 39
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/FeatureListActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 41
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/FeatureListActivity;->setupEdgeToEdge()V

    const v0, 0x7f0c001d

    .line 42
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/FeatureListActivity;->setContentView(I)V

    .line 44
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/FeatureListActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const v1, 0x1010435

    filled-new-array {v1}, [I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    const v1, 0x7f060072

    .line 46
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/FeatureListActivity;->getColor(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/sonyericsson/android/camera/FeatureListActivity;->mCurrentColorAccent:I

    .line 47
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 50
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/FeatureListActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "extra_key_finish_when_screen_off"

    .line 51
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/FeatureListActivity;->mIsFinishWhenScreenOff:Z

    .line 53
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/FeatureListActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 54
    new-instance v1, Lcom/sonyericsson/android/camera/FeatureListFragment;

    invoke-direct {v1}, Lcom/sonyericsson/android/camera/FeatureListFragment;-><init>()V

    const-string v2, "feature_list_fragment"

    const v3, 0x7f0900ac

    invoke-virtual {p1, v3, v1, v2}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 56
    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 57
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    goto :goto_0

    .line 59
    :cond_0
    const-string v1, "finish_when_screen_off"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/FeatureListActivity;->mIsFinishWhenScreenOff:Z

    :goto_0
    const p1, 0x7f0900d2

    .line 62
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/FeatureListActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    const v1, 0x7f080393

    .line 63
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/FeatureListActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/appcompat/widget/Toolbar;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 64
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/FeatureListActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 65
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/FeatureListActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 67
    new-instance p1, Lcom/sonyericsson/android/camera/FeatureListActivity$ScreenOffReceiver;

    invoke-direct {p1, p0, v0}, Lcom/sonyericsson/android/camera/FeatureListActivity$ScreenOffReceiver;-><init>(Lcom/sonyericsson/android/camera/FeatureListActivity;Lcom/sonyericsson/android/camera/FeatureListActivity$ScreenOffReceiver-IA;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/FeatureListActivity;->mScreenOffReceiver:Lcom/sonyericsson/android/camera/FeatureListActivity$ScreenOffReceiver;

    .line 68
    invoke-virtual {p1, p0}, Lcom/sonyericsson/android/camera/FeatureListActivity$ScreenOffReceiver;->registerTo(Landroid/content/Context;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/sonyericsson/android/camera/FeatureListActivity;->mScreenOffReceiver:Lcom/sonyericsson/android/camera/FeatureListActivity$ScreenOffReceiver;

    if-eqz v0, :cond_0

    .line 101
    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera/FeatureListActivity$ScreenOffReceiver;->unregisterFrom(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 102
    iput-object v0, p0, Lcom/sonyericsson/android/camera/FeatureListActivity;->mScreenOffReceiver:Lcom/sonyericsson/android/camera/FeatureListActivity$ScreenOffReceiver;

    .line 104
    :cond_0
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/16 v0, 0x50

    if-ne p1, v0, :cond_0

    .line 152
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 153
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/FeatureListActivity;->finish()V

    const/4 p0, 0x1

    return p0

    .line 157
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 109
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 110
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/FeatureListActivity;->onBackPressed()V

    .line 112
    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method protected onResume()V
    .locals 2

    .line 85
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    const v0, 0x7f060072

    .line 87
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/FeatureListActivity;->getColor(I)I

    move-result v0

    iget v1, p0, Lcom/sonyericsson/android/camera/FeatureListActivity;->mCurrentColorAccent:I

    if-eq v0, v1, :cond_0

    .line 88
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/FeatureListActivity;->recreate()V

    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 94
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 95
    const-string v0, "finish_when_screen_off"

    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/FeatureListActivity;->mIsFinishWhenScreenOff:Z

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

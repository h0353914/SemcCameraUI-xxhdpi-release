.class public Lcom/sonyericsson/android/camera/FeatureContentFragment;
.super Landroidx/fragment/app/Fragment;
.source "FeatureContentFragment.java"


# static fields
.field public static final FRAGMENT_NAME_FEATURE_CONTENT:Ljava/lang/String; = "feature_content_fragment"

.field public static final KEY_ORIENTATION:Ljava/lang/String; = "key_orientation"

.field public static final KEY_TUTORIAL_TYPE:Ljava/lang/String; = "key_tutorial_type"


# instance fields
.field private mContainerWidth:I

.field private final mOnClickTutorialButtonListener:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OnClickButtonListener;

.field private mOrientation:I

.field private mRootView:Landroid/view/ViewGroup;

.field private mTutorial:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;

.field private mType:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;


# direct methods
.method static bridge synthetic -$$Nest$fgetmTutorial(Lcom/sonyericsson/android/camera/FeatureContentFragment;)Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/FeatureContentFragment;->mTutorial:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mcloseContentFragment(Lcom/sonyericsson/android/camera/FeatureContentFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/FeatureContentFragment;->closeContentFragment()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x0

    .line 45
    iput-object v0, p0, Lcom/sonyericsson/android/camera/FeatureContentFragment;->mRootView:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    .line 47
    iput v0, p0, Lcom/sonyericsson/android/camera/FeatureContentFragment;->mOrientation:I

    .line 50
    new-instance v0, Lcom/sonyericsson/android/camera/FeatureContentFragment$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/FeatureContentFragment$1;-><init>(Lcom/sonyericsson/android/camera/FeatureContentFragment;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/FeatureContentFragment;->mOnClickTutorialButtonListener:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OnClickButtonListener;

    return-void
.end method

.method private closeContentFragment()V
    .locals 2

    .line 191
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/FeatureContentFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    .line 193
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 194
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->popBackStack()V

    goto :goto_0

    .line 196
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->finish()V

    :goto_0
    return-void
.end method

.method private setupLayout()V
    .locals 4

    .line 162
    iget v0, p0, Lcom/sonyericsson/android/camera/FeatureContentFragment;->mOrientation:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 163
    iget-object v0, p0, Lcom/sonyericsson/android/camera/FeatureContentFragment;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 164
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/FeatureContentFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver;->getViewFinderSize(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object v1

    .line 165
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v3

    .line 166
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 168
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 169
    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 171
    iget-object v0, p0, Lcom/sonyericsson/android/camera/FeatureContentFragment;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setPivotX(F)V

    .line 172
    iget-object v0, p0, Lcom/sonyericsson/android/camera/FeatureContentFragment;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setPivotY(F)V

    .line 173
    iget-object v0, p0, Lcom/sonyericsson/android/camera/FeatureContentFragment;->mRootView:Landroid/view/ViewGroup;

    const/high16 v1, 0x42b40000    # 90.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setRotation(F)V

    .line 174
    iget-object p0, p0, Lcom/sonyericsson/android/camera/FeatureContentFragment;->mRootView:Landroid/view/ViewGroup;

    int-to-float v0, v3

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setTranslationX(F)V

    goto :goto_0

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/FeatureContentFragment;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 178
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/FeatureContentFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver;->getViewFinderSize(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object v1

    .line 179
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v3

    .line 180
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 182
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 183
    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 185
    iget-object v0, p0, Lcom/sonyericsson/android/camera/FeatureContentFragment;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setRotation(F)V

    .line 186
    iget-object p0, p0, Lcom/sonyericsson/android/camera/FeatureContentFragment;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->setTranslationX(F)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    .line 69
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 71
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/FeatureContentFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    .line 75
    const-string v0, "key_tutorial_type"

    const-class v1, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/FeatureContentFragment;->mType:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    .line 79
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/FeatureContentFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/app/AppCompatActivity;

    .line 81
    const-string v1, "key_orientation"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/sonyericsson/android/camera/FeatureContentFragment;->mOrientation:I

    .line 82
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/FeatureContentFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    .line 83
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    iput p1, p0, Lcom/sonyericsson/android/camera/FeatureContentFragment;->mOrientation:I

    .line 84
    new-instance p1, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/FeatureContentFragment;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-direct {p1, v1, v0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;-><init>(Landroid/view/ViewGroup;Landroid/view/Window;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/FeatureContentFragment;->mTutorial:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;

    .line 85
    iget v0, p0, Lcom/sonyericsson/android/camera/FeatureContentFragment;->mOrientation:I

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->setUiOrientation(I)V

    .line 86
    iget-object p1, p0, Lcom/sonyericsson/android/camera/FeatureContentFragment;->mTutorial:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;

    iget-object v0, p0, Lcom/sonyericsson/android/camera/FeatureContentFragment;->mOnClickTutorialButtonListener:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OnClickButtonListener;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->setOnClickTutorialButtonListener(Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OnClickButtonListener;)V

    .line 88
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/FeatureContentFragment;->setupLayout()V

    .line 90
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 91
    iget-object v0, p0, Lcom/sonyericsson/android/camera/FeatureContentFragment;->mType:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    iget-object p0, p0, Lcom/sonyericsson/android/camera/FeatureContentFragment;->mTutorial:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;

    new-instance v0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OpenType;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, p1, v1, v2}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OpenType;-><init>(Ljava/util/List;ZZ)V

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1, p1}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->open(Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OpenType;Lcom/sonyericsson/android/camera/setting/StoredSettings;Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$OnClickCloseButtonListener;)Z

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 143
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 144
    iget v0, p0, Lcom/sonyericsson/android/camera/FeatureContentFragment;->mOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_1

    .line 146
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    iput p1, p0, Lcom/sonyericsson/android/camera/FeatureContentFragment;->mOrientation:I

    .line 147
    iget-object v0, p0, Lcom/sonyericsson/android/camera/FeatureContentFragment;->mTutorial:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;

    if-eqz v0, :cond_0

    .line 148
    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->setUiOrientation(I)V

    .line 150
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/FeatureContentFragment;->setupLayout()V

    :cond_1
    return-void
.end method

.method public onCreateAnimator(IZI)Landroid/animation/Animator;
    .locals 6

    const/16 v0, 0x1001

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x2

    .line 109
    const-string/jumbo v5, "translationX"

    if-ne p1, v0, :cond_0

    .line 110
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/FeatureContentFragment;->getView()Landroid/view/View;

    move-result-object p1

    iget p0, p0, Lcom/sonyericsson/android/camera/FeatureContentFragment;->mContainerWidth:I

    int-to-float p0, p0

    new-array p2, v4, [F

    aput p0, p2, v3

    aput v2, p2, v1

    invoke-static {p1, v5, p2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    return-object p0

    :cond_0
    const/16 v0, 0x2002

    if-ne p1, v0, :cond_1

    .line 112
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/FeatureContentFragment;->getView()Landroid/view/View;

    move-result-object p1

    iget p0, p0, Lcom/sonyericsson/android/camera/FeatureContentFragment;->mContainerWidth:I

    int-to-float p0, p0

    new-array p2, v4, [F

    aput v2, p2, v3

    aput p0, p2, v1

    invoke-static {p1, v5, p2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    return-object p0

    .line 114
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onCreateAnimator(IZI)Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0c0049

    const/4 v0, 0x0

    .line 120
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const/4 p3, 0x1

    .line 122
    invoke-virtual {p1, p3}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 123
    new-instance p3, Lcom/sonyericsson/android/camera/FeatureContentFragment$2;

    invoke-direct {p3, p0}, Lcom/sonyericsson/android/camera/FeatureContentFragment$2;-><init>(Lcom/sonyericsson/android/camera/FeatureContentFragment;)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 134
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 135
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getWidth()I

    move-result p2

    iput p2, p0, Lcom/sonyericsson/android/camera/FeatureContentFragment;->mContainerWidth:I

    const p2, 0x7f0900d3

    .line 137
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/sonyericsson/android/camera/FeatureContentFragment;->mRootView:Landroid/view/ViewGroup;

    return-object p1
.end method

.method public onPause()V
    .locals 1

    .line 156
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 157
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object p0

    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardResult;->OTHER:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardResult;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->sendSetupWizardEvent(Lcom/sonymobile/cameracommon/research/parameters/Event$WizardResult;)V

    .line 158
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->closeSetupWizard()V

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 97
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 98
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/FeatureContentFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/app/AppCompatActivity;

    if-eqz v0, :cond_0

    .line 100
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/FeatureContentFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/FeatureContentFragment;->mType:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    .line 101
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->getFeatureListTitleId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setTitle(I)V

    .line 102
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->initSetupwizard(ZZ)V

    .line 103
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/FeatureContentFragment;->mType:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    invoke-virtual {v0, p0, v2}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->startSetupWizard(Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;I)V

    :cond_0
    return-void
.end method

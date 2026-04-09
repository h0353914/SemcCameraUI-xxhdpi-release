.class public abstract Landroid/support/v14/preference/PreferenceFragment;
.super Landroid/app/Fragment;
.source "PreferenceFragment.java"

# interfaces
.implements Landroid/support/v7/preference/PreferenceManager$OnPreferenceTreeClickListener;
.implements Landroid/support/v7/preference/PreferenceManager$OnDisplayPreferenceDialogListener;
.implements Landroid/support/v7/preference/PreferenceManager$OnNavigateToScreenListener;
.implements Landroid/support/v7/preference/DialogPreference$TargetFragment;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v14/preference/PreferenceFragment$DividerDecoration;,
        Landroid/support/v14/preference/PreferenceFragment$ScrollToPreferenceObserver;,
        Landroid/support/v14/preference/PreferenceFragment$OnPreferenceDisplayDialogCallback;,
        Landroid/support/v14/preference/PreferenceFragment$OnPreferenceStartScreenCallback;,
        Landroid/support/v14/preference/PreferenceFragment$OnPreferenceStartFragmentCallback;
    }
.end annotation


# static fields
.field public static final ARG_PREFERENCE_ROOT:Ljava/lang/String; = "android.support.v7.preference.PreferenceFragmentCompat.PREFERENCE_ROOT"

.field private static final DIALOG_FRAGMENT_TAG:Ljava/lang/String; = "android.support.v14.preference.PreferenceFragment.DIALOG"

.field private static final MSG_BIND_PREFERENCES:I = 0x1

.field private static final PREFERENCES_TAG:Ljava/lang/String; = "android:preferences"


# instance fields
.field private final mDividerDecoration:Landroid/support/v14/preference/PreferenceFragment$DividerDecoration;

.field private final mHandler:Landroid/os/Handler;

.field private mHavePrefs:Z

.field private mInitDone:Z

.field private mLayoutResId:I

.field mList:Landroid/support/v7/widget/RecyclerView;

.field private mPreferenceManager:Landroid/support/v7/preference/PreferenceManager;

.field private final mRequestFocus:Ljava/lang/Runnable;

.field private mSelectPreferenceRunnable:Ljava/lang/Runnable;

.field private mStyledContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 109
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 133
    sget v0, Landroid/support/v7/preference/R$layout;->preference_list_fragment:I

    iput v0, p0, Landroid/support/v14/preference/PreferenceFragment;->mLayoutResId:I

    .line 135
    new-instance v0, Landroid/support/v14/preference/PreferenceFragment$DividerDecoration;

    invoke-direct {v0, p0}, Landroid/support/v14/preference/PreferenceFragment$DividerDecoration;-><init>(Landroid/support/v14/preference/PreferenceFragment;)V

    iput-object v0, p0, Landroid/support/v14/preference/PreferenceFragment;->mDividerDecoration:Landroid/support/v14/preference/PreferenceFragment$DividerDecoration;

    .line 138
    new-instance v0, Landroid/support/v14/preference/PreferenceFragment$1;

    invoke-direct {v0, p0}, Landroid/support/v14/preference/PreferenceFragment$1;-><init>(Landroid/support/v14/preference/PreferenceFragment;)V

    iput-object v0, p0, Landroid/support/v14/preference/PreferenceFragment;->mHandler:Landroid/os/Handler;

    .line 150
    new-instance v0, Landroid/support/v14/preference/PreferenceFragment$2;

    invoke-direct {v0, p0}, Landroid/support/v14/preference/PreferenceFragment$2;-><init>(Landroid/support/v14/preference/PreferenceFragment;)V

    iput-object v0, p0, Landroid/support/v14/preference/PreferenceFragment;->mRequestFocus:Ljava/lang/Runnable;

    return-void
.end method

.method private postBindPreferences()V
    .locals 2

    .line 521
    iget-object v0, p0, Landroid/support/v14/preference/PreferenceFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 522
    :cond_0
    iget-object p0, p0, Landroid/support/v14/preference/PreferenceFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private requirePreferenceManager()V
    .locals 1

    .line 515
    iget-object p0, p0, Landroid/support/v14/preference/PreferenceFragment;->mPreferenceManager:Landroid/support/v7/preference/PreferenceManager;

    if-nez p0, :cond_0

    .line 516
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "This should be called after super.onCreate."

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    return-void
.end method

.method private scrollToPreferenceInternal(Landroid/support/v7/preference/Preference;Ljava/lang/String;)V
    .locals 1

    .line 673
    new-instance v0, Landroid/support/v14/preference/PreferenceFragment$3;

    invoke-direct {v0, p0, p1, p2}, Landroid/support/v14/preference/PreferenceFragment$3;-><init>(Landroid/support/v14/preference/PreferenceFragment;Landroid/support/v7/preference/Preference;Ljava/lang/String;)V

    .line 703
    iget-object p1, p0, Landroid/support/v14/preference/PreferenceFragment;->mList:Landroid/support/v7/widget/RecyclerView;

    if-nez p1, :cond_0

    .line 704
    iput-object v0, p0, Landroid/support/v14/preference/PreferenceFragment;->mSelectPreferenceRunnable:Ljava/lang/Runnable;

    goto :goto_0

    .line 706
    :cond_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method

.method private unbindPreferences()V
    .locals 1

    .line 535
    invoke-virtual {p0}, Landroid/support/v14/preference/PreferenceFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 537
    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceScreen;->onDetached()V

    .line 539
    :cond_0
    invoke-virtual {p0}, Landroid/support/v14/preference/PreferenceFragment;->onUnbindPreferences()V

    return-void
.end method


# virtual methods
.method public addPreferencesFromResource(I)V
    .locals 3
    .param p1    # I
        .annotation build Landroid/support/annotation/XmlRes;
        .end annotation
    .end param

    .line 421
    invoke-direct {p0}, Landroid/support/v14/preference/PreferenceFragment;->requirePreferenceManager()V

    .line 423
    iget-object v0, p0, Landroid/support/v14/preference/PreferenceFragment;->mPreferenceManager:Landroid/support/v7/preference/PreferenceManager;

    iget-object v1, p0, Landroid/support/v14/preference/PreferenceFragment;->mStyledContext:Landroid/content/Context;

    .line 424
    invoke-virtual {p0}, Landroid/support/v14/preference/PreferenceFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    .line 423
    invoke-virtual {v0, v1, p1, v2}, Landroid/support/v7/preference/PreferenceManager;->inflateFromResource(Landroid/content/Context;ILandroid/support/v7/preference/PreferenceScreen;)Landroid/support/v7/preference/PreferenceScreen;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/v14/preference/PreferenceFragment;->setPreferenceScreen(Landroid/support/v7/preference/PreferenceScreen;)V

    return-void
.end method

.method bindPreferences()V
    .locals 3

    .line 526
    invoke-virtual {p0}, Landroid/support/v14/preference/PreferenceFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 528
    invoke-virtual {p0}, Landroid/support/v14/preference/PreferenceFragment;->getListView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {p0, v0}, Landroid/support/v14/preference/PreferenceFragment;->onCreateAdapter(Landroid/support/v7/preference/PreferenceScreen;)Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 529
    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceScreen;->onAttached()V

    .line 531
    :cond_0
    invoke-virtual {p0}, Landroid/support/v14/preference/PreferenceFragment;->onBindPreferences()V

    return-void
.end method

.method public findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;
    .locals 1

    .line 508
    iget-object v0, p0, Landroid/support/v14/preference/PreferenceFragment;->mPreferenceManager:Landroid/support/v7/preference/PreferenceManager;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 511
    :cond_0
    iget-object p0, p0, Landroid/support/v14/preference/PreferenceFragment;->mPreferenceManager:Landroid/support/v7/preference/PreferenceManager;

    invoke-virtual {p0, p1}, Landroid/support/v7/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p0

    return-object p0
.end method

.method public getCallbackFragment()Landroid/app/Fragment;
    .locals 0
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getListView()Landroid/support/v7/widget/RecyclerView;
    .locals 0

    .line 553
    iget-object p0, p0, Landroid/support/v14/preference/PreferenceFragment;->mList:Landroid/support/v7/widget/RecyclerView;

    return-object p0
.end method

.method public getPreferenceManager()Landroid/support/v7/preference/PreferenceManager;
    .locals 0

    .line 386
    iget-object p0, p0, Landroid/support/v14/preference/PreferenceFragment;->mPreferenceManager:Landroid/support/v7/preference/PreferenceManager;

    return-object p0
.end method

.method public getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;
    .locals 0

    .line 411
    iget-object p0, p0, Landroid/support/v14/preference/PreferenceFragment;->mPreferenceManager:Landroid/support/v7/preference/PreferenceManager;

    invoke-virtual {p0}, Landroid/support/v7/preference/PreferenceManager;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object p0

    return-object p0
.end method

.method protected onBindPreferences()V
    .locals 0
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 206
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 207
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 208
    invoke-virtual {p0}, Landroid/support/v14/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v2, Landroid/support/v7/preference/R$attr;->preferenceTheme:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 209
    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    if-nez v0, :cond_0

    .line 212
    sget v0, Landroid/support/v7/preference/R$style;->PreferenceThemeOverlay:I

    .line 214
    :cond_0
    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Landroid/support/v14/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Landroid/support/v14/preference/PreferenceFragment;->mStyledContext:Landroid/content/Context;

    .line 216
    new-instance v0, Landroid/support/v7/preference/PreferenceManager;

    iget-object v1, p0, Landroid/support/v14/preference/PreferenceFragment;->mStyledContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/support/v7/preference/PreferenceManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v14/preference/PreferenceFragment;->mPreferenceManager:Landroid/support/v7/preference/PreferenceManager;

    .line 217
    iget-object v0, p0, Landroid/support/v14/preference/PreferenceFragment;->mPreferenceManager:Landroid/support/v7/preference/PreferenceManager;

    invoke-virtual {v0, p0}, Landroid/support/v7/preference/PreferenceManager;->setOnNavigateToScreenListener(Landroid/support/v7/preference/PreferenceManager$OnNavigateToScreenListener;)V

    .line 218
    invoke-virtual {p0}, Landroid/support/v14/preference/PreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 221
    invoke-virtual {p0}, Landroid/support/v14/preference/PreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "android.support.v7.preference.PreferenceFragmentCompat.PREFERENCE_ROOT"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 225
    :goto_0
    invoke-virtual {p0, p1, v0}, Landroid/support/v14/preference/PreferenceFragment;->onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V

    return-void
.end method

.method protected onCreateAdapter(Landroid/support/v7/preference/PreferenceScreen;)Landroid/support/v7/widget/RecyclerView$Adapter;
    .locals 0

    .line 607
    new-instance p0, Landroid/support/v7/preference/PreferenceGroupAdapter;

    invoke-direct {p0, p1}, Landroid/support/v7/preference/PreferenceGroupAdapter;-><init>(Landroid/support/v7/preference/PreferenceGroup;)V

    return-object p0
.end method

.method public onCreateLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;
    .locals 1

    .line 597
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroid/support/v14/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public abstract onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
.end method

.method public onCreateRecyclerView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/support/v7/widget/RecyclerView;
    .locals 1

    .line 573
    iget-object p3, p0, Landroid/support/v14/preference/PreferenceFragment;->mStyledContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p3

    const-string v0, "android.hardware.type.automotive"

    invoke-virtual {p3, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 575
    sget p3, Landroid/support/v7/preference/R$id;->recycler_view:I

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/support/v7/widget/RecyclerView;

    if-eqz p3, :cond_0

    return-object p3

    .line 580
    :cond_0
    sget p3, Landroid/support/v7/preference/R$layout;->preference_recyclerview:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/RecyclerView;

    .line 583
    invoke-virtual {p0}, Landroid/support/v14/preference/PreferenceFragment;->onCreateLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 584
    new-instance p0, Landroid/support/v7/preference/PreferenceRecyclerViewAccessibilityDelegate;

    invoke-direct {p0, p1}, Landroid/support/v7/preference/PreferenceRecyclerViewAccessibilityDelegate;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    invoke-virtual {p1, p0}, Landroid/support/v7/widget/RecyclerView;->setAccessibilityDelegateCompat(Landroid/support/v7/widget/RecyclerViewAccessibilityDelegate;)V

    return-object p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7

    .line 244
    iget-object v0, p0, Landroid/support/v14/preference/PreferenceFragment;->mStyledContext:Landroid/content/Context;

    sget-object v1, Landroid/support/v7/preference/R$styleable;->PreferenceFragment:[I

    iget-object v2, p0, Landroid/support/v14/preference/PreferenceFragment;->mStyledContext:Landroid/content/Context;

    sget v3, Landroid/support/v7/preference/R$attr;->preferenceFragmentStyle:I

    const v4, 0x1010506

    .line 246
    invoke-static {v2, v3, v4}, Landroid/support/v4/content/res/TypedArrayUtils;->getAttr(Landroid/content/Context;II)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 244
    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 249
    sget v1, Landroid/support/v7/preference/R$styleable;->PreferenceFragment_android_layout:I

    iget v2, p0, Landroid/support/v14/preference/PreferenceFragment;->mLayoutResId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/support/v14/preference/PreferenceFragment;->mLayoutResId:I

    .line 251
    sget v1, Landroid/support/v7/preference/R$styleable;->PreferenceFragment_android_divider:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 252
    sget v2, Landroid/support/v7/preference/R$styleable;->PreferenceFragment_android_dividerHeight:I

    const/4 v4, -0x1

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .line 254
    sget v5, Landroid/support/v7/preference/R$styleable;->PreferenceFragment_allowDividerAfterLastItem:I

    const/4 v6, 0x1

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    .line 256
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 258
    iget-object v0, p0, Landroid/support/v14/preference/PreferenceFragment;->mStyledContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 260
    iget v0, p0, Landroid/support/v14/preference/PreferenceFragment;->mLayoutResId:I

    invoke-virtual {p1, v0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    const v0, 0x102003f

    .line 262
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 263
    instance-of v3, v0, Landroid/view/ViewGroup;

    if-nez v3, :cond_0

    .line 264
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Content has view with id attribute \'android.R.id.list_container\' that is not a ViewGroup class"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 268
    :cond_0
    check-cast v0, Landroid/view/ViewGroup;

    .line 270
    invoke-virtual {p0, p1, v0, p3}, Landroid/support/v14/preference/PreferenceFragment;->onCreateRecyclerView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/support/v7/widget/RecyclerView;

    move-result-object p1

    if-nez p1, :cond_1

    .line 273
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Could not create RecyclerView"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 276
    :cond_1
    iput-object p1, p0, Landroid/support/v14/preference/PreferenceFragment;->mList:Landroid/support/v7/widget/RecyclerView;

    .line 278
    iget-object p3, p0, Landroid/support/v14/preference/PreferenceFragment;->mDividerDecoration:Landroid/support/v14/preference/PreferenceFragment$DividerDecoration;

    invoke-virtual {p1, p3}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 279
    invoke-virtual {p0, v1}, Landroid/support/v14/preference/PreferenceFragment;->setDivider(Landroid/graphics/drawable/Drawable;)V

    if-eq v2, v4, :cond_2

    .line 281
    invoke-virtual {p0, v2}, Landroid/support/v14/preference/PreferenceFragment;->setDividerHeight(I)V

    .line 283
    :cond_2
    iget-object p1, p0, Landroid/support/v14/preference/PreferenceFragment;->mDividerDecoration:Landroid/support/v14/preference/PreferenceFragment$DividerDecoration;

    invoke-virtual {p1, v5}, Landroid/support/v14/preference/PreferenceFragment$DividerDecoration;->setAllowDividerAfterLastItem(Z)V

    .line 287
    iget-object p1, p0, Landroid/support/v14/preference/PreferenceFragment;->mList:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-nez p1, :cond_3

    .line 288
    iget-object p1, p0, Landroid/support/v14/preference/PreferenceFragment;->mList:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 290
    :cond_3
    iget-object p1, p0, Landroid/support/v14/preference/PreferenceFragment;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Landroid/support/v14/preference/PreferenceFragment;->mRequestFocus:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-object p2
.end method

.method public onDestroyView()V
    .locals 2

    .line 360
    iget-object v0, p0, Landroid/support/v14/preference/PreferenceFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/v14/preference/PreferenceFragment;->mRequestFocus:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 361
    iget-object v0, p0, Landroid/support/v14/preference/PreferenceFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 362
    iget-boolean v0, p0, Landroid/support/v14/preference/PreferenceFragment;->mHavePrefs:Z

    if-eqz v0, :cond_0

    .line 363
    invoke-direct {p0}, Landroid/support/v14/preference/PreferenceFragment;->unbindPreferences()V

    :cond_0
    const/4 v0, 0x0

    .line 365
    iput-object v0, p0, Landroid/support/v14/preference/PreferenceFragment;->mList:Landroid/support/v7/widget/RecyclerView;

    .line 366
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    return-void
.end method

.method public onDisplayPreferenceDialog(Landroid/support/v7/preference/Preference;)V
    .locals 3

    .line 621
    invoke-virtual {p0}, Landroid/support/v14/preference/PreferenceFragment;->getCallbackFragment()Landroid/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Landroid/support/v14/preference/PreferenceFragment$OnPreferenceDisplayDialogCallback;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 622
    invoke-virtual {p0}, Landroid/support/v14/preference/PreferenceFragment;->getCallbackFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/PreferenceFragment$OnPreferenceDisplayDialogCallback;

    .line 623
    invoke-interface {v0, p0, p1}, Landroid/support/v14/preference/PreferenceFragment$OnPreferenceDisplayDialogCallback;->onPreferenceDisplayDialog(Landroid/support/v14/preference/PreferenceFragment;Landroid/support/v7/preference/Preference;)Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-nez v0, :cond_1

    .line 625
    invoke-virtual {p0}, Landroid/support/v14/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    instance-of v2, v2, Landroid/support/v14/preference/PreferenceFragment$OnPreferenceDisplayDialogCallback;

    if-eqz v2, :cond_1

    .line 626
    invoke-virtual {p0}, Landroid/support/v14/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/PreferenceFragment$OnPreferenceDisplayDialogCallback;

    .line 627
    invoke-interface {v0, p0, p1}, Landroid/support/v14/preference/PreferenceFragment$OnPreferenceDisplayDialogCallback;->onPreferenceDisplayDialog(Landroid/support/v14/preference/PreferenceFragment;Landroid/support/v7/preference/Preference;)Z

    move-result v0

    :cond_1
    if-eqz v0, :cond_2

    return-void

    .line 635
    :cond_2
    invoke-virtual {p0}, Landroid/support/v14/preference/PreferenceFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v2, "android.support.v14.preference.PreferenceFragment.DIALOG"

    invoke-virtual {v0, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_3

    return-void

    .line 640
    :cond_3
    instance-of v0, p1, Landroid/support/v7/preference/EditTextPreference;

    if-eqz v0, :cond_4

    .line 641
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v14/preference/EditTextPreferenceDialogFragment;->newInstance(Ljava/lang/String;)Landroid/support/v14/preference/EditTextPreferenceDialogFragment;

    move-result-object p1

    goto :goto_1

    .line 642
    :cond_4
    instance-of v0, p1, Landroid/support/v7/preference/ListPreference;

    if-eqz v0, :cond_5

    .line 643
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v14/preference/ListPreferenceDialogFragment;->newInstance(Ljava/lang/String;)Landroid/support/v14/preference/ListPreferenceDialogFragment;

    move-result-object p1

    goto :goto_1

    .line 644
    :cond_5
    instance-of v0, p1, Landroid/support/v14/preference/MultiSelectListPreference;

    if-eqz v0, :cond_6

    .line 645
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v14/preference/MultiSelectListPreferenceDialogFragment;->newInstance(Ljava/lang/String;)Landroid/support/v14/preference/MultiSelectListPreferenceDialogFragment;

    move-result-object p1

    .line 650
    :goto_1
    invoke-virtual {p1, p0, v1}, Landroid/app/DialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 651
    invoke-virtual {p0}, Landroid/support/v14/preference/PreferenceFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    const-string v0, "android.support.v14.preference.PreferenceFragment.DIALOG"

    invoke-virtual {p1, p0, v0}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void

    .line 647
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Tried to display dialog for unknown preference type. Did you forget to override onDisplayPreferenceDialog()?"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onNavigateToScreen(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 1

    .line 489
    invoke-virtual {p0}, Landroid/support/v14/preference/PreferenceFragment;->getCallbackFragment()Landroid/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Landroid/support/v14/preference/PreferenceFragment$OnPreferenceStartScreenCallback;

    if-eqz v0, :cond_0

    .line 490
    invoke-virtual {p0}, Landroid/support/v14/preference/PreferenceFragment;->getCallbackFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/PreferenceFragment$OnPreferenceStartScreenCallback;

    .line 491
    invoke-interface {v0, p0, p1}, Landroid/support/v14/preference/PreferenceFragment$OnPreferenceStartScreenCallback;->onPreferenceStartScreen(Landroid/support/v14/preference/PreferenceFragment;Landroid/support/v7/preference/PreferenceScreen;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 493
    invoke-virtual {p0}, Landroid/support/v14/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Landroid/support/v14/preference/PreferenceFragment$OnPreferenceStartScreenCallback;

    if-eqz v0, :cond_1

    .line 494
    invoke-virtual {p0}, Landroid/support/v14/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/PreferenceFragment$OnPreferenceStartScreenCallback;

    .line 495
    invoke-interface {v0, p0, p1}, Landroid/support/v14/preference/PreferenceFragment$OnPreferenceStartScreenCallback;->onPreferenceStartScreen(Landroid/support/v14/preference/PreferenceFragment;Landroid/support/v7/preference/PreferenceScreen;)Z

    :cond_1
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 2

    .line 461
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 463
    invoke-virtual {p0}, Landroid/support/v14/preference/PreferenceFragment;->getCallbackFragment()Landroid/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Landroid/support/v14/preference/PreferenceFragment$OnPreferenceStartFragmentCallback;

    if-eqz v0, :cond_0

    .line 464
    invoke-virtual {p0}, Landroid/support/v14/preference/PreferenceFragment;->getCallbackFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/PreferenceFragment$OnPreferenceStartFragmentCallback;

    .line 465
    invoke-interface {v0, p0, p1}, Landroid/support/v14/preference/PreferenceFragment$OnPreferenceStartFragmentCallback;->onPreferenceStartFragment(Landroid/support/v14/preference/PreferenceFragment;Landroid/support/v7/preference/Preference;)Z

    move-result v1

    :cond_0
    if-nez v1, :cond_1

    .line 467
    invoke-virtual {p0}, Landroid/support/v14/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Landroid/support/v14/preference/PreferenceFragment$OnPreferenceStartFragmentCallback;

    if-eqz v0, :cond_1

    .line 468
    invoke-virtual {p0}, Landroid/support/v14/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/PreferenceFragment$OnPreferenceStartFragmentCallback;

    .line 469
    invoke-interface {v0, p0, p1}, Landroid/support/v14/preference/PreferenceFragment$OnPreferenceStartFragmentCallback;->onPreferenceStartFragment(Landroid/support/v14/preference/PreferenceFragment;Landroid/support/v7/preference/Preference;)Z

    move-result v1

    :cond_1
    return v1

    :cond_2
    return v1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 371
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 373
    invoke-virtual {p0}, Landroid/support/v14/preference/PreferenceFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 375
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 376
    invoke-virtual {p0, v0}, Landroid/support/v7/preference/PreferenceScreen;->saveHierarchyState(Landroid/os/Bundle;)V

    const-string p0, "android:preferences"

    .line 377
    invoke-virtual {p1, p0, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 346
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 347
    iget-object v0, p0, Landroid/support/v14/preference/PreferenceFragment;->mPreferenceManager:Landroid/support/v7/preference/PreferenceManager;

    invoke-virtual {v0, p0}, Landroid/support/v7/preference/PreferenceManager;->setOnPreferenceTreeClickListener(Landroid/support/v7/preference/PreferenceManager$OnPreferenceTreeClickListener;)V

    .line 348
    iget-object v0, p0, Landroid/support/v14/preference/PreferenceFragment;->mPreferenceManager:Landroid/support/v7/preference/PreferenceManager;

    invoke-virtual {v0, p0}, Landroid/support/v7/preference/PreferenceManager;->setOnDisplayPreferenceDialogListener(Landroid/support/v7/preference/PreferenceManager$OnDisplayPreferenceDialogListener;)V

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 353
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 354
    iget-object v0, p0, Landroid/support/v14/preference/PreferenceFragment;->mPreferenceManager:Landroid/support/v7/preference/PreferenceManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceManager;->setOnPreferenceTreeClickListener(Landroid/support/v7/preference/PreferenceManager$OnPreferenceTreeClickListener;)V

    .line 355
    iget-object p0, p0, Landroid/support/v14/preference/PreferenceFragment;->mPreferenceManager:Landroid/support/v7/preference/PreferenceManager;

    invoke-virtual {p0, v1}, Landroid/support/v7/preference/PreferenceManager;->setOnDisplayPreferenceDialogListener(Landroid/support/v7/preference/PreferenceManager$OnDisplayPreferenceDialogListener;)V

    return-void
.end method

.method protected onUnbindPreferences()V
    .locals 0
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 321
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    if-eqz p2, :cond_0

    const-string p1, "android:preferences"

    .line 324
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 326
    invoke-virtual {p0}, Landroid/support/v14/preference/PreferenceFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 328
    invoke-virtual {p2, p1}, Landroid/support/v7/preference/PreferenceScreen;->restoreHierarchyState(Landroid/os/Bundle;)V

    .line 333
    :cond_0
    iget-boolean p1, p0, Landroid/support/v14/preference/PreferenceFragment;->mHavePrefs:Z

    if-eqz p1, :cond_1

    .line 334
    invoke-virtual {p0}, Landroid/support/v14/preference/PreferenceFragment;->bindPreferences()V

    .line 335
    iget-object p1, p0, Landroid/support/v14/preference/PreferenceFragment;->mSelectPreferenceRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_1

    .line 336
    iget-object p1, p0, Landroid/support/v14/preference/PreferenceFragment;->mSelectPreferenceRunnable:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    const/4 p1, 0x0

    .line 337
    iput-object p1, p0, Landroid/support/v14/preference/PreferenceFragment;->mSelectPreferenceRunnable:Ljava/lang/Runnable;

    :cond_1
    const/4 p1, 0x1

    .line 341
    iput-boolean p1, p0, Landroid/support/v14/preference/PreferenceFragment;->mInitDone:Z

    return-void
.end method

.method public scrollToPreference(Landroid/support/v7/preference/Preference;)V
    .locals 1

    const/4 v0, 0x0

    .line 669
    invoke-direct {p0, p1, v0}, Landroid/support/v14/preference/PreferenceFragment;->scrollToPreferenceInternal(Landroid/support/v7/preference/Preference;Ljava/lang/String;)V

    return-void
.end method

.method public scrollToPreference(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 665
    invoke-direct {p0, v0, p1}, Landroid/support/v14/preference/PreferenceFragment;->scrollToPreferenceInternal(Landroid/support/v7/preference/Preference;Ljava/lang/String;)V

    return-void
.end method

.method public setDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 305
    iget-object p0, p0, Landroid/support/v14/preference/PreferenceFragment;->mDividerDecoration:Landroid/support/v14/preference/PreferenceFragment$DividerDecoration;

    invoke-virtual {p0, p1}, Landroid/support/v14/preference/PreferenceFragment$DividerDecoration;->setDivider(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setDividerHeight(I)V
    .locals 0

    .line 316
    iget-object p0, p0, Landroid/support/v14/preference/PreferenceFragment;->mDividerDecoration:Landroid/support/v14/preference/PreferenceFragment$DividerDecoration;

    invoke-virtual {p0, p1}, Landroid/support/v14/preference/PreferenceFragment$DividerDecoration;->setDividerHeight(I)V

    return-void
.end method

.method public setPreferenceScreen(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 1

    .line 395
    iget-object v0, p0, Landroid/support/v14/preference/PreferenceFragment;->mPreferenceManager:Landroid/support/v7/preference/PreferenceManager;

    invoke-virtual {v0, p1}, Landroid/support/v7/preference/PreferenceManager;->setPreferences(Landroid/support/v7/preference/PreferenceScreen;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 396
    invoke-virtual {p0}, Landroid/support/v14/preference/PreferenceFragment;->onUnbindPreferences()V

    const/4 p1, 0x1

    .line 397
    iput-boolean p1, p0, Landroid/support/v14/preference/PreferenceFragment;->mHavePrefs:Z

    .line 398
    iget-boolean p1, p0, Landroid/support/v14/preference/PreferenceFragment;->mInitDone:Z

    if-eqz p1, :cond_0

    .line 399
    invoke-direct {p0}, Landroid/support/v14/preference/PreferenceFragment;->postBindPreferences()V

    :cond_0
    return-void
.end method

.method public setPreferencesFromResource(ILjava/lang/String;)V
    .locals 3
    .param p1    # I
        .annotation build Landroid/support/annotation/XmlRes;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 437
    invoke-direct {p0}, Landroid/support/v14/preference/PreferenceFragment;->requirePreferenceManager()V

    .line 439
    iget-object v0, p0, Landroid/support/v14/preference/PreferenceFragment;->mPreferenceManager:Landroid/support/v7/preference/PreferenceManager;

    iget-object v1, p0, Landroid/support/v14/preference/PreferenceFragment;->mStyledContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/support/v7/preference/PreferenceManager;->inflateFromResource(Landroid/content/Context;ILandroid/support/v7/preference/PreferenceScreen;)Landroid/support/v7/preference/PreferenceScreen;

    move-result-object p1

    if-eqz p2, :cond_0

    .line 444
    invoke-virtual {p1, p2}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    .line 445
    instance-of v0, p1, Landroid/support/v7/preference/PreferenceScreen;

    if-nez v0, :cond_0

    .line 446
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Preference object with key "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " is not a PreferenceScreen"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 453
    :cond_0
    check-cast p1, Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {p0, p1}, Landroid/support/v14/preference/PreferenceFragment;->setPreferenceScreen(Landroid/support/v7/preference/PreferenceScreen;)V

    return-void
.end method

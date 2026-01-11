.class public Lcom/sonyericsson/cameracommon/widget/Switch;
.super Landroid/widget/LinearLayout;
.source "Switch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/widget/Switch$SwitchOnClickListener;
    }
.end annotation


# static fields
.field private static final DISABLED_FILTER:I = 0x7f060035

.field private static final OFF_POSITION:I = 0x0

.field public static final TAG:Ljava/lang/String; = "Switch"


# instance fields
.field private mIsChecked:Z

.field private mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mOnPosition:I

.field protected mSwitchBundle:Landroid/view/View;

.field private mSwitchKnob:Landroid/widget/ImageView;

.field private mSwitchTrack:Landroid/widget/ImageView;

.field protected mText:Landroid/widget/TextView;


# direct methods
.method static bridge synthetic -$$Nest$mchangeState(Lcom/sonyericsson/cameracommon/widget/Switch;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/widget/Switch;->changeState()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 40
    iput p1, p0, Lcom/sonyericsson/cameracommon/widget/Switch;->mOnPosition:I

    return-void
.end method

.method private changeState()V
    .locals 2

    .line 87
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/widget/Switch;->mIsChecked:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/widget/Switch;->mIsChecked:Z

    .line 88
    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/widget/Switch;->setChecked(Z)V

    .line 89
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/widget/Switch;->mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 90
    iget-boolean p0, p0, Lcom/sonyericsson/cameracommon/widget/Switch;->mIsChecked:Z

    invoke-interface {v0, v1, p0}, Landroid/widget/CompoundButton$OnCheckedChangeListener;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    :cond_0
    return-void
.end method

.method private updateIcon()V
    .locals 2

    .line 100
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/widget/Switch;->mIsChecked:Z

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/widget/Switch;->mSwitchTrack:Landroid/widget/ImageView;

    const v1, 0x7f0802a8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 102
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/widget/Switch;->mSwitchKnob:Landroid/widget/ImageView;

    const v1, 0x7f0802a9

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/widget/Switch;->mSwitchTrack:Landroid/widget/ImageView;

    const v1, 0x7f0802a6

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 105
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/widget/Switch;->mSwitchKnob:Landroid/widget/ImageView;

    const v1, 0x7f0802a7

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 109
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/widget/Switch;->mSwitchTrack:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/widget/Switch;->mSwitchKnob:Landroid/widget/ImageView;

    .line 110
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sonyericsson/cameracommon/widget/Switch;->mOnPosition:I

    return-void
.end method

.method private updatePosition()V
    .locals 1

    .line 95
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/widget/Switch;->mIsChecked:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sonyericsson/cameracommon/widget/Switch;->mOnPosition:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    int-to-float v0, v0

    .line 96
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/widget/Switch;->mSwitchKnob:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setTranslationX(F)V

    return-void
.end method


# virtual methods
.method public onFinishInflate()V
    .locals 2

    .line 50
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f0901df

    .line 51
    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/widget/Switch;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/widget/Switch;->mSwitchTrack:Landroid/widget/ImageView;

    const v0, 0x7f0901dc

    .line 52
    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/widget/Switch;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/widget/Switch;->mSwitchKnob:Landroid/widget/ImageView;

    const v0, 0x7f0901db

    .line 53
    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/widget/Switch;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/widget/Switch;->mText:Landroid/widget/TextView;

    const v0, 0x7f0901da

    .line 54
    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/widget/Switch;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/widget/Switch;->mSwitchBundle:Landroid/view/View;

    .line 56
    new-instance v0, Lcom/sonyericsson/cameracommon/widget/Switch$SwitchOnClickListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/cameracommon/widget/Switch$SwitchOnClickListener;-><init>(Lcom/sonyericsson/cameracommon/widget/Switch;Lcom/sonyericsson/cameracommon/widget/Switch$SwitchOnClickListener-IA;)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/widget/Switch;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setChecked(Z)V
    .locals 0

    .line 64
    iput-boolean p1, p0, Lcom/sonyericsson/cameracommon/widget/Switch;->mIsChecked:Z

    .line 65
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/widget/Switch;->updateIcon()V

    .line 66
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/widget/Switch;->updatePosition()V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 3

    .line 71
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 73
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/widget/Switch;->isEnabled()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 74
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/widget/Switch;->mText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/widget/Switch;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06002f

    invoke-virtual {v1, v2, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 75
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/widget/Switch;->mSwitchTrack:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->clearColorFilter()V

    goto :goto_0

    .line 77
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/widget/Switch;->mText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/widget/Switch;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06003e

    invoke-virtual {v1, v2, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 78
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/widget/Switch;->mSwitchTrack:Landroid/widget/ImageView;

    const p1, 0x7f060035

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setColorFilter(I)V

    :goto_0
    return-void
.end method

.method public setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/widget/Switch;->mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/widget/Switch;->mText:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

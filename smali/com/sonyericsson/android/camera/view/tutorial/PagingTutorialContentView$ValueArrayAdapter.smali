.class Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$ValueArrayAdapter;
.super Landroid/widget/ArrayAdapter;
.source "PagingTutorialContentView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ValueArrayAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$FeatureSettingItem;",
        ">;"
    }
.end annotation


# instance fields
.field private mSelectedIndex:I


# direct methods
.method static bridge synthetic -$$Nest$fputmSelectedIndex(Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$ValueArrayAdapter;I)V
    .locals 0

    iput p1, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$ValueArrayAdapter;->mSelectedIndex:I

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/util/List;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$FeatureSettingItem;",
            ">;I)V"
        }
    .end annotation

    const v0, 0x7f0c007a

    const v1, 0x7f090090

    .line 1125
    invoke-direct {p0, p1, v0, v1, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    .line 1126
    iput p3, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$ValueArrayAdapter;->mSelectedIndex:I

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 1133
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$ValueArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0c007a

    .line 1134
    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 1137
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$ValueArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$FeatureSettingItem;

    if-nez p3, :cond_1

    .line 1140
    const-string p0, "lost FeatureSettingItem"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    return-object p2

    :cond_1
    const v1, 0x7f090090

    .line 1145
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckedTextView;

    .line 1146
    iget v2, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$ValueArrayAdapter;->mSelectedIndex:I

    const/4 v3, 0x1

    if-ne p1, v2, :cond_2

    move v2, v3

    goto :goto_0

    :cond_2
    move v2, v0

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 1147
    iget v2, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$ValueArrayAdapter;->mSelectedIndex:I

    if-ne p1, v2, :cond_3

    .line 1148
    invoke-virtual {v1}, Landroid/widget/CheckedTextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object p1

    aget-object p1, p1, v0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$ValueArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f060072

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    goto :goto_1

    .line 1150
    :cond_3
    invoke-virtual {v1}, Landroid/widget/CheckedTextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object p1

    aget-object p1, p1, v0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$ValueArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f06009b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 1152
    :goto_1
    invoke-virtual {v1, v3}, Landroid/widget/CheckedTextView;->setEnabled(Z)V

    const p1, 0x7f0901ff

    .line 1155
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 1156
    invoke-virtual {p3}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$FeatureSettingItem;->getNameResId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 1157
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1159
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$ValueArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0701f7

    .line 1160
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 1159
    invoke-virtual {p2, p1}, Landroid/view/View;->setMinimumHeight(I)V

    .line 1162
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$ValueArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p3}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$FeatureSettingItem;->getNameResId()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-object p2
.end method

.method public hasStableIds()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

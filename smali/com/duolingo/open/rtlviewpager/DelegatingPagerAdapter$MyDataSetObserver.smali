.class Lcom/duolingo/open/rtlviewpager/DelegatingPagerAdapter$MyDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "DelegatingPagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duolingo/open/rtlviewpager/DelegatingPagerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyDataSetObserver"
.end annotation


# instance fields
.field final mParent:Lcom/duolingo/open/rtlviewpager/DelegatingPagerAdapter;


# direct methods
.method private constructor <init>(Lcom/duolingo/open/rtlviewpager/DelegatingPagerAdapter;)V
    .locals 0

    .line 132
    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 133
    iput-object p1, p0, Lcom/duolingo/open/rtlviewpager/DelegatingPagerAdapter$MyDataSetObserver;->mParent:Lcom/duolingo/open/rtlviewpager/DelegatingPagerAdapter;

    return-void
.end method

.method synthetic constructor <init>(Lcom/duolingo/open/rtlviewpager/DelegatingPagerAdapter;Lcom/duolingo/open/rtlviewpager/DelegatingPagerAdapter$1;)V
    .locals 0

    .line 129
    invoke-direct {p0, p1}, Lcom/duolingo/open/rtlviewpager/DelegatingPagerAdapter$MyDataSetObserver;-><init>(Lcom/duolingo/open/rtlviewpager/DelegatingPagerAdapter;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/duolingo/open/rtlviewpager/DelegatingPagerAdapter$MyDataSetObserver;->mParent:Lcom/duolingo/open/rtlviewpager/DelegatingPagerAdapter;

    if-eqz v0, :cond_0

    .line 139
    iget-object p0, p0, Lcom/duolingo/open/rtlviewpager/DelegatingPagerAdapter$MyDataSetObserver;->mParent:Lcom/duolingo/open/rtlviewpager/DelegatingPagerAdapter;

    invoke-virtual {p0}, Lcom/duolingo/open/rtlviewpager/DelegatingPagerAdapter;->superNotifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public onInvalidated()V
    .locals 0

    .line 145
    invoke-virtual {p0}, Lcom/duolingo/open/rtlviewpager/DelegatingPagerAdapter$MyDataSetObserver;->onChanged()V

    return-void
.end method

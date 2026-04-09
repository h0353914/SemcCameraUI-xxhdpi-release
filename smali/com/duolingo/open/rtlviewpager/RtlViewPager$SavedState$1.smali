.class final Lcom/duolingo/open/rtlviewpager/RtlViewPager$SavedState$1;
.super Ljava/lang/Object;
.source "RtlViewPager.java"

# interfaces
.implements Landroid/support/v4/os/ParcelableCompatCreatorCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duolingo/open/rtlviewpager/RtlViewPager$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/support/v4/os/ParcelableCompatCreatorCallbacks<",
        "Lcom/duolingo/open/rtlviewpager/RtlViewPager$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Lcom/duolingo/open/rtlviewpager/RtlViewPager$SavedState;
    .locals 1

    .line 152
    new-instance p0, Lcom/duolingo/open/rtlviewpager/RtlViewPager$SavedState;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/duolingo/open/rtlviewpager/RtlViewPager$SavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;Lcom/duolingo/open/rtlviewpager/RtlViewPager$1;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 0

    .line 149
    invoke-virtual {p0, p1, p2}, Lcom/duolingo/open/rtlviewpager/RtlViewPager$SavedState$1;->createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Lcom/duolingo/open/rtlviewpager/RtlViewPager$SavedState;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/duolingo/open/rtlviewpager/RtlViewPager$SavedState;
    .locals 0

    .line 157
    new-array p0, p1, [Lcom/duolingo/open/rtlviewpager/RtlViewPager$SavedState;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 149
    invoke-virtual {p0, p1}, Lcom/duolingo/open/rtlviewpager/RtlViewPager$SavedState$1;->newArray(I)[Lcom/duolingo/open/rtlviewpager/RtlViewPager$SavedState;

    move-result-object p0

    return-object p0
.end method
